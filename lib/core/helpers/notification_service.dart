// // ignore_for_file: depend_on_referenced_packages, library_prefixes

// import 'dart:io';

// import 'package:flutter/widgets.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;
// import 'package:todo_madarj/core/helpers/cach_helper.dart';
// import 'package:todo_madarj/core/theming/colors.dart';

// final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

// class NotificationService {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   late IO.Socket socket;

//   Future init() async {
//     socket = IO.io('https://socket.tchatpro.com/', <String, dynamic>{
//       'transports': ['websocket'],
//       'autoConnect': false,
//     });

//     socket.connect();

//     socket.on('connect', (_) {
//     });

//     socket.on('disconnect', (_) {
//     });
//     // Android initialization settings
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('logo');

//     // iOS initialization settings
//     const DarwinInitializationSettings initializationSettingsIOS =
//         DarwinInitializationSettings(
//       elevanteAlertPermission: true,
//       elevanteBadgePermission: true,
//       elevanteSoundPermission: true,
//     );

//     // Initialization settings
//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );

//     // Initialize notifications
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: (NotificationResponse details) async {
//         onClickNotification(details.payload);
//       },
//       onDidReceiveBackgroundNotificationResponse: onReceiveBackgroundResponse,
//     );

//     // elevante notification permissions for Android 13+
//     if (Platform.isAndroid) {
//       if (await Permission.notification.isDenied) {
//         await Permission.notification.elevante();
//       }
//     }

//     // elevante notification permissions for iOS
//     if (Platform.isIOS) {
//       await flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//               IOSFlutterLocalNotificationsPlugin>()
//           ?.elevantePermissions(
//             alert: true,
//             badge: true,
//             sound: true,
//           );
//     }

//     // Initialize socket connection
//     socket.on('notification_${CachHelper.getData(key: 'id')}', (data) {
//       showNotification(data[1]['title'], data[0]['message']);
//     });
//   }

//   Future<void> showNotification(
//     String title,
//     String body,
//   ) async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails(
//       'channel_id_1',
//       'T-chat',
//       channelDescription: 'Medication Reminder',
//       importance: Importance.max,
//       priority: Priority.high,
//       showWhen: false,
//       icon: 'logo',
//       color: ColorsManager.mainBlue,
//     );

//     const NotificationDetails platformChannelSpecifics = NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//       iOS: DarwinNotificationDetails(),
//     );
//     await flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       platformChannelSpecifics,
//       payload: title,
//     );
//   }

//   @pragma('vm:entry-point')
//   static void onReceiveBackgroundResponse(NotificationResponse details) async {
//     // Handle background notification response
//     if (details.payload != null) {
//       // var payload = details.payload!;
//       // Perform background task based on the notification payload
//     }
//   }

//   void onClickNotification(String? payload) {
//     if (payload != null) {
//       navigatorKey.currentState?.pushNamed(
//         '/home',
//         arguments: payload,
//       );
//     }
//   }
// }
