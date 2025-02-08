import 'package:flutter/material.dart';

void main() {
  runApp(
    // Center(
    //   child: Text(
    //     'Hello, World!',
    //     textDirection: TextDirection.ltr,
    //   ),
    // ),
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'iwasawa App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Color.fromARGB(228, 10, 182, 130),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              NewWidget(),
              NewWidget(),
              NewWidget(),
              NewWidget(),
              NewWidget(),
              NewWidget(),
              NewWidget(),
              NewWidget(),
              NewWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://stv-tech.co.jp/wp-content/uploads/2023/08/1_5-aoK8IBmXve5whBQM90GA.png'),
          ),
          SizedBox(width: 8.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('iwasawa@UserName'),
                  SizedBox(width: 8),
                  Text('2025/02/06'),
                ],
              ),
              SizedBox(height: 4),
              Text('Submit Content'),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

