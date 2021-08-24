import 'dart:convert';
import 'dart:io';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/dash.dart';
import 'package:myapp/forget.dart';
import 'package:myapp/input_field.dart';
import 'add_notes.dart';
import 'config.dart';

void main() async {
  await GetStorage.init();
  GetStorage box = GetStorage();
  if (box.read('theme') == true) {
    Get.changeTheme(ThemeData.dark());
  } else if (box.read('theme') == null || box.read('theme') == false) {
    Get.changeTheme(ThemeData.light());
  }
  runApp(GetMaterialApp(
    getPages: [
      GetPage(
          name: '/',
          page: () {
            return box.hasData('user_id') ? MyDash() : MyApp();
          })
    ],
    debugShowCheckedModeBanner: false,
  ));
}

enum Type { login, signup }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GetStorage box = GetStorage();
  Type selectedType = Type.login;
  String loginData = 'Already have an account?';
  String signupData = 'Want to create a new account?';
  TextEditingController name = new TextEditingController(text: "Rohit Chouhan");
  TextEditingController email =
      new TextEditingController(text: "itsrohitofficial@gmail.com");
  TextEditingController password = new TextEditingController(text: "123");

  Future<void> signUp() async {
    final response = await http.post(Uri.parse(site_url + "/addUser"), body: {
      "name": name.text,
      "email": email.text,
      "password": password.text,
    });
    Map<String, dynamic> js = jsonDecode(response.body);
    if (js['status'] == true) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: "Good Job",
        text: 'Signup Successfully!',
      );
    } else {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        title: "Oops",
        text: js['msg'],
      );
    }
  }

  Future<void> login() async {
    final response = await http.post(Uri.parse(site_url + "/login"), body: {
      "email": email.text,
      "password": password.text,
    });
    Map<String, dynamic> js = jsonDecode(response.body);
    if (js['status'] == true) {
      box.write('user_id', js['id']);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MyDash()));
    } else {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        title: "Oops",
        text: js['msg'],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.person),
        title: Text("NoteBox"),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () {
              Get.defaultDialog(
                  title: "About",
                  content: Text(
                    "This Application is Developed by\nRohit Chouhan\n\n www.rohitchouhan.com",
                    textAlign: TextAlign.center,
                  ));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage(
                    "https://static-media-prod-cdn.itsre-sumo.mozilla.net/static/sumo/img/default-FFA-avatar.png"),
              ),
              SizedBox(height: 40),
              selectedType == Type.signup
                  ? InputField(
                      controller: name,
                      hint: 'Your Name',
                      icon: Icons.person,
                    )
                  : Container(),
              InputField(
                controller: email,
                hint: 'Your Email',
                icon: Icons.email,
              ),
              InputField(
                controller: password,
                hint: 'Enter Password',
                icon: Icons.lock,
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () =>
                      selectedType == Type.signup ? signUp() : login(),
                  child: Text(
                    selectedType == Type.signup ? 'Signup' : 'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedType == Type.login
                        ? selectedType = Type.signup
                        : selectedType = Type.login;
                  });
                },
                child:
                    Text(selectedType == Type.signup ? loginData : signupData),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyForget()));
                },
                child: Text("Forget Password?"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
