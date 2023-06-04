import 'dart:convert';
import 'dart:developer';

import 'package:goldengate_mobile/expirement/model/datamodel/userId_data.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:goldengate_mobile/expirement/sign-up.dart';
import 'package:goldengate_mobile/model/loginapi.dart';
import 'package:goldengate_mobile/screens/Homepage.dart';

import '../expirement/Categories_home.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../model/cartmodel.dart';

class LoginScreen extends StatefulWidget {
  final String id;

  LoginScreen({Key? key, required this.id}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController idController = TextEditingController();

  Future<UserId?> login(String email, String password, String data) async {
    try {
      Map<String, String> headers = {'Content-Type': 'application/json'};
      final msg = jsonEncode({
        'email': emailController.text.trim(),
        'password': passwordController.text.trim(),
      });

      print("$email $password ");
      Response response = await post(
        Uri.parse('https://gorder.website/API/login.php'),
        headers: headers,
        body: msg,
      );
      print(response.body);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);

        UserId userId = UserId.fromJson(responseData);

        var jsonData = int.parse(responseData['data']);
        print("jsonData = $jsonData");
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Category(
              id: widget.id,
              data: jsonData,
              userId: userId,
            ),
          ),
        );

        return userId;
      } else {
        print('failed');
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
  }

  bool _isLoggedInUnsuccessful = false;
  bool test = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        // Remove debug
        child: Container(
          height: 0.8 * MediaQuery.of(context).size.height,
          width: 0.8 * MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Container(
                height: 140,
                width: 140,
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/goldengate1.png")),
                ),
              ),
              Container(
                height: 30,
              ),
              Expanded(
                  child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Username",
                          prefixIcon: Icon(Icons.email),
                          errorText: _isLoggedInUnsuccessful
                              ? "Email or password is incorrect"
                              : null),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.security),
                      ),
                    ),
                    Container(
                      height: 30,
                    ),
                    Container(
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 18, 83, 136),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: TextStyle(fontSize: 20)),
                            onPressed: () async {
                              Object? isLoggedIn = await login(
                                  emailController.text.toString(),
                                  passwordController.text.toString(),
                                  idController.text.toString());

                              if (isLoggedIn != null) {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                        builder: ((context) => const Category(
                                              id: "",
                                              data: "",
                                              userId: null,
                                            ))));
                                setState() {}
                                ;

                                return;
                              }
                              setState(() {
                                _isLoggedInUnsuccessful = true;
                              });
                            },
                            child: Text("Log in")),
                      ),
                    ),
                    Container(
                      height: 3,
                    ),
                    Center(
                      child: ListTile(
                        title: Center(
                          child: RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: "forgot password? ",
                                style: TextStyle(
                                  color: Colors.blue,
                                ),
                              ),
                            ]),
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                                  builder: ((context) => Category(
                                        id: widget.id,
                                        data: null,
                                        userId: null,
                                      ))));
                        },
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1.0,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 15,
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                textStyle: TextStyle(fontSize: 15)),
                            onPressed: () {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: ((context) => Signup())));
                            },
                            child: Text(
                              "Create New Account",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
