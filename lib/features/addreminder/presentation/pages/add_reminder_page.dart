import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/core/di/injection.dart';
import 'package:reminder_app/core/presentation/states/action_status.dart';
import 'package:reminder_app/core/utils/form_validator_utils.dart';
import 'package:reminder_app/features/addreminder/presentation/bloc/addreminder_bloc.dart';
import 'package:reminder_app/features/addreminder/presentation/widget/remider_type_widget.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/presentation/bloc/reminder_bloc.dart';
import 'package:reminder_app/gen/assets.gen.dart';
import 'package:reminder_app/theme/color_theme.dart';
import 'package:reminder_app/theme/font_theme.dart';
import 'package:reminder_app/widget/custom_button_widget.dart';
import 'package:reminder_app/widget/custom_textformfield_widget.dart';
import 'package:reminder_app/widget/custom_wheel_datepicker_widget.dart';

class AddReminderPage extends StatelessWidget {
  final ReminderEntity? reminder;
  const AddReminderPage({super.key, this.reminder});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AddReminderBloc>()
            ..add(AddReminderEvent.fillForm(reminder: reminder)),
      child: AddReminderView(reminder: reminder),
    );
  }
}

class AddReminderView extends StatefulWidget {
  final ReminderEntity? reminder;
  const AddReminderView({super.key, this.reminder});

  @override
  State<AddReminderView> createState() => _AddReminderViewState();
}

class _AddReminderViewState extends State<AddReminderView> {
  final TextEditingController labelTextEditingController = .new();
  final TextEditingController noteTextEditingController = .new();
  final TextEditingController additionalImageTextEditingController = .new();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isRepeatEveryDay = false;

  void setRepeatEveryDay(bool val) {
    setState(() {
      isRepeatEveryDay = val;
    });
  }

  bool isFormValid = false;

  void validateForm() {
    final isValid = formKey.currentState?.validate() ?? false;
    setState(() {
      isFormValid = isValid;
    });
  }

  @override
  void dispose() {
    labelTextEditingController.dispose();
    noteTextEditingController.dispose();
    additionalImageTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddReminderBloc, AddReminderState>(
      listenWhen: (previous, current) {
        return previous.dateTime != current.dateTime ||
            previous.title != current.title ||
            previous.note != current.note ||
            previous.imagePath != current.imagePath ||
            previous.isRepeatEveryDay != current.isRepeatEveryDay ||
            previous.reminderType != current.reminderType ||
            previous.actionStatus != current.actionStatus;
      },
      listener: (context, state) {
        labelTextEditingController.text = state.title;
        noteTextEditingController.text = state.note ?? '';
        additionalImageTextEditingController.text = (state.imagePath ?? '')
            .split('/')
            .last;
        isRepeatEveryDay = state.isRepeatEveryDay;

        log('Reminder type changed to: ${state.reminderType}');
        log('DateTime changed to: ${state.dateTime}');

        if (widget.reminder != null) {
          validateForm();
        }

        state.actionStatus.maybeWhen(
          orElse: () {},
          failure: (message) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
          success: (message) {
            context.pop();
            context.read<ReminderBloc>().add(ReminderEvent.fetchReminders());
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(message)));
          },
        );
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            backgroundColor: ColorTheme.white,
            appBar: AppBar(
              toolbarHeight: 102.w,
              // actionsPadding: EdgeInsets.zero,
              automaticallyImplyLeading: false,
              // surfaceTintColor: ColorTheme.blue,
              backgroundColor: ColorTheme.white,
              title: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  color: ColorTheme.lightGray,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      context.pop();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(12.w),
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Assets.icons.arrowSmallRight.svg(
                          height: 32.w,
                          width: 32.w,
                          colorFilter: ColorFilter.mode(
                            ColorTheme.darkGray,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 40.w),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 24.w,
                    children: [
                      Text(
                        widget.reminder == null ? 'Add New' : 'Edit Reminder',
                        style: FontTheme.bold48.copyWith(
                          color: ColorTheme.black,
                        ),
                      ),

                      CustomWheelDatepicker(
                        initialDateTime: state.dateTime ?? DateTime.now(),
                        onTimeChanged: (value) {
                          context.read<AddReminderBloc>().add(
                            AddReminderEvent.dateTimeChanged(value),
                          );
                        },
                      ),

                      CustomTextFormFieldWidget(
                        textEditingController: labelTextEditingController,
                        labelText: 'Title',
                        hintText: 'Enter title',
                        validator: FormValidatorUtils.required,
                        onChanged: (value) {
                          validateForm();
                          context.read<AddReminderBloc>().add(
                            AddReminderEvent.titleChanged(value),
                          );
                        },
                      ),
                      CustomTextFormFieldWidget(
                        textEditingController: noteTextEditingController,
                        labelText: 'Note',
                        hintText: 'Enter note',
                        maxLines: 3,
                        onChanged: (value) {
                          context.read<AddReminderBloc>().add(
                            AddReminderEvent.noteChanged(value),
                          );
                        },
                      ),

                      ReminderTypeWidget(
                        onChanged: (value) {
                          context.read<AddReminderBloc>().add(
                            AddReminderEvent.reminderTypeChanged(value),
                          );
                        },
                        selectedType: state.reminderType,
                      ),
                      CustomTextFormFieldWidget(
                        textEditingController:
                            additionalImageTextEditingController,
                        labelText: 'Additional Image',
                        hintText: 'Select image',
                        onButtonTap: () {
                          context.read<AddReminderBloc>().add(
                            AddReminderEvent.pickImageFromGallery(),
                          );
                        },
                        buttonIconPath: Assets.icons.addImage.path,
                        onChanged: (value) {
                          validateForm();
                        },
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 24.w),
              decoration: BoxDecoration(
                color: ColorTheme.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 15,
                    blurRadius: 60,
                    color: ColorTheme.darkGray.withValues(alpha: 0.08),
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: CustomButtonWidget(
                isEnable: isFormValid,
                label: 'Save Reminder',
                isLoading: state.actionStatus.maybeWhen(
                  orElse: () => false,
                  loading: () => true,
                ),
                onTap: () {
                  if (widget.reminder == null) {
                    context.read<AddReminderBloc>().add(
                      AddReminderEvent.saveReminder(
                        title: state.title,
                        dateTime: state.dateTime!,
                        note: state.note,
                        imagePath: state.imagePath,
                        isRepeatEveryDay: state.isRepeatEveryDay,
                        reminderType: state.reminderType,
                      ),
                    );
                  } else {
                    context.read<AddReminderBloc>().add(
                      AddReminderEvent.updateReminder(
                        id: widget.reminder!.id,
                        title: state.title,
                        dateTime: state.dateTime!,
                        note: state.note,
                        imagePath: state.imagePath,
                        isRepeatEveryDay: state.isRepeatEveryDay,
                        reminderType: state.reminderType,
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
