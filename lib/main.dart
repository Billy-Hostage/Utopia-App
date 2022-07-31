import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:utopia_app/host/basic_host.dart';
import 'package:utopia_app/frontend/desktop/desktop_homepage.dart';

import 'package:flutter_foreground_task/flutter_foreground_task.dart';

void setup() {
  GetIt.I.registerSingleton(BasicHost());
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setup();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return WithForegroundTask(
      child: MaterialApp(
        title: 'Utopia',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomepageDesktop(),
      ),
    );
  }
}
