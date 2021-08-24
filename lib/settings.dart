import 'dart:async';
import 'dart:convert';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/dash.dart';
import 'package:myapp/input_field.dart';

import 'config.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  _MySettingsState createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  TextEditingController? name = TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController cpassword = new TextEditingController();
  TextEditingController password = new TextEditingController();
  String btntxt = 'Update';
  String pbtntxt = 'Change Password';
  String uname = '';
  String uemail = '';
  @override
  void initState() {
    GetStorage box = GetStorage();
    setState(() {
      name = TextEditingController(text: box.read('uname'));
      email = TextEditingController(text: box.read('uemail'));
    });
    super.initState();
  }

  // void getUser() async {
  //   GetStorage box = GetStorage();
  //   var user_id = box.read('user_id');
  //   var response =
  //       await http.get(Uri.parse(site_url + "/getuser?id=" + user_id));
  //   if (response.statusCode == 200) {
  //     var users = jsonDecode(response.body);
  //     // setState(() {
  //     Timer(Duration(seconds: 1), () {
  //       name = TextEditingController(text: users['name']);
  //       email = TextEditingController(text: users['email']);
  //     });

  //     // });
  //   } else {
  //     throw Exception("Failed");
  //   }
  // }

  //update user
  Future<void> updateuser() async {
    GetStorage box = GetStorage();
    var user_id = box.read('user_id');
    setState(() {
      btntxt = "Updating...";
    });
    final response = await http.post(Uri.parse(site_url + "/updateuser"),
        body: {"id": box.read('user_id'), "name": uname, "email": uemail});
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
      // name = new TextEditingController(text: uname);
      // email = new TextEditingController(text: uemail);
      btntxt = "Update";
    });
  }

//updatepass
  Future<void> updatepass() async {
    GetStorage box = GetStorage();
    var user_id = box.read('user_id');
    setState(() {
      pbtntxt = "Changing..";
    });
    final response =
        await http.post(Uri.parse(site_url + "/updatepass"), body: {
      "id": box.read('user_id'),
      "cpassword": cpassword.text,
      "password": password.text
    });
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
      cpassword = new TextEditingController();
      password = new TextEditingController();
      pbtntxt = "Change Password";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Settings"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyDash(),
                )),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Personal Information"),
              Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: name,
                          decoration: InputDecoration(
                            labelText: "Name",
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (value) {
                            uname = value;
                          },
                        ),
                        SizedBox(height: 18),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: OutlineInputBorder(),
                          ),
                          onChanged: (evalue) {
                            uemail = evalue;
                          },
                        ),
                        SizedBox(height: 18),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => updateuser(),
                            child: Text(
                              btntxt,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Password Setting"),
              Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          controller: cpassword,
                          decoration: InputDecoration(
                            labelText: "Current Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 18),
                        TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: "New Password",
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(height: 18),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () => {updatepass()},
                            child: Text(
                              pbtntxt,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                      ],
                    ),
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
