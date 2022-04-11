import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.move_to_inbox,
              text: 'Inbox',
              onTap: () {
                Navigator.pushNamed(context, '');
              }),
          _drawerItem(
              icon: Icons.outbox,
              text: 'Outbox',
              onTap: () {
                Navigator.pushNamed(context, '');
              }),
          _drawerItem(
              icon: Icons.person,
              text: 'Spam',
              onTap: () {
                Navigator.pushNamed(context, '');
              }),
          _drawerItem(
              icon: Icons.person,
              text: 'Forums',
              onTap: () {
                Navigator.pushNamed(context, '');
              }),
          _drawerItem(
              icon: Icons.person,
              text: 'Promos',
              onTap: () {
                Navigator.pushNamed(context, '');
              }),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/profil.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      currentAccountPicture: ClipOval(
        child: Image(
          image: AssetImage('assets/images/*'),
          height: 20.0,
          width: 20.0,
          fit: BoxFit.cover,
        ),
      ),
      accountName: Text('Wahyu Wildana', style: TextStyle(fontWeight: FontWeight.bold)),
      accountEmail: Text('mdyvani@gmail.com'));
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon, size: 24),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
