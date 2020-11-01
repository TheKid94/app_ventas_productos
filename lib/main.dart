import 'package:app_ventas/src/core/viewmodels/home_model.dart';
import 'package:app_ventas/src/pages/home_page.dart';
import 'package:app_ventas/src/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeModel(),
      child: MaterialApp(
        title: 'Ventas App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login' : (BuildContext context )=> LoginPage(),
        }
      ),
    );
  }
}