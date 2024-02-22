import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/home.dart';
import 'package:flutter_application/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
            child: Text("Login Page"),
          )),
      body: Center(
        child: Container(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.cyan,
                ),
              ),
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextField(
                controller: controller2,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    var sharedprefr = await SharedPreferences.getInstance();
                    // sharedprefr.setBool(Splash_screen.KEY, true);
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
