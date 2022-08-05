import 'package:e_comerce/pages/homepage/my_home_page.dart';
import 'package:e_comerce/routing/my_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  Future<void> _googleSignUp() async{
    try{
      final GoogleSignIn _googleSingIn = GoogleSignIn(
        scopes: [
          "email"
        ]
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;
      final GoogleSignInAccount? googleSignIn = await _googleSingIn.signIn();
      final AuthCredential credential = GoogleAuthProvider.credential(
      );
    }catch(e){
      print(e);
    }
  }

  AppBar buildAppBar(){
    return AppBar(
      title: Text("Login"),
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Sign in to Continue",
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),
                // SizedBox(height: 20,),
                Text(
                  "Vegi",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.green.shade900,
                        blurRadius: 3,
                        offset:Offset(5,5)
                      )
                    ]
                  ),
                ),
                Column(
                 children: [
                   SignInButton(
                     Buttons.Google,
                     text: "Sign up with Google",
                     onPressed: () {
                       setState(() {
                         MyRoutes.goToNextPage(context: context, navigateTo:MyHomePage());
                       });
                     },
                   ),
                   SignInButton(
                     Buttons.Apple,
                     text: "Sign up with Apple",
                     onPressed: () {
                       setState(() {
                         // MyRoutes.goToNextPage(context: context, navigateTo:MyHomePage());
                       });
                     },
                   )
                 ],
               ),
                Column(
                  children: [
                    Text(
                      "BY singing in to agreeing our",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                    Text(
                      "Terms and Privacy and Policy",
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
