import 'dart:convert';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/input_field.dart';

import 'config.dart';

class MyForget extends StatefulWidget {
  const MyForget({Key? key}) : super(key: key);

  @override
  _MyForgetState createState() => _MyForgetState();
}

class _MyForgetState extends State<MyForget> {
  String forgetTxt = "Reset Password";
  TextEditingController email = new TextEditingController();

  Future<void> reset() async {
    setState(() {
      forgetTxt = "Sending.....";
    });
    final response = await http
        .post(Uri.parse(site_url + "/reset"), body: {"email": email.text});
    Map<String, dynamic> js = jsonDecode(response.body);
    if (js['status'] == true) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: "Good Job",
        text: js['msg'],
      );
    } else {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        title: "Oops",
        text: js['msg'],
      );
    }

    setState(() {
      forgetTxt = "Reset Password";
      email = TextEditingController();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Enter your email to sent new password"),
              SizedBox(
                height: 10,
              ),
              InputField(
                  icon: Icons.email, controller: email, hint: "Enter Email"),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => reset(),
                  child: Text(
                    forgetTxt,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
