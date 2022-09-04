import 'package:Traffic_Locale/Login_Page.dart';
import 'package:flutter/material.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => Logoutpage();
}

class Logoutpage extends State<Logout> {

 Widget buttonElevated(BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        // 		// Navigator to the next page.
        Navigator.of(context).push(
          MaterialPageRoute(
              // 				// Builder for the next page
              // 				// class's constructor.
              builder: (context) => const LoginPage(title: '',)),
        );
      },
      child: const Text("To Maps"));
}

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    throw UnimplementedError();
  }
}