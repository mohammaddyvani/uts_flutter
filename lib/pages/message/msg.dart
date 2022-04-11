import 'package:flutter/material.dart';

class Pesan extends StatelessWidget {
  final String nama;
  final String pesan1;
  final String pesan2;

  Pesan({required this.nama, required this.pesan1, required this.pesan2});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black45, width: 1.0))),
        child: ListTile(
          leading: ClipOval(child: Image.asset('assets/images/profil.jpg')),
          title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(nama, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text('2h', style: TextStyle(color: Colors.grey)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(pesan1, style: TextStyle(color: Colors.grey)),
                    Text(pesan2, style: TextStyle(color: Colors.grey)),
                  ],
                ),
                Icon(Icons.star_border, color: Colors.grey, size: 16),
              ],
            ),
          ]),
        ));
  }
}
