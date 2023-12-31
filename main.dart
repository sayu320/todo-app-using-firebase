import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_using_firebase/auth/authscreens.dart';
import 'package:todo_app_using_firebase/firebase_options.dart';
import 'package:todo_app_using_firebase/screens/home.dart';


void main() async {
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform);
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     theme: ThemeData(
      
     primaryColor: Colors.purple
     ),
     home:StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(), 
      builder: (BuildContext context, usersnapshot) {
      if(usersnapshot.hasData) {
        return Home();
      }else{
       return AuthScreen();
      }
     },)
    );
  }
}

 