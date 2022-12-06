import 'package:flutter/material.dart';
import 'package:sportnews/Pages/SignUpPage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool emailEmpty = false;
  bool passwordEmpty = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1e1e1e),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "images/backgraund.png",
              fit: BoxFit.cover,
            ),
          ),
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            children: [
              const SizedBox(
                height: 87,
              ),
              const Center(
                  child: Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w400),
              )),
              const SizedBox(
                height: 33,
              ),
              const Center(
                  child: Text(
                "Let’s Enter your",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              )),
              const SizedBox(
                height: 56,
              ),
              const Text(
                "Email",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (s) {
                  emailEmpty = false;
                  setState(() {});
                },
                controller: email,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  helperText: emailEmpty ? "Email address is incorrect" : "",
                  helperStyle: const TextStyle(color: Colors.red),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 18.5, horizontal: 24),
                  filled: true,
                  fillColor: const Color(0xffFFFFFF).withOpacity(0.03),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xff62C5ED),
                        width: 1.5,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xff62C5ED),
                        width: 1.5,
                      )),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: const Color(0xffFFFFFF).withOpacity(0.3),
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Pasword",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (s) {
                  passwordEmpty = false;
                  setState(() {});
                },
                controller: password,
                obscureText: true,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  helperText: passwordEmpty ? "Password is incorrect" : "",
                  helperStyle: const TextStyle(color: Colors.red),
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 18.5, horizontal: 24),
                  filled: true,
                  fillColor: const Color(0xffFFFFFF).withOpacity(0.03),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xff62C5ED),
                        width: 1.5,
                      )),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Color(0xff62C5ED),
                        width: 1.5,
                      )),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: const Color(0xffFFFFFF).withOpacity(0.3),
                        width: 1.5,
                      )),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 4.5,
              ),
              Container(
                height: 57,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xff62C5ED),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 8),
                        blurRadius: 50,
                        color: const Color(0xff62C5ED).withOpacity(0.16),
                      ),
                    ]),
                child: InkWell(
                  onTap: () {
                    email.text.isNotEmpty && password.text.isNotEmpty
                        ? Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          )
                        : email.text.isEmpty
                            ? emailEmpty = true
                            : passwordEmpty = true;
                    setState(() {});
                  },
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
