import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:first_flutter_project/firstscreen.dart';
import 'package:first_flutter_project/register_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    bool viewPassword = true;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const SizedBox(height: 150),
                const Text(
                  'Please login to continue,',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'username@example.com',
                    prefixIcon: Icon(
                      Icons.account_circle,
                      color: Colors.black,
                    ),
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    ),
                  ),
                  validator: (text) {
                    if (text!.isEmpty || !(text.contains('@'))) {
                      return "Please check your user name and password!";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  textInputAction: TextInputAction.done,
                  obscuringCharacter: '*',
                  obscureText: viewPassword,
                  decoration: InputDecoration(
                      suffixIconColor: Colors.black,
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (viewPassword) {
                                viewPassword = false;
                              } else {
                                viewPassword = true;
                              }
                            });
                          },
                          icon: Icon(viewPassword == true
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      hintText: '**********',
                      prefixIcon: const Icon(
                        Icons.password,
                        color: Colors.black,
                      ),
                      labelText: 'Password',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      )),
                  validator: (text) {
                    if (text!.isEmpty || text.length < 6) {
                      return 'Please check your user name and password!';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    final isValid = formkey.currentState!.validate();
                    if (isValid) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FirstScreen()));
                    } else {
                      Fluttertoast.showToast(msg: 'Login failed!');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(250, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  // ButtonStyle(
                  //     minimumSize: MaterialStateProperty.all(const Size(250, 40)),
                  //     backgroundColor: MaterialStateProperty.all(Colors.black)),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterUser()));
                    },
                    child: const Text('Not a User ? Register'))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
