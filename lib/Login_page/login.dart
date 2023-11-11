import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          color: Color(0xFF280202),
          height: 900,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 790,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFD3D3D3),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                //body
                child: Column(
                  children: [
                    _Header(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 420,
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xFF6A1313),
                              fontSize: 36,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: Text(
                            "To continue your account!",
                            style: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    _InputData(),
                    _ForgotPass(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _Buttonlogin(),
                        _OrLoginWithText(),
                        _SignIn(),
                      ],
                    ),
                  ],
                ),
              ),
              _SignUp()
            ],
          ),
        ),
      ),
    );
  }
}

Widget _OrLoginWithText(){
  return Container(
    width: 200,
    margin: EdgeInsets.only(top: 30),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 85,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign:
                BorderSide.strokeAlignCenter,
                color: Color(0xFF787878),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Or ',
          style: TextStyle(
            color: Color(0xFF787878),
            fontSize: 13,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          width: 85,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign:
                BorderSide.strokeAlignCenter,
                color: Color(0xFF787878),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _Header(){
  return Container(
    width: double.infinity,
    child: Stack(
      children: [
        Container(
          width: double.infinity,
          child: Image(
            image: AssetImage("assets/image/header.png"),
          ),
        ),
        Positioned(
          top: 40,
          left: 140,
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Thea',
                  style: TextStyle(
                    color: Color(0xFF6A1313),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: '’Art',
                  style: TextStyle(
                    color: Color(0xFFD3D3D3),
                    fontSize: 32,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _InputData(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, top: 30),
              child: Text(
                "Username",
                style: TextStyle(
                  color: Color(0xFF484242),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            //username input
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    size: 36,
                    color: Color(0xFF787878),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 10,
                    minHeight: 40,
                  ),
                  border: UnderlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF787878)),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 30),
              child: Text(
                "Password",
                style: TextStyle(
                  color: Color(0xFF484242),
                  fontSize: 18,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            //password input
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.key,
                    size: 36,
                    color: Color(0xFF787878),
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 10,
                    minHeight: 40,
                  ),
                  border: UnderlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFF787878)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
Widget _Buttonlogin(){
  return Container(
    margin: EdgeInsets.only(top: 30),
    width: 199,
    height: 50,
    child: GestureDetector(
      onTap: () {
        // Handle login button tap
      },
      child: Stack(
        children: [
          Container(
            width: 199,
            height: 50,
            decoration: ShapeDecoration(
              color: Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 2,
                    color: Color(0xFF6A1313)),
                  borderRadius:
                  BorderRadius.circular(30),
                ),
              ),
            ),
          Container(
            margin: EdgeInsets.only(top: 15,left: 80),
            child: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF6A1313),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Widget _SignIn(){
  return Container(
    margin: EdgeInsets.only(top: 8),
    width: 420,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 130,
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                child: Image(
                  image: AssetImage("assets/image/facebook2.png"),
                ),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 42,
                height: 42,
                child: Image(
                  image: AssetImage("assets/image/google.png"),
                ),
              ),
              Container(
                width: 46,
                height: 46,
                child: Image(
                  image: AssetImage("assets/image/apple.png"),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8),
          child: Text(
            "Sign in with another account",
            style: TextStyle(
              color: Color(0xFF787878),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        )
      ],
    ),
  );
}
Widget _SignUp(){
  return Container(
    margin: EdgeInsets.only(top: 25),
    child: Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Do not have an account? ',
            style: TextStyle(
              color: Color(0xFFA8A8A8),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          TextSpan(
            text: ' Sign Up',
            style: TextStyle(
              color: Color(0xFF5F86C7),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ],
      ),
    ),
  );
}
Widget _ForgotPass(){
  return Container(
    margin: EdgeInsets.only(top: 10, left: 235),
    child: Text(
      "Forgot your password?",
      style: TextStyle(
        color: Color(0xFF5F86C7),
        fontSize: 14,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    ),
  );
}

