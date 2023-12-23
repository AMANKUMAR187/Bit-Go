import 'package:flutter/material.dart';

import '../../constants/global_variable.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
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

              Text('forgot password',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),
              ),
              const SizedBox(height: 5,),
              Text('Enter your email we will send you password recovery link',
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 10),
            _inputField("Enter your registerd email", "Email", email),
              const SizedBox(height: 50,),
              _loginBtn(),
            ],
          ),
        ),
      ),
    );
  }


  Widget _inputField(String hintText, String labeltext, TextEditingController controller,
      ) {
    var border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(color: Colors.white));

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

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {

      },
      child: const SizedBox(
          width: double.infinity,
          child: Text(
            "Reset Password",
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

}
