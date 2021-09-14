import 'package:flutter/material.dart';
import 'package:fashion_style_mobile/utils/constants.dart';
import 'package:fashion_style_mobile/widgets/form_field.dart';
import 'package:fashion_style_mobile/widgets/logo.dart';
import 'package:fashion_style_mobile/widgets/text_button.dart';

class RegisterScreen extends StatefulWidget {
  final routeName = '/register';

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
    return Scaffold(
        body: Center(
            child: SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 50),
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
                                      padding: EdgeInsets.only(top: 50),
                                      child: Logo()),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 30, bottom: 15),
                                    child: Text(
                                      "Let's Get Started",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 35),
                                    child: Text(
                                      "Create an new account",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: TextInput(
                                        hintText: "Full Name",
                                        prefixIcon: Icons.supervisor_account,
                                        inputType: TextInputType.emailAddress,
                                        validator: _validatorFunc,
                                      )),
                                  Container(
                                      padding: EdgeInsets.only(bottom: 10),
                                      child: TextInput(
                                        hintText: "Your Email",
                                        prefixIcon: Icons.email,
                                        inputType: TextInputType.emailAddress,
                                        validator: _validatorFunc,
                                      )),
                                  Container(
                                      padding:
                                          EdgeInsets.only(bottom: 15, top: 0),
                                      child: TextInput(
                                        hintText: "Password",
                                        prefixIcon: Icons.lock,
                                        inputType:
                                            TextInputType.visiblePassword,
                                        validator: _validatorFunc,
                                      )),
                                  Container(
                                      padding:
                                          EdgeInsets.only(bottom: 15, top: 0),
                                      child: TextInput(
                                        hintText: "Password Again",
                                        errorMessage:
                                            "Oops! Your Password Does Not Match",
                                        prefixIcon: Icons.lock,
                                        inputType:
                                            TextInputType.visiblePassword,
                                        validator: _validatorFunc,
                                      )),
                                  Container(
                                    child: CustomButton(
                                        text: 'Sign Up',
                                        onpressed: () {
                                          if (_formKey.currentState!
                                              .validate()) {
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              const SnackBar(
                                                  content:
                                                      Text('Processing Data')),
                                            );
                                          }
                                        },
                                        textSize: 15),
                                    width: double.infinity,
                                    height: 60,
                                  ),
                                  Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(top: 25),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text("You have an account?",
                                                style: TextStyle(
                                                    height: 1.2,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w300,
                                                    color: Color(0xFFA5A5A5))),
                                            GestureDetector(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context, "/login");
                                                },
                                                child: Text(" Sign In",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: MyConstants.of(
                                                              context)!
                                                          .primaryColor,
                                                    )))
                                          ])),
                                ])))))));
  }
}
