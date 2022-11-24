import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/budget.dart';
import 'package:counter_7/page/to_watch.dart';

class dataBudget extends StatefulWidget {
  dataBudget({super.key, this.budgets});
  var budgets;

  @override
  State<dataBudget> createState() => _dataBudgetState();
}

class _dataBudgetState extends State<dataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Budget'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: const Text('counter_7'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Data Budget'),
              onTap: () {
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
                  MaterialPageRoute(builder: (context) => const ToWatchPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          widget.budgets == null
              ? Center(
                  child: Column(
                    children: [
                      Text(
                        "Tidak terdapat data!",
                      ),
                    ],
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    itemCount: widget.budgets.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(widget.budgets[index].judul),
                          subtitle:
                              Text(widget.budgets[index].nominal.toString()),
                          trailing: Column(
                            children: [
                              Text(widget.budgets[index].jenis),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
