import 'dart:convert';
import 'package:timeago/timeago.dart' as timeago;
import 'package:clipboard/clipboard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/add_notes.dart';
import 'package:myapp/dataModel.dart';
import 'package:myapp/main.dart';
import 'package:myapp/settings.dart';
import 'package:myapp/sidebar.dart';
import 'package:share/share.dart';

import 'config.dart';

class MyDash extends StatefulWidget {
  @override
  _MyDashState createState() => _MyDashState();
}

class _MyDashState extends State<MyDash> {
  GetStorage box = GetStorage();
  bool st = false;
  String name = '{name}';

  Future<List<Notes>> fetch() async {
    getUser();
    var user_id = box.read('user_id');
    var response =
        await http.get(Uri.parse(site_url + "/getnotes?id=" + user_id));
    if (response.statusCode == 200) {
      return notesFromJson(response.body);
    } else {
      throw Exception("Faild");
    }
  }

  void getUser() async {
    GetStorage box = GetStorage();
    var user_id = box.read('user_id');
    var response =
        await http.get(Uri.parse(site_url + "/getuser?id=" + user_id));
    if (response.statusCode == 200) {
      var users = jsonDecode(response.body);
      setState(() {
        name = users['name'];
        box.write('uname', users['name']);
        box.write('uemail', users['email']);
      });
    } else {
      throw Exception("Failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willLeave = false;
        await showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text('Are you sure want to Logout?'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          willLeave = true;
                          box.remove('user_id');
                          box.write('theme', false);
                          Get.changeTheme(ThemeData.light());
                          Get.to(MyApp());
                        },
                        child: Text('Logout')),
                    TextButton(
                        onPressed: () => Get.back(), child: Text('Not Now'))
                  ],
                ));
        return willLeave;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Notes"),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("Add New"),
          icon: Icon(Icons.add),
          onPressed: () => Get.to(Add()),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Text(
                    'Hy, ' + name,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                child: ListTile(
                  leading: Icon(Icons.add),
                  title: const Text('Add New'),
                  onTap: () => Get.to(Add()),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Get.to(MySettings());
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: const Text('Logout'),
                onTap: () {
                  box.remove('user_id');
                  box.write('theme', false);
                  Get.changeTheme(ThemeData.light());
                  Get.to(MyApp());
                },
              ),
              SwitchListTile(
                value: box.read('theme'),
                onChanged: (newSt) {
                  setState(() {
                    st = newSt;
                    if (st == true) {
                      box.write('theme', true);
                      Get.changeTheme(ThemeData.dark());
                    } else {
                      box.write('theme', false);
                      Get.changeTheme(ThemeData.light());
                    }
                  });
                },
                title: Text('Dark Mode'),
              ),
              ListTile(
                title: Text('About Me'),
                onTap: () {
                  Get.defaultDialog(
                      title: "About",
                      content: Text(
                        "This Application is Developed by\nRohit Chouhan\n\n www.rohitchouhan.com",
                        textAlign: TextAlign.center,
                      ));
                },
              ),
            ],
          ),
        ),
        body: FutureBuilder<List<Notes>>(
          future: fetch(),
          builder: (context, snapshot) {
            final data = snapshot.data;
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    data[index].heading!,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        WidgetSpan(
                                          child: Icon(
                                            Icons.timelapse,
                                            size: 14,
                                            color: box.read('theme')
                                                ? Colors.white
                                                : Colors.black54,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              "  ${timeago.format(DateTime.parse(data[index].dates.toString()))}",
                                          style: TextStyle(
                                              color: box.read('theme')
                                                  ? Colors.white
                                                  : Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    data[index].note!,
                                    style: TextStyle(fontSize: 20),
                                    textAlign: TextAlign.justify,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          onPressed: () {
                                            FlutterClipboard.copy(
                                                data[index].note!);
                                            Get.snackbar(
                                                data[index].heading!, "Copied!",
                                                snackPosition:
                                                    SnackPosition.BOTTOM,
                                                backgroundColor: Colors.blue,
                                                colorText: Colors.white);
                                          },
                                          child: Text("Copy")),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      ElevatedButton(
                                          onPressed: () {
                                            Share.share(data[index].note!);
                                          },
                                          child: Text("Share")),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
