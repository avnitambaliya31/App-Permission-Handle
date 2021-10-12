import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "App Permission",
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        body: Container(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () async {
                  PermissionStatus permissionStatus =
                      await Permission.storage.request();
                  if (permissionStatus == PermissionStatus.granted) {
                    Fluttertoast.showToast(
                        msg: "Storage Permisssion Access Successfully");
                  } else if (permissionStatus == PermissionStatus.denied) {
                    Fluttertoast.showToast(msg: "Storage Permisssion denined");
                  }
                },
                child: Text("Photos Permission"),
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () async {
                  PermissionStatus permissionStatus1 =
                      await Permission.camera.request();
                  if (permissionStatus1 == PermissionStatus.granted) {
                    Fluttertoast.showToast(
                        msg: "Camera Permisssion Access Successfully");
                  } else if (permissionStatus1 == PermissionStatus.denied) {
                    Fluttertoast.showToast(msg: "Camera Permisssion denined");
                  }
                },
                child: Text("camera Permission"),
                color: Colors.blue,
              ),
              FlatButton(
                onPressed: () async {
                  PermissionStatus permissionStatus2 =
                      await Permission.contacts.request();
                  if (permissionStatus2 == PermissionStatus.granted) {
                    Fluttertoast.showToast(
                        msg: "Contacts Permisssion Access Successfully");
                  } else if (permissionStatus2 == PermissionStatus.denied) {
                    Fluttertoast.showToast(msg: "Contacts Permisssion denined");
                  }
                },
                child: Text("Contacts Permission"),
                color: Colors.blue,
              )
            ],
          ),
        )));
  }
}
