import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:reminder_app/core/di/injection.dart';
import 'package:reminder_app/features/mainscreen/presentation/cubit/mainscreen_cubit.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_enum.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_extension.dart';
import 'package:reminder_app/features/mainscreen/presentation/widget/navigation/main_navigation_item.dart';
import 'package:reminder_app/routes/route_names.dart';
import 'package:reminder_app/theme/color_theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainScreenCubit>(),
      child: MainView(),
    );
  }
}

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainScreenCubit, MainScreenState>(
      builder: (context, state) {
        return Scaffold(
          body: PageView.builder(
            itemCount: MainNavigationItem.items.length,
            controller: pageController,
            onPageChanged: (value) => context
                .read<MainScreenCubit>()
                .selectNavItem(MainNavigationItem.items[value].type),
            itemBuilder: (context, index) =>
                MainNavigationItem.items[index].page,
          ),
          bottomNavigationBar: MainBottomNavigation(
            navItems: MainNavigationItem.items,
            selectedEnum: context.read<MainScreenCubit>().state.selectedNavItem,
            onTap: (selectedNavItem) {
              final selectedIndex = MainNavigationItem.items.indexWhere(
                (item) => item.type == selectedNavItem.type,
              );
              pageController.animateToPage(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                selectedIndex,
              );
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.r),
              color: ColorTheme.blue,
            ),
            constraints: BoxConstraints(
              minHeight: 88.w,
              maxHeight: 88.w,
              minWidth: 88.w,
              maxWidth: 88.w,
            ),
            child: FloatingActionButton(
              disabledElevation: 0,
              highlightElevation: 0,
              focusElevation: 0,
              hoverElevation: 0,
              elevation: 0,
              backgroundColor: Colors.transparent,
              clipBehavior: Clip.antiAlias,
              onPressed: () async {
                context.push(RouteNames.addReminder);
              },
              child: SvgPicture.asset(
                MainNavigationEnum.addreminder.icon,
                width: 32.w,
                height: 32.w,
                colorFilter: ColorFilter.mode(
                  ColorTheme.white,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
