import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:flutter/services.dart';

class ToWatchPage extends StatefulWidget {
  const ToWatchPage({Key? key}) : super(key: key);

  @override
  _ToWatchPageState createState() => _ToWatchPageState();
}

class _ToWatchPageState extends State<ToWatchPage> {
  // var url = Uri.parse(
  //     'https://jsonplaceholder.typicode.com/todos?_start=0&_limit=10');

  // var response = await http.get(
  //   url,
  //   headers: {
  //     "Access-Control-Allow-Origin": "*",
  //     "Content-Type": "application/json",
  //   },
  // );
  // var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchlist> listToWatch = [];
  Future<List<MyWatchlist>> fetchToWatch() async {
    final String response =
        await rootBundle.loadString('assets/my_watchlist.json');
    final data = await json.decode(response);

    for (var d in data) {
      listToWatch.add(MyWatchlist.fromJson(d));
    }

    // for (var d in data) {
    //   if (d != null) {
    //     listToWatch.add(MyWatchlist.fromJson(d));
    //   }
    // }
    return listToWatch;

    // setState(() {
    //   listToWatch = data;
    // });
  }

  // @override
  // void initState() {
  //   super.initState();
  //   // Call the readJson method when the app starts
  //   fetchToWatch();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('To Watch'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('Counter'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Form'),
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
            padding: const EdgeInsets.all(25),
            child: Column(children: [
              Expanded(
                child: ListView.builder(
                  itemCount: listToWatch.length,
                  itemBuilder: (context, index) {
                    return Card(
                      key: ValueKey(listToWatch[index].id),
                      margin: const EdgeInsets.all(10),
                      color: Colors.amber.shade100,
                      child: ListTile(
                        title: Text(listToWatch[index].title),
                      ),
                    );
                  },
                ),
              )
            ])));
  }
}
