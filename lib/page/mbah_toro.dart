import 'package:counter_7/page/to_watch.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:flutter/services.dart';

class MbahToro extends StatefulWidget {
  const MbahToro({Key? key}) : super(key: key);

  @override
  _MbahToroState createState() => _MbahToroState();
}

class _MbahToroState extends State<MbahToro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Watch'),
      ),
      drawer: Drawer(
          child: Column(children: [
        // Menambahkan clickable menu
        ListTile(
          title: const Text('Back'),
          onTap: () {
            // Route menu ke halaman utama
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ToWatchPage()),
            );
          },
        ),
      ])),
    );
  }
}
