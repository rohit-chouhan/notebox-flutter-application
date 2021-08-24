import 'dart:convert';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/dash.dart';
import 'package:myapp/input_field.dart';

import 'config.dart';

class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  String btntxt = "Create Note";
  TextEditingController heading = new TextEditingController();
  TextEditingController note = new TextEditingController();
  Future<void> createnote() async {
    GetStorage box = GetStorage();
    var user_id = box.read('user_id');
    setState(() {
      btntxt = "Creating";
    });
    final response =
        await http.post(Uri.parse(site_url + "/createnote"), body: {
      "user_id": user_id,
      "heading": heading.text,
      "note": note.text,
    });
    Map<String, dynamic> js = jsonDecode(response.body);
    if (js['status'] == true) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: "Good Job",
        text: js['msg'],
      );
      setState(() {
        btntxt = "Create Note";
      });
    } else {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        title: "Oops",
        text: js['msg'],
      );
      setState(() {
        btntxt = "Create Note";
      });
    }
    setState(() {
      heading = TextEditingController();
      note = TextEditingController();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Create New Notes"),
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
          child: Container(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    InputField(
                      controller: heading,
                      hint: "Heading",
                      icon: Icons.add,
                    ),
                    TextField(
                      controller: note,
                      decoration: InputDecoration(
                        labelText: "Note",
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.multiline,
                      minLines: 1, //Normal textInputField will be displayed
                      maxLines:
                          5, // when user presses enter it will adapt to it
                    ),
                    SizedBox(height: 18),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => {createnote()},
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
        ),
      ),
    );
  }
}
