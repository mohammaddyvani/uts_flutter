import 'package:flutter/material.dart';
import 'package:uts/pages/sidebar.dart';
import 'package:uts/pages/message/msg.dart';

class InboxPage extends StatelessWidget {
  List input = [
    [
      'Andi',
      'Hello there!!',
      'Has been a long time....'
    ],
    [
      'Zaki',
      'Important News',
      'That is awsome!! Take a look...'
    ],
    [
      'Ivan',
      'Material Desain',
      'There is the widget library...'
    ],
    [
      'Andi',
      'Weekend Meeting?',
      'Can you meet this weekend?...'
    ],
  ];
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
              ListView.builder(
                  itemCount: input.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Pesan(nama: input[index][0][0], pesan1: input[index][1][0], pesan2: input[index][0][1]),
                      ],
                    );
                  }),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              // Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
            ],
          ),
        ),
      ),
    );
  }
}
