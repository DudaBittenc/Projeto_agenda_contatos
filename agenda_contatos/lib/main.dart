import 'package:flutter/material.dart';
import 'package:flutter_application_1/View/home.dart';
import 'package:flutter_application_1/View/resources/style.dart';

void main () => runApp(
  MaterialApp(
    title: "Agenda de Contatos",
    home: new Home(),
    debugShowCheckedModeBanner: false,
    theme: style(),
  )
);
