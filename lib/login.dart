import 'package:ffff/sing_up.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  bool value = false;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String email = '', password = '';


  @override
  Widget build(BuildContext context) {
    final currentHeight = MediaQuery.of(context).size.height;
    final currentWidth = MediaQuery.of(context).size.width;

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
                    height: 70,
                  ),
                  const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF7EAA92),
                        ),
                      )
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Color(0xFF7EAA92),
                      ),
                      hintText: 'Enter your email',
                        border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value)
                    {
                      email = value!;
                    },
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon:Icon(
                          Icons.lock,
                        color: Color(0xFF7EAA92),
                      ),
                      hintText: 'Enter your password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    obscureText: true,
                    onSaved: (value)
                    {
                      password = value!;
                    },
                    controller: _passwordController,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: currentWidth * 0.6,
                    height: currentHeight * 0.06,
                    child: Builder(
                        builder: (context) {
                          return ElevatedButton(
                            onPressed: () async
                            {
                              // _login(context);
                              // if(_globalKey.currentState!.validate())
                              // {
                              //   try {
                              //     _globalKey.currentState?.save();
                              //     final authResult = await _auth.SignIn(
                              //         email, password);
                              //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => const home()));
                              //
                              //   }catch(e){
                              //     ScaffoldMessenger.of(context).showSnackBar(
                              //       SnackBar(
                              //         backgroundColor: KMainColor,
                              //         shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                              //         ),
                              //         content: Text(
                              //           e.toString(),
                              //         ),
                              //       ),
                              //     );
                              //   }
                              // }
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFF7EAA92)),
                                shape:
                                MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(24.0),
                                        side: const BorderSide(color: Colors.white)))),
                          );
                        }
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an Account?',
                        style: TextStyle(
                            fontSize: 15
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUp()));
                        },
                        child: const Text(
                          'Sign Up',
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


