import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/data.dart';
import 'package:counter_7/page/details.dart';
import 'package:flutter/services.dart';

class ToWatchPage extends StatefulWidget {
  const ToWatchPage({Key? key}) : super(key: key);

  @override
  _ToWatchPageState createState() => _ToWatchPageState();
}

Future<List<MyWatchlist>> fetchToWatchList() async {
  var url = Uri.parse(
      'https://tugas-tiga-pbp-balqis.herokuapp.com/mywatchlist/json/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<MyWatchlist> listMyWatchList = [];
  for (var d in data) {
    if (d != null) {
      listMyWatchList.add(MyWatchlist.fromJson(d));
    }
  }

  return listMyWatchList;
}

class _ToWatchPageState extends State<ToWatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My Watch List")),
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
        body: FutureBuilder(
            future: fetchToWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak Ada Watchlist",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: const [
                            BoxShadow(color: Colors.black, blurRadius: 1.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                              title:
                                  Text('${snapshot.data![index].fields.title}'),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ShowWatchListDetailsPage(
                                              watchlistitems:
                                                  snapshot.data![index])),
                                );
                              })
                        ],
                      ),
                    ),
                  );
                }
              }
            }));
  }
}
