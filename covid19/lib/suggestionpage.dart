import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class suggestionpage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<suggestionpage> {
  List<String> images = [
    "images/mask.png",
    "images/sanitizer.png",
    "images/socialdistance.png",
    "images/vaccine.png",


  ];

  List<String> des = [
    "Complusorily wear a mask when you go out",
    "Please sanitize your hand  !!",
    "Maintain social distancing to prevent the virus",
    "Take vaccines and stay safe!!",

  ];

  Widget customcard(String langname, String image, String des) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(

          ));
        },
        child: Material(
          color: Colors. cyan,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(25.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      height: 150.0,
                      width: 150.0,
                      child: ClipOval(
                        child: Image(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            image,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: "Quando",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    des,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "Alike"),

                    maxLines: 5,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "COVID_19",
          style: TextStyle(
            fontFamily: "Quando",
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: <Widget>[
          customcard("Mask", images[0], des[0]),
          customcard("Sanitizer", images[1], des[1]),
          customcard("Social_Distance", images[2], des[2]),
          customcard("Vaccine", images[3], des[3]),


        ],
      ),
    );
  }
}
