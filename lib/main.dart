
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Screen'),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                FlutterLogo(),
              ],
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter Email',
                            labelText: 'Email',
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                          ),
                          onChanged: (String value) {

                          },
                        ),
                      ),
                      SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            labelText: 'Password',
                            contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                          ),
                          obscureText: true,
                          onChanged: (String value) {
                          },
                        ),
                      ),
                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: SizedBox(
                          width: 200,
                          height: 20,
                          child: ElevatedButton(

                            onPressed: () {
                            },
                            child: Text('Login'),
                          ),
                        ),
                      ),
                      Padding(
                        padding : const EdgeInsets.only(bottom : 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: SizedBox(
                          width: 200,
                          height: 20,
                          child: FlatButton(
                            onPressed: () {
                            },
                            child: Text('Forgot password?'),
                          ),
                        ),
                      ),

                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}






