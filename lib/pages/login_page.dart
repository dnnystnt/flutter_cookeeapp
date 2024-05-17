import 'package:flutter/material.dart';
import 'package:flutter_cookeeapp/shared/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // set the Parameter for CheckboxListTile Here
  bool? isChecked = false;

  // Make the Controller First
  final usernameEmailController = TextEditingController();
  final passwordController = TextEditingController();

  // IMPORTANT! Don't forget about Dispose
  @override
  void dispose() {
    // TODO: implement dispose
    usernameEmailController.clear();
    passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Container(
              width: 396,
              height: 295,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/cookee-logo-blue-app.png',
                  ),
                ),
              ),
            ),
          ),
          // Lanjut dari sini
          // SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextField(
                  controller: usernameEmailController,
                  decoration: InputDecoration(
                    label: Text('Email / Username'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                CheckboxListTile(
                  contentPadding: EdgeInsets.all(0),
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue;
                    });
                  },
                  activeColor: kPrimaryColor,
                  checkColor: kBackgroundColor,
                  title: Text(
                    'Remember Me',
                    style: kTitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: kDescTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Click Here',
                        style: kPrimaryTextStyle.copyWith(
                          decoration: TextDecoration.underline,
                          fontWeight: semiBold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 140),
                Container(
                  width: 395,
                  height: 68,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/main-page');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: kWhiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
