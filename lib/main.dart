import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> imglink = [
    'https://pngimg.com/uploads/Mclaren/Mclaren_PNG78.png',
    'https://w7.pngwing.com/pngs/197/833/png-transparent-mclaren-720s-car-geneva-motor-show-mclaren-p1-mclaren-car-mode-of-transport-performance-car.png',
    'https://snipstock.com/assets/cdn/png/48b4daba646ed27dbaf70c37dd0f7214.png',
    'https://image.pngaaa.com/121/1501121-middle.png',
    'https://purepng.com/public/uploads/large/mclaren-650s-grey-sports-car-a3q.png,'
  ];

  int index = 2;
  void _incrementIndex() {
    setState(() {
      if (index < 4) {
        index++;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyApp'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Ink.image(
              image: NetworkImage(
                  'https://carsguide-res.cloudinary.com/image/upload/f_auto%2Cfl_lossy%2Cq_auto%2Ct_default/v1/editorial/story/hero_image/1908-Ford-Model-T_0.jpg'),
              height: 300,
              width: 500,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 6),
            Text(
              'Hello World!',
              style: TextStyle(fontSize: 32, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
