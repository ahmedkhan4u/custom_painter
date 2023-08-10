import 'package:custom_painter/custom_paint/custom_shape.dart';
import 'package:custom_painter/custom_paint/draw_arc.dart';
import 'package:custom_painter/custom_paint/draw_circle.dart';
import 'package:custom_painter/custom_paint/draw_line.dart';
import 'package:custom_painter/custom_paint/draw_rectangle.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Custom Painter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomPaint(
              size: Size(width, height * 0.2),
              painter: DrawCircle(),
            ),

            const SizedBox(
              height: 16,
            ),
            // SizedBox(height: height * 0.01,),
            CustomPaint(
              size: Size(width, height * 0.2),
              painter: DrawRectangle(),
            ),

            const SizedBox(
              height: 16,
            ),

            CustomPaint(
              size: Size(width, height * 0.2),
              painter: DrawRectangle(isFilled: true),
            ),
            const SizedBox(
              height: 16,
            ),

            CustomPaint(
              size: Size(width, height * 0.2),
              painter: DrawCustomShape(),
            ),

            const SizedBox(
              height: 16,
            ),

            CustomPaint(
              size: Size(width, height * 0.2),
              painter: DrawLine(),
            ),

            const SizedBox(
              height: 16,
            ),

            CustomPaint(
              size: Size(width, height * 0.2),
              painter: DrawArc(),
            ),

            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
