import 'package:flutter/material.dart';
import 'package:uts/pages/sidebar.dart';
import 'package:uts/pages/message/msg.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => {},
          ),
        ],
      ),
      drawer: SideBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Today', style: TextStyle(color: Colors.black)),
              const SizedBox(height: 5.0),
              Pesan(nama: "Andi", pesan1: "Hello there!!", pesan2: "Has been a long time...."),
              Pesan(nama: "Zaki", pesan1: "Important News", pesan2: "That is awsome!! Take a look..."),
              Pesan(nama: "Ivan", pesan1: "Material Desain", pesan2: "There is the widget library..."),
              Pesan(nama: "Bagus", pesan1: "Weekend Meeting?", pesan2: "Can you meet this weekend?..."),
              Pesan(nama: "Bagas", pesan1: "Hello there!!", pesan2: "Has been a long time...."),
              Pesan(nama: "Riki", pesan1: "Important News", pesan2: "That is awsome!! Take a look..."),
              Pesan(nama: "Wildan", pesan1: "Material Desain", pesan2: "There is the widget library..."),
              Pesan(nama: "Ahmad", pesan1: "Weekend Meeting?", pesan2: "Can you meet this weekend?..."),
              Pesan(nama: "Dyvani", pesan1: "Hello there!!", pesan2: "Has been a long time...."),
              Pesan(nama: "Wahyu", pesan1: "Important News", pesan2: "That is awsome!! Take a look..."),
              Pesan(nama: "Mirza", pesan1: "Material Desain", pesan2: "There is the widget library..."),
              Pesan(nama: "Septian", pesan1: "Weekend Meeting?", pesan2: "Can you meet this weekend?..."),
            ],
          ),
        ),
      ),
    );
  }
}
