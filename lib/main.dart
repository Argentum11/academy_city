import 'package:academy_city/academy_city_introduction.dart';
import 'package:flutter/material.dart';
import 'package:academy_city/esper.dart';

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
      home: const AcademyCity(),
    );
  }
}

class AcademyCity extends StatelessWidget {
  const AcademyCity({super.key});

  static const List<Tab> myTabs = <Tab>[
    Tab(text: '科學側'),
    Tab(text: '簡介'),
    Tab(text: '魔法側'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: myTabs),
        ),
        body: const TabBarView(
          children: [EsperPage(), AcademyCityIntroduction(),Text("show magician")],
        ),
      ),
    );
  }
}
