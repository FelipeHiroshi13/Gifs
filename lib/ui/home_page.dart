import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _search;

  int _offset = 0;

  Future <Map>_getGifs() async{
    http.Response response;

    if(_search == null)
      response = await http.get("https://api.giphy.com/v1/gifs/trending?api_key=oCFMyDbE1PHFsf7M4BNt1GrkcXeh7oSB&limit=20&rating=g");
    else
      response = await http.get("https://api.giphy.com/v1/gifs/search?api_key=oCFMyDbE1PHFsf7M4BNt1GrkcXeh7oSB&q=$_search&limit=25&offset=$_offset&rating=g&lang=en");

    return json.decode(response.body);
  }



  @override
  Widget build(BuildContext context) {
    return Container();
  }


}
