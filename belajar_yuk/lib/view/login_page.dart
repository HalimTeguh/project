import 'package:belajar_yuk/constants/R/assets.dart';
import 'package:belajar_yuk/constants/r.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static  const String route = "login_screen";


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.grey,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            SizedBox(height: 29,),
            Align(
              alignment: Alignment.topLeft,
              child: Text(R.strings.login, style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),),
            ),
            SizedBox(height: 35,),
            Image.asset(R.assets.imgLogin),
            SizedBox(height: 62,),
            Text(R.strings.welcome, style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),),
            Text(R.strings.loginDesc, textAlign: TextAlign.center, style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: R.colors.secondary_Font,
            ),),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: R.colors.borderLoginGoogle, width: 2)
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                ),
                onPressed: (){}, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Image.asset(R.assets.icGoogle),
                    SizedBox(width: 12,),
                    Text(
                      R.strings.loginGoogle, 
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: R.colors.blackLogin
              ),),
                  ],
                )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: R.colors.blackLogin,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.8, 50),
                ),
                onPressed: (){}, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Image.asset(R.assets.icApple),
                    SizedBox(width: 12,),
                    Text(
                      R.strings.loginApple, 
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
              ),),
                  ],
                )),
            )

          ],
        ),
      ),
    );
  }
}