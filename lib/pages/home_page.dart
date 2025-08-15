import 'dart:convert';

import 'package:cafe/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CoffeePage extends StatefulWidget {
  const CoffeePage({super.key});

  @override
  State<CoffeePage> createState() => _CoffeePageState();
}

class _CoffeePageState extends State<CoffeePage> {
  List<SamplePosts> samplepost = [];

  Future<List<SamplePosts>> getData() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        samplepost.add(SamplePosts.fromJson(index));
      }
      return samplepost;
    } else {
      return samplepost;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: samplepost.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Container(
                    height: 150,
                    color: Colors.lightBlue,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    margin: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("User id ${samplepost[index].userId}"),
                        Text("id ${samplepost[index].id}"),
                        Text("title ${samplepost[index].title}"),
                        Text(
                          "body ${samplepost[index].title}",
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
