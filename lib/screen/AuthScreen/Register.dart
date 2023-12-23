import 'package:bit_go/constants/Rouets.dart';
import 'package:bit_go/screen/AuthScreen/Login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/global_variable.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();

  bool isPassword = true;
  bool isrePassword = true;
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                //GlobalVariable.Black26,
                GlobalVariable.grey,
                GlobalVariable.SecondaryColor,
                //GlobalVariable.PrimaryColor,
                GlobalVariable.Black26,
                GlobalVariable.SecondaryColor,
                GlobalVariable.grey,
              ],
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: _page(),
        ),
      );
  }

  Widget _page() {
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              // Text('All your college needs in one app',
              //   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
              // ),
              // const SizedBox(height: 5),
              Text('Register Here',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              ),
              const SizedBox(height: 10),
              _icon(),
              const SizedBox(height: 50),
              _inputField("Enter your email","Email", usernameController),
              const SizedBox(height: 20),
              _inputField("Enter your password","Password", passwordController),
              const SizedBox(height: 20),
              _inputField("Re-Enter your password","Confirm Password", repasswordController),

              const SizedBox(height: 50),
              _loginBtn(),
              const SizedBox(height: 20),
              _extraText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          shape: BoxShape.circle),
      child: const Icon(Icons.person, color: Colors.white, size: 120),
    );
  }

  Widget _inputField(String hintText, String labeltext, TextEditingController controller,
      ) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));

    if(labeltext=="Email"){
      return TextField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labeltext,
          labelStyle: const TextStyle(color: Colors.white70),
          hintStyle: const TextStyle(color: Colors.white70),
          enabledBorder: border,
          focusedBorder: border,
          suffixIcon: Icon(Icons.email,color: Colors.white60,
          ),
        ),

      );
    }
    else if(labeltext=="Password"){
      return  TextField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labeltext,
          labelStyle: const TextStyle(color: Colors.white70),
          hintStyle: const TextStyle(color: Colors.white70),
          enabledBorder: border,
          focusedBorder: border,
          suffixIcon: CupertinoButton(
              onPressed: (){
                setState(() {
                  isPassword = !isPassword;
                });
              },
              child: Icon(
                isPassword ?
                Icons.visibility
                    : Icons.visibility_off,
                color: Colors.white60,
              )),
        ),

        obscureText: isPassword,
      );
    }
   else
     return  TextField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labeltext,
          labelStyle: const TextStyle(color: Colors.white70),
          hintStyle: const TextStyle(color: Colors.white70),
          enabledBorder: border,
          focusedBorder: border,
          suffixIcon: CupertinoButton(
              onPressed: (){
                setState(() {
                  isrePassword = !isrePassword;
                });
              },
              child: Icon(
                isrePassword ?
                Icons.visibility
                    : Icons.visibility_off,
                color: Colors.white60,
              )),
        ),

        obscureText: isrePassword,
      );


  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {
        debugPrint("Username : " + usernameController.text);
        debugPrint("Password : " + passwordController.text);
      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Register",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.grey,
        onPrimary: Colors.black54,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have account?",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        TextButton(
          onPressed: (){
          Routes.instance.pushAndRemoveUntil(widget: LoginScreen(), context: context);
          },

          child: Text("Sign-In",
              style: TextStyle(fontSize: 20,
                decoration: TextDecoration.underline,
                color: GlobalVariable.PrimaryColor,
              )
          ),
        )
      ],
    );

  }
}


