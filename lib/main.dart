import 'package:farum_protocol_flutter_v1/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Farum Protocol",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Align(
                //alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome to Farum Protocol",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(
                  30, 20, 30, 0), //apply padding to all four sides
              child: SizedBox(
                width: 800,
                height: 200,
                child: Text(
                  "Farum Protocol is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Licence Agreement",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.red,
                    ),
                  ),
                ),
                //Login
                ElevatedButton(
                    onPressed: () {
                      //print("button clicked");
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )),
                const SizedBox(
                  height: 10.0,
                ),
                //Register
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return const RegisterPage();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
