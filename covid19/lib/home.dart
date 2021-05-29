import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizstar/quizpage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> images = [
    "images/py.png",
  ];

  List<String> des = [
    "Covid 19 is one of the most popular and fastest spreading virus .\nIf You think you have covid 19.. \nJust test yourself !!",
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
            builder: (context) => getjson(langname),
          ));
        },
        child: Material(
          color: Colors.cyan,
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
          customcard("covid", images[0], des[0]),
        ],
      ),
    );
  }
}
