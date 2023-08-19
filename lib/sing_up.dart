
import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String? _email, _password, _confirmPass, _name, _phone;

  // Person_info person=Person_info("Loay Mohamed", "01121510042", "looay432@gmail.com","2001369105694");
  // // late Person_info person;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPpasswordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Form(
        key: _globalKey,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Create new account',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF7EAA92),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'please fill the form to continue...',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                        color: Color(0xFF7EAA92),
                      ),
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onSaved: (value) {
                      _name = value!;
                    },
                    controller: _nameController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color(0xFF7EAA92),
                      ),
                      hintText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.phone,
                    onSaved: (value) {
                      _phone = value!;
                    }, controller: _phoneController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xFF7EAA92),
                      ),
                      hintText: 'Email Address',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),

                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      _email = value!;
                    }, controller: _emailController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF7EAA92),
                      ),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    obscureText: true,
                    onSaved: (value) {
                      _password = value!;
                    },
                    controller: _passwordController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFF7EAA92),
                      ),
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    obscureText: true,
                    onSaved: (value) {
                      _confirmPass = value!;
                    }, controller: _confirmPpasswordController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: currentWidth * 0.6,
                    height: currentHeight * 0.13,
                    child: Builder(builder: (context) {
                      return ElevatedButton(
                        onPressed: () async {
                          // if (_globalKey.currentState!.validate()) {
                          //   if (_password == _confirmPass) {
                          //     print("on buttun");
                          //     try {
                          //       _globalKey.currentState!.save();
                          //
                          //       final authResult =
                          //       await _auth.SignUp(_email!, _password!);
                          //       Fluttertoast.showToast(
                          //           msg: "Registered Successfully",
                          //           toastLength: Toast.LENGTH_SHORT,
                          //           gravity: ToastGravity.TOP,
                          //           timeInSecForIosWeb: 1,
                          //           backgroundColor: KMainColor,
                          //           textColor: Colors.white,
                          //           fontSize: 16.0);
                          //       _signUp(context);
                          //       // _store.addUser(Users(
                          //       //     name: _name,
                          //       //     phone: _phone,
                          //       //     email: _email,
                          //       //     password: _password));
                          //       // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile(userId: userId)));
                          //     } catch (e) {
                          //       ScaffoldMessenger.of(context).showSnackBar(
                          //         SnackBar(
                          //           backgroundColor: KMainColor,
                          //           shape: RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.only(
                          //                 topLeft: Radius.circular(20),
                          //                 topRight: Radius.circular(20)),
                          //           ),
                          //           content: Text(
                          //             e.toString(),
                          //           ),
                          //         ),
                          //       );
                          //     }
                          //   } else {
                          //     print('error');
                          //   }
                          //   // print(_email);
                          //   // print(_password);
                          //   // print(_confirmPass);
                          // }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                            MaterialStatePropertyAll<Color>(Color(0xFF7EAA92)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(24.0),
                                    side: BorderSide(color: Colors.white)))),
                      );
                    }),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Have an Account?',
                        style: TextStyle(fontSize: 15),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7EAA92),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
