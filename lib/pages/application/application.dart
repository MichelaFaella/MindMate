import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';
import 'package:mind_mate/pages/authentication/authenticationWidget.dart';

class Application extends StatefulWidget{

  const Application({Key? key}) : super (key:key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(title: "Homepage".toUpperCase()),
      backgroundColor: colorsNew.backgroundColorNew,

    );
  }
}