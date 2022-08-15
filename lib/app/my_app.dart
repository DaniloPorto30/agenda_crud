import 'package:agenda_crud/app/view/contact_form.dart';
import 'package:agenda_crud/app/view/contact_list.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const HOME = '/';
  static const CONTACT_FORM = 'contact_form';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        HOME: (context) => ContactList(),
        CONTACT_FORM: (context) => ContactForm(),
      },
    );
  }
}
