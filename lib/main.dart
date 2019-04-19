import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  void getWeatherData() async{
    try {
      var httpClient = new HttpClient();
      var httpClientRequest = await httpClient.getUrl(Uri.parse("http://t.weather.sojson.com/api/weather/city/101030100"));
      var httpClientResponse = await httpClientRequest.close();
      var s = await httpClientResponse.transform(utf8.decoder).join();
      print(s);
      httpClient.close();
    } catch(e) {
      print("请求失败：$e");
    } finally {

    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'httpclient请求',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('httpclient请求'),
        ),
        body: new Center(
          child: new RaisedButton(
            onPressed: getWeatherData,
            child: new Text('获取天气数据'),
          ),
        ),
      )
    );
  }
}


