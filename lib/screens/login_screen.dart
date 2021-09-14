import 'package:fashion_style_mobile/utils/constants.dart';
import 'package:fashion_style_mobile/widgets/form_field.dart';
import 'package:fashion_style_mobile/widgets/logo.dart';
import 'package:fashion_style_mobile/widgets/text_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final routeName = "/login";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String? _validatorFunc(value) {
    if (value == null || value.isEmpty) {
      print('test');
      return 'This field is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                /* border: Border.all(width: 2, color: Colors.indigo) */),
            padding: EdgeInsets.all(15),
            child: Center(
                child: Form(
                    key: _formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              padding: EdgeInsets.only(top: 20), child: Logo()),
                          Padding(
                            padding: EdgeInsets.only(top: 30, bottom: 15),
                            child: Text(
                              "Welcome to Lafyuu",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 35),
                            child: Text(
                              "Sing in to continue",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                              padding: EdgeInsets.only(bottom: 10),
                              child: TextInput(
                                hintText: "Your Email",
                                prefixIcon: Icons.email,
                                inputType: TextInputType.emailAddress,
                                validator: _validatorFunc,
                              )),
                          Container(
                              padding: EdgeInsets.only(bottom: 15, top: 0),
                              child: TextInput(
                                hintText: "Password",
                                errorMessage:
                                    "Oops! Your Password Is Not Correct",
                                prefixIcon: Icons.lock,
                                inputType: TextInputType.visiblePassword,
                                validator: _validatorFunc,
                              )),
                          Container(
                            child: CustomButton(
                                text: 'Sign in',
                                onpressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Processing Data')),
                                    );
                                  }
                                },
                                textSize: 15),
                            width: double.infinity,
                            height: 60,
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(flex: 2, child: Divider()),
                                  Expanded(
                                      flex: 1,
                                      child: Center(
                                          child: Text(
                                        'OR',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey),
                                      ))),
                                  Expanded(flex: 2, child: Divider()),
                                ],
                              )),
                          Container(
                            margin: EdgeInsets.only(bottom: 5),
                            child: CustomButton(
                                text: 'Login with Google',
                                onpressed: () => {},
                                textSize: 15,
                                prefixIcon: Icons.link_outlined,
                                bgColor: Colors.white,
                                textColor: Colors.grey),
                            width: double.infinity,
                            height: 60,
                          ),
                          Container(
                            child: CustomButton(
                              text: 'Login with Facebook',
                              onpressed: () => {},
                              textSize: 15,
                              prefixIcon: Icons.link_outlined,
                              bgColor: Colors.white,
                              textColor: Colors.grey,
                            ),
                            width: double.infinity,
                            height: 60,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Center(
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        MyConstants.of(context)!.primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            width: double.infinity,
                          ),
                          Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have a account?",
                                        style: TextStyle(
                                            height: 1.2,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xFFA5A5A5))),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, "/register");
                                        },
                                        child: Text(" Register",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                              color: MyConstants.of(context)!
                                                  .primaryColor,
                                            )))
                                  ])),
                        ])))));
  }
}
