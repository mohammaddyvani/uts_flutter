import 'package:flutter/material.dart';
import 'package:uts/pages/inbox_page.dart';

class RouteGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => InboxPage());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Error"),
        ),
        body: Center(child: Text("404 error", style: TextStyle(fontSize: 25.0))),
      );
    });
  }
}
