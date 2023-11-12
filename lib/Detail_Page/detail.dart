import 'package:flutter/material.dart';
import 'package:pas_mobile11/Detail_Page/detail_list.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 1000,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, 1.00),
            end: Alignment(0, -1),
            colors: [Color(0xFF270101), Color(0xFF631111), Color(0xFF000000), Color(0xFF000000)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 345,
              width: 420,
              child: Stack(
                children: [
                  _HeaderImage(),
                  _BackButton(),
                  _InTheaterText(),
                  _TicketButton(),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _ButtonAdd(),
                        _ButtonShare()
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Harmony on Stage: A Journey \nThrough the Arts",
                            style: TextStyle(
                              color: Color(0xFFD3D3D3),
                              fontSize: 21,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                        _RateStar(),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _Country(),
                              _Duration(),
                              _Genre()
                            ],
                          ),
                        ),
                        _Deskripsi(),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 7,left: 30),
                                child: Text(
                                  "More",
                                  style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                  ),
                                ),
                              ),
                              _ButtonArrowMore()
                            ],
                          ),
                        ),
                        _ListMore()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _ListMore(){
  return Container(
    height:106,
    width: 420,
    child: Expanded(
      flex: 1,
      child: ListView(
        padding: EdgeInsets.only(left: 30,top: 5),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          Detail_List(),
        ],
      ),
    ),
  );
}
Widget _Deskripsi(){
  return Container(
    margin: EdgeInsets.only(top: 15,left: 30,right: 30),
    child: Text(
      "'Harmony on Stage: A Journey Through the Arts' is a unique and immersive production that seamlessly blends music, dance, drama, and visual art into a harmonious celebration of creativity's universal language. It's a must-see show that transcends boundaries, touching the heart and soul with a rich tapestry of emotions and stories, demonstrating the profound impact of the arts on our lives.",
      textAlign: TextAlign.justify,
      style: TextStyle(
        color: Color(0xFFB5B5B5),
        fontSize: 15,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    ),
  );
}
Widget _Genre(){
  return Container(
    margin: EdgeInsets.only(right: 50),
    child: Column(
      children: [
        Container(
          child: Text(
            "Genre",
            style: TextStyle(
              color: Color(0xFF7D7D7D),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 3),
          child: Text(
            "Classical",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              height: 0,
            ),
          ),
        ),
      ],
    ),
  );
}
Widget _Duration(){
  return Container(
    child: Column(
      children: [
        Container(
          child: Text(
            "Length",
            style: TextStyle(
              color: Color(0xFF7D7D7D),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 3),
          child: Text(
            "112 min",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              height: 0,
            ),
          ),
        )
      ],
    ),
  );
}
Widget _Country(){
  return Container(
    margin: EdgeInsets.only(left: 50),
    child: Column(
      children: [
        Container(
          child: Text(
            "Country",
            style: TextStyle(
              color: Color(0xFF7D7D7D),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 3),
          child: Text(
            "USA",
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w800,
              height: 0,
            ),
          ),
        )
      ],
    ),
  );
}
Widget _RateStar(){
  return Container(
    height: 50,
    width: 150,
    child: Row(
      children: [
        Icon(
          Icons.star,
          size: 30,
          color: Color(0xFFFFEB34),
        ),
        Icon(
          Icons.star,
          size: 30,
          color: Color(0xFFFFEB34),
        ),
        Icon(
          Icons.star,
          size: 30,
          color: Color(0xFFFFEB34),
        ),
        Icon(
          Icons.star,
          size: 30,
          color: Color(0xFFFFEB34),
        ),
        Icon(
          Icons.star,
          size: 30,
          color: Color(0xFFFFEB34),
        ),
      ],
    ),
  );
}
Widget _TicketButton(){
  return Container(
    child: Positioned(
      top: 270,
      left: 170,
      child: Container(
        height: 75,
        width: 70,
        decoration: ShapeDecoration(
            color: Color(0xFF6A1313),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25)))
        ),
        child: RotatedBox(
          quarterTurns: 1,
          child: Icon(
            Icons.local_activity,
            size: 38,
            color: Color(0xFFD3D3D3),
          ),
        ),
      ),
    ),
  );
}
Widget _BackButton(){
  return Container(
    margin: EdgeInsets.only(top: 15,left: 10),
    child: Icon(
      Icons.arrow_back_rounded,
      size: 34,
      color: Color(0xFFD3D3D3),
    ),
  );
}
Widget _InTheaterText(){
  return Container(
    margin: EdgeInsets.only(top: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Text(
                  "In The",
                  style: TextStyle(
                    color: Color(0xFFD3D3D3),
                    fontSize: 26,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 1),
                child: Icon(
                  Icons.movie,
                  size: 28,
                  color: Color(0xFF6A1313),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 1),
                child: Text(
                  "ter",
                  style: TextStyle(
                    color: Color(0xFFD3D3D3),
                    fontSize: 26,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
Widget _HeaderImage(){
  return Container(
    width: double.infinity,
    child: Image(
      image: AssetImage("assets/image/theater.png"),
      fit: BoxFit.cover,
    ),
  );
}
Widget _ButtonArrowMore(){
  return Container(
    margin: EdgeInsets.only(top: 7,right: 30),
    child: Icon(
      Icons.arrow_forward_rounded,
      size: 30,
      color: Color(0xFFD3D3D3),
    ),
  );
}
Widget _ButtonAdd(){
  return Container(
    margin: EdgeInsets.only(left: 30),
    child: Icon(
      Icons.add_rounded,
      size: 42,
      color: Color(0xFFD3D3D3),
    ),
  );
}
Widget _ButtonShare(){
  return Container(
    margin: EdgeInsets.only(right: 30),
    child: Icon(
      Icons.share,
      size: 32,
      color: Color(0xFFD3D3D3),
    ),
  );
}