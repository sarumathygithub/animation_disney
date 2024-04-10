import 'package:animation_disney/Nextanimation.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Newone(),
    );
  }
}
class Newone extends StatefulWidget {
  const Newone({super.key});

  @override
  State<Newone> createState() => _NewoneState();
}

class _NewoneState extends State<Newone> with SingleTickerProviderStateMixin{
  AnimationController?controller;
  Animation?animation;
  @override
  void initState() {
    controller=AnimationController(
        duration: Duration(seconds: 2),
        vsync: this);
    animation=CurvedAnimation(
        parent: controller!,
        curve: Curves.easeInOut);
    controller!.forward();
    controller!.addListener(() {
      if(controller!.value==1.0){
        Navigator.push(context,
        MaterialPageRoute(builder: (context)=> const Nextanimation()));
      }

      setState(() {});
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff01147C),

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/Disneybg5.png",width: animation!.value*220,),
            ),
          ],
        ),
      ),
    );
  }
}


