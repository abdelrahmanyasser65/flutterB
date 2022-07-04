import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class API extends StatefulWidget {
  const API({Key? key}) : super(key: key);

  @override
  State<API> createState() => _APIState();
}

class _APIState extends State<API> {
  Future<dynamic> fetchAlbum() async {
    const url = 'https://jsonplaceholder.typicode.com/albums';
    final res = await http.get(Uri.parse(url));
    if (res.statusCode == 200) {
      var obj = jsonDecode(res.body);
      return obj[0]['title'];
    } else {
      throw Exception('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var str = await fetchAlbum();
          print(str);
        },
      ),
    );
  }
}
