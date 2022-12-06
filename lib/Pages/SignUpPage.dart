import 'package:flutter/material.dart';
import 'package:sportnews/Pages/HomePage.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController fullName = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool fullNameEmpty = false;
  bool emailEmpty = false;
  bool passwordEmpty = false;
  bool isChecked = false;
  bool isClicked = false;

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
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 80),
            children: [
              const Center(
                  child: Text(
                "Get Started",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              )),
              const SizedBox(
                height: 33,
              ),
              const Center(
                  child: Text(
                "Let’s create your accaunt",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w300),
              )),
              const SizedBox(
                height: 12,
              ),
              const Center(
                  child: Text(
                "Privacy Policy",
                style: TextStyle(
                    color: Color(0xff62C5ED),
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "First Name",
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
                  fullNameEmpty = false;
                  setState(() {});
                },
                controller: fullName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  helperText: fullNameEmpty ? "First Name is incorrect" : "",
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
                height: 36,
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
                height: 36,
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
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: Color(0xff62C5ED),
                      width: 1.5,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: const Color(0xffFFFFFF).withOpacity(0.3),
                        width: 1.5,
                      )),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      isChecked = !isChecked;
                      isClicked = !isClicked;
                      setState(() {});
                    },
                    icon: Icon(
                      isChecked
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: isClicked && !isChecked? Colors.red: Color(0xffA1A4B2),
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                        text: "i have read the ",
                        style: TextStyle(
                          color: Color(0xffA1A4B2),
                        ),
                        children: [
                          TextSpan(
                            text: "Privace Policy",
                            style: TextStyle(
                              color: Color(0xff7583CA),
                            ),
                          )
                        ]),
                  ),
                ],
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
                    email.text.isNotEmpty && password.text.isNotEmpty && fullName.text.isNotEmpty && isChecked
                        ? Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    )
                    :fullName.text.isEmpty?
                        fullNameEmpty=true
                        : email.text.isEmpty
                            ? emailEmpty = true
                            : password.text.isEmpty?
                    passwordEmpty = true:
                    isClicked = true;
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
            ],
          ),
        ],
      ),
    );
  }
}
