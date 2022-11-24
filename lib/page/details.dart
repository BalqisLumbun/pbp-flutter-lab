import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/to_watch.dart';
import 'package:flutter/services.dart';

class ShowWatchListDetailsPage extends StatefulWidget {
  ShowWatchListDetailsPage({super.key, this.watchlistitems});
  var watchlistitems;

  @override
  State<ShowWatchListDetailsPage> createState() =>
      _ShowWatchListDetailsPageState();
}

class _ShowWatchListDetailsPageState extends State<ShowWatchListDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Detail")),
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('Counter_7'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => dataBudget()),
                  );
                },
              ),
              ListTile(
                title: const Text('To Watch'),
                onTap: () {
                  // Route menu ke halaman to do
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ToWatchPage()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.watchlistitems.fields.title,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  const Text(''),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Release Date: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    '${widget.watchlistitems.fields.releaseDate}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Rating: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text: '${widget.watchlistitems.fields.rating}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Status: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text: '${widget.watchlistitems.fields.watched}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Padding(
                      padding: EdgeInsets.all(8),
                      child: RichText(
                          text: TextSpan(
                              text: 'Review: ',
                              style: const TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                            TextSpan(
                                text: '${widget.watchlistitems.fields.review}',
                                style: const TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.normal,
                                ))
                          ]))),
                  Expanded(child: Container()),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Kembali"),
                  ),
                ])));
  }
}
