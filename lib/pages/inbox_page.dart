import 'dart:html';

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
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
              Pesan(nama: "Andi", pesan1: "Hallo Semua!!", pesan2: "Selamat siang, saya aad..."),
            ],
          ),
        ),
      ),
    );
  }
}
