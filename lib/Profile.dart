import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Traffic_Locale/profile_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const Profile());
}

class Profile extends StatelessWidget {
  static const String title = 'User Profile';

  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade300,
        dividerColor: Colors.black,
      ),
      title: title,
      home: const ProfilePage(),
    );
  }
}
