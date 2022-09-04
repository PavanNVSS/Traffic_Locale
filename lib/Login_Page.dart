import 'package:flutter/material.dart';
import 'package:Traffic_Locale/home_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const LoginPage(title: 'Login to Traffic Locale'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(

                controller: _name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter User ID to login: "),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter  Password to login:"),
              ),
            ),

            ElevatedButton(
                onPressed: () {

                  Navigator.of(context).push(
                    MaterialPageRoute(

                        builder: (context) => const HomePage(
                           
                            )),
                  );
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
