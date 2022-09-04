import 'package:flutter/material.dart';
import 'package:Traffic_Locale/archive_page.dart';
import 'package:Traffic_Locale/Login_Page.dart';

class Entries extends StatelessWidget {
  const Entries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Register to use Traffic Locale'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// To listen to the changes in the textfield.
  final TextEditingController _name = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _phoneno = TextEditingController();
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
                // To set the appropriate
                // controller to the text field.
                controller: _name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "User ID: "),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _password,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your Password"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _phoneno,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your Phone Number"),
              ),
            ),
            // Button to go to the nextpage.
            ElevatedButton(
                onPressed: () {
                  // 		// Navigator to the next page.
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        // 				// Builder for the next page
                        // 				// class's constructor.
                        builder: (context) => const Login(
                            // 					// Date as arguments to
                            // 						// send to next page.
                            // 					name: _name.text,
                            // 					email: _email.text,
                            // 					phoneno: _phoneno.text,
                            )),
                  );
                },
                child: const Text("Register"))
          ],
        ),
      ),
    );
  }
}

Widget buttonElevated(BuildContext context) {
  return ElevatedButton(
      onPressed: () {
        // 		// Navigator to the next page.
        Navigator.of(context).push(
          MaterialPageRoute(
              // 				// Builder for the next page
              // 				// class's constructor.
              builder: (context) => const ArchivePage(
                  // 					// Date as arguments to
                  // 						// send to next page.
                  // 					name: _name.text,
                  // 					email: _email.text,
                  // 					phoneno: _phoneno.text,
                  )),
        );
      },
      child: const Text("To Maps"));
}
