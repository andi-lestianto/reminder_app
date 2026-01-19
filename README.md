<!DOCTYPE html>
<html lang="en">
<body>

<h1>📝 Reminder App (Flutter + BLoC + Clean Architecture + SQLite + Alarm)</h1>

<p>A Flutter application for managing reminders, with offline support using SQLite, scheduling alarms using <code>android_alarm_manager_plus</code>, and notifications using <code>flutter_local_notifications</code>. The app follows a <strong>BLoC + Clean Architecture</strong> pattern for maintainable and scalable code.</p>

<hr/>

<h2>1. Setup Instructions</h2>

<h3>Option 1: Run from Flutter Source</h3>

<h4>Flutter Version</h4>
<p>Make sure you are using <strong>Flutter 3.38.7</strong>:</p>
<pre><code>flutter --version</code></pre>

<h4>Clone the repository</h4>
<pre><code>git clone &lt;repository_url&gt;
cd &lt;project_directory&gt;</code></pre>

<h4>Install dependencies</h4>
<pre><code>flutter pub get</code></pre>

<h4>Generate code for Freezed & Injectable</h4>
<pre><code>flutter pub run build_runner build --delete-conflicting-outputs</code></pre>

<h4>Run the app</h4>
<pre><code>flutter run</code></pre>

<h3>Option 2: Download APK</h3>
<p>You can download the APK directly and install it on your Android device:</p>

<a href="https://github.com/&lt;username&gt;/&lt;repo&gt;/releases/download/v1.0/ReminderApp-v1.0.apk">
  <img src="https://img.shields.io/badge/Download-APK-blue?style=flat-square" alt="Download APK"/>
</a>

<p>⚠️ On Android 13+, notification permissions are required. The app will prompt the user on first launch.</p>

<hr/>

<h2>2. Dependencies Used</h2>

<h3>State Management & Architecture</h3>
<ul>
  <li><code>bloc</code> & <code>flutter_bloc</code> – BLoC pattern for state management</li>
  <li><code>fpdart</code> – Functional programming helpers (TaskEither, Either)</li>
  <li><code>freezed</code> & <code>freezed_annotation</code> – Immutable data classes</li>
  <li><code>get_it</code> & <code>injectable</code> – Dependency injection</li>
</ul>

<h3>Navigation & Routing</h3>
<ul>
  <li><code>go_router</code> – Declarative routing</li>
</ul>

<h3>UI & Helpers</h3>
<ul>
  <li><code>flutter_screenutil</code> – Responsive sizing</li>
  <li><code>flutter_svg</code> – SVG assets</li>
  <li><code>fluttertoast</code> – Toast messages</li>
  <li><code>lottie</code> – Animations</li>
  <li><code>photo_view</code> – Zoomable images</li>
  <li><code>scroll_snap_list</code> – Scrollable lists</li>
  <li><code>shimmer</code> – Loading placeholder effects</li>
</ul>

<h3>Data & Persistence</h3>
<ul>
  <li><code>sqflite</code> – Local SQLite database</li>
  <li><code>path</code> – Path helpers</li>
  <li><code>json_annotation</code> & <code>json_serializable</code> – JSON serialization</li>
</ul>

<h3>Device & Platform Features</h3>
<ul>
  <li><code>android_alarm_manager_plus</code> – Scheduling alarms</li>
  <li><code>flutter_local_notifications</code> – Showing notifications</li>
  <li><code>permission_handler</code> – Handling runtime permissions</li>
  <li><code>android_intent_plus</code> – Android intents</li>
  <li><code>image_picker</code> – Picking images from gallery/camera</li>
</ul>

<hr/>

<h2>3. BLoC Structure</h2>

<p>The app follows <strong>Clean Architecture</strong> with separate layers for each feature.</p>

<img src="screenshots/project_structure.png" width="600"/>

<h3>Each feature has:</h3>
<ul>
  <li>Data layer → handles SQLite / API / local storage</li>
  <li>Domain layer → entities, repository interface, usecases</li>
  <li>Presentation layer → UI, Bloc, and state handling</li>
</ul>

<h3>ReminderBloc:</h3>
<ul>
  <li>Handles fetch, delete, and updating reminders</li>
  <li>Works with <code>ReminderUsecase</code> which interacts with repository → datasource</li>
  <li>UI listens to Bloc states (<code>loading</code>, <code>loaded</code>, <code>error</code>) via <code>BlocBuilder</code></li>
</ul>

<hr/>

<h2>4. Bonus Feature: Create Reminder for Specific Dates</h2>

<ul>
  <li>Users can select one or more specific dates for a reminder instead of repeating weekly.</li>
  <li>Flow:
    <ol>
      <li>User selects date(s) when creating a reminder</li>
      <li>Save reminder to SQLite with the selected date(s)</li>
      <li>Schedule an alarm via <code>android_alarm_manager_plus</code> for each chosen date</li>
      <li>When the alarm triggers, a notification is shown using <code>flutter_local_notifications</code></li>
    </ol>
  </li>
</ul>

<p><strong>Example:</strong> A user wants a reminder on March 21st, March 25th, and April 2nd. Each date triggers its own notification at the set time.</p>

<hr/>

<h2>5. Screenshots</h2>

<table>
  <tr>
    <td><img src="screenshots/main_screen.jpg" width="300"/></td>
    <td><img src="screenshots/add_new_form.jpg" width="300"/></td>
    <td><img src="screenshots/create_reminder_success.jpg" width="300"/></td>
  </tr>
  <tr>
    <td><img src="screenshots/lockscreen_notification.jpg" width="300"/></td>
    <td><img src="screenshots/statusbar_notification.jpg" width="300"/></td>
    <td><img src="screenshots/floating_notification.jpg" width="300"/></td>
  </tr>
  <tr>
    <td><img src="screenshots/delete_confirmation.jpg" width="300"/></td>
    <td><img src="screenshots/reminder_action.jpg" width="300"/></td>
    <td><img src="screenshots/empty_reminders.jpg" width="300"/></td>
  </tr>
  <tr>
    <td><img src="screenshots/image_details.jpg" width="300"/></td>
    <td><img src="screenshots/reminders.jpg" width="300"/></td>
    <td></td>
  </tr>
</table>

<hr/>

<h2>Notes</h2>

<ul>
  <li>Ensure notification permission is granted, especially on Android 13+</li>
  <li>All alarms are scheduled locally and will trigger even if the app is closed (<code>wakeup = true</code>)</li>
  <li>The app demonstrates a full offline reminder system using Clean Architecture and BLoC pattern</li>
</ul>

</body>
</html>
