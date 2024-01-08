import 'package:flutter/material.dart';
import 'package:pas_mobile11/Component/color_component.dart';
import 'package:pas_mobile11/Registration_Page/Widget/gambar.dart';
import 'package:pas_mobile11/Registration_Page/Widget/head.dart';
import 'package:pas_mobile11/Registration_Page/Widget/userpasslogin.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1200,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [MyColors .ocean, MyColors.background],
          ),
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              margin: EdgeInsets.only(top: 120, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Head(),
                  SizedBox(height: 30),
                  Userpasslogin(),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      SignIn(),
                    ],
                  ),
                  SizedBox(height: 10),
                  // SignUp()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget _SignUp(){
//   return Container(
//     margin: EdgeInsets.only(top: 25),
//     child: Text.rich(
//       TextSpan(
//         children: [
//           TextSpan(
//             text: 'Already have an account? ',
//             style: TextStyle(
//               color: Color(0xFFA8A8A8),
//               fontSize: 18,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w500,
//               height: 0,
//             ),
//           ),
//           TextSpan(
//             text: 'Login',
//             style: TextStyle(
//               color: Color(0xFF5F86C7),
//               fontSize: 18,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w500,
//               height: 0,
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }
// Widget _Header(){
//   return Container(
//     width: double.infinity,
//     child: Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           child: Image(
//             image: AssetImage("assets/image/header.png"),
//           ),
//         ),
//         Positioned(
//           top: 40,
//           left: 140,
//           child: Text.rich(
//             TextSpan(
//               children: [
//                 TextSpan(
//                   text: 'Thea',
//                   style: TextStyle(
//                     color: Color(0xFF6A1313),
//                     fontSize: 32,
//                     fontFamily: 'Inter',
//                     fontWeight: FontWeight.w700,
//                     height: 0,
//                   ),
//                 ),
//                 TextSpan(
//                   text: '’Art',
//                   style: TextStyle(
//                     color: Color(0xFFD3D3D3),
//                     fontSize: 32,
//                     fontFamily: 'Inter',
//                     fontWeight: FontWeight.w700,
//                     height: 0,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
// Widget _InputData(){
//   return Container(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           margin: EdgeInsets.only(left: 30, top: 30),
//           child: Text(
//             "Email",
//             style: TextStyle(
//               color: Color(0xFF484242),
//               fontSize: 18,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//         //email input
//         Container(
//           margin: EdgeInsets.only(left: 30, right: 30),
//           child: TextField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(
//                 Icons.email,
//                 size: 36,
//                 color: Color(0xFF787878),
//               ),
//               prefixIconConstraints: BoxConstraints(
//                 minWidth: 10,
//                 minHeight: 40,
//               ),
//               border: UnderlineInputBorder(
//                 borderSide:
//                 BorderSide(color: Color(0xFF787878)),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(left: 30, top: 30),
//           child: Text(
//             "Username",
//             style: TextStyle(
//               color: Color(0xFF484242),
//               fontSize: 18,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//         //username input
//         Container(
//           margin: EdgeInsets.only(left: 30, right: 30),
//           child: TextField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(
//                 Icons.person,
//                 size: 36,
//                 color: Color(0xFF787878),
//               ),
//               prefixIconConstraints: BoxConstraints(
//                 minWidth: 10,
//                 minHeight: 40,
//               ),
//               border: UnderlineInputBorder(
//                 borderSide:
//                 BorderSide(color: Color(0xFF787878)),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           margin: EdgeInsets.only(left: 30, top: 30),
//           child: Text(
//             "Password",
//             style: TextStyle(
//               color: Color(0xFF484242),
//               fontSize: 18,
//               fontFamily: 'Inter',
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ),
//         //password input
//         Container(
//           margin: EdgeInsets.only(left: 30, right: 30),
//           child: TextField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(
//                 Icons.key,
//                 size: 36,
//                 color: Color(0xFF787878),
//               ),
//               prefixIconConstraints: BoxConstraints(
//                 minWidth: 10,
//                 minHeight: 40,
//               ),
//               border: UnderlineInputBorder(
//                 borderSide:
//                 BorderSide(color: Color(0xFF787878)),
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }
// Widget _Agreement(){
//   return Container(
//     width: 285,
//     margin: EdgeInsets.only(top: 5),
//     child: Row(
//       children: [
//         Icon(
//           Icons.verified,
//           color: Color(0xFF387CFF),
//         ),
//         Text.rich(
//           TextSpan(
//             children: [
//               TextSpan(
//                 text: 'I agree to the',
//                 style: TextStyle(
//                   color: Color(0xFF484242),
//                   fontSize: 16,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight.w500,
//                   height: 0,
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Text.rich(
//           TextSpan(
//             children: [
//               TextSpan(
//                 text: 'Terms and Conditions',
//                 style: TextStyle(
//                   color: Color(0xFF387CFF),
//                   fontSize: 16,
//                   fontFamily: 'Inter',
//                   fontWeight: FontWeight.w500,
//                   height: 0,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
// Widget _ButtonSignUp(){
//   return Container(
//     margin: EdgeInsets.only(top: 30),
//     width: 199,
//     height: 50,
//     child: GestureDetector(
//       onTap: () {
//         // Handle login button tap
//       },
//       child: Stack(
//         children: [
//           Container(
//             width: 199,
//             height: 50,
//             decoration: ShapeDecoration(
//               color: Color(0xFFD9D9D9),
//               shape: RoundedRectangleBorder(
//                 side: BorderSide(
//                     width: 2,
//                     color: Color(0xFF6A1313)),
//                 borderRadius:
//                 BorderRadius.circular(30),
//               ),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(top: 15,left: 70),
//             child: Text(
//               'Sign Up',
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Color(0xFF6A1313),
//                 fontSize: 16,
//                 fontFamily: 'Inter',
//                 fontWeight: FontWeight.w700,
//                 height: 0,
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//   );
// }