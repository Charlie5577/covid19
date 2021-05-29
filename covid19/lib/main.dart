
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main()=>runApp(LandingPage());
class LandingPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LandingPages();
  }

}
enum AuthStatus{
  Signinmethode,
  Botomnavigation
}
class _LandingPages extends State<LandingPage>{

  FirebaseAuth _auth=FirebaseAuth.instance;
  AuthStatus checkingsignin=AuthStatus.Signinmethode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    auth();
  }
auth()async{
  var user=await _auth.currentUser; 
   setState(() {

        checkingsignin=user==null ? AuthStatus.Signinmethode:AuthStatus.Botomnavigation;
      });
  
}
  @override
  Widget build(BuildContext context) {

    if(checkingsignin==AuthStatus.Signinmethode)
      return Botomnavigation();
    else
      return Botomnavigation();
  }

}





















// import 'package:flutter/material.dart';
// import 'package:quizstar/splash.dart';

// import 'continue_with_phone.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "COVID_19",
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       home: ContinueWithPhone(),
//     );
//   }
// }
