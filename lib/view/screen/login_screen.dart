import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/login_controller.dart';
import '../../helper/firestore_helper.dart';
import '../../model/user_model.dart';

class LogIn extends StatelessWidget {
  LogIn({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Please Sign In to Continue",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Form(
              key: loginKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(30)),
                      child: TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.name,
                        validator: (val) {
                          if (val!.isEmpty) {
                            "Enter the User name.";
                          } else if (val.length > 6) {
                            "Enter only 6 digit username.";
                          } else if (val.contains("@")) {
                            "write @ for your gmail";
                          }
                        },
                        decoration: InputDecoration(
                          label: Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Icon(
                              Icons.mail_outline,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          suffixIconColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey.shade400.withOpacity(0.6),
                      ),
                      child: TextFormField(
                        controller: passwordController,
                        validator: (val) {
                          if (val!.isEmpty) {
                            "Enter the your Email here.";
                          } else if (val.length > 6) {
                            "Enter only 6 digit username";
                          } else {
                            "";
                          }
                        },
                        decoration: InputDecoration(
                          label: Text(
                            "Password",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Icon(
                              Icons.lock,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          suffixIconColor: Colors.blue,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MaterialButton(
                    height: 60,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400.withOpacity(0.6),
                      ),
                    ),
                    color: Colors.grey.shade400.withOpacity(0.6),
                    onPressed: () async {
                      await FireStoreHelper.storeHelper.addUser(
                        userModel: UserModel(
                          username: emailController.text,
                          email: passwordController.text,
                        ),
                      );
                      Navigator.of(context).pushNamed("home");

                      if (loginKey.currentState!.validate()) {
                        emailController.clear();
                        passwordController.clear();
                      } else {
                        "not saved";
                      }
                    },
                    child: Container(
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Obx(
            //   () => Text("name : ${controller.username.value}"),
            // ),
            // Obx(
            //   () => Text("last : ${controller.email.value}"),
            // ),
            // Text("User Name : ${LoginController.storage.read("userName") ?? ""}"),
            // Text(" Email : ${LoginController.storage.read("email") ?? ""}"),
          ],
        ),
      ),
    );
  }
}
