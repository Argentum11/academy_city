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

class AcademyCityIntroduction extends StatelessWidget {
  const AcademyCityIntroduction({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(left: 16, top: 5, right: 16),
        child: Column(
          children: [
            Text(
                '學園都市由統括理事長亞雷斯塔·克勞利於20世紀後半葉創建，至今已超過50年的歷史。亞雷斯塔以「恢復日本的教育與科技」的名義，讓學園都市在東京發展下去。一開始這裡只是超能力研究機構五行機關所在地，後來隨著實驗者學生不斷增多，學園都市也逐步購買東京西部地塊，最終發展為如今的特大都市。'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                '組成',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
                '學園都市的人口一直被認為至少有 230 萬，其中 80% 的居民是學生，他們參與了超能力開發計劃，試圖成為能力者。儘管學園都市是科學側的最強勢勢力，但就魔法方面保持中立，允許魔法師進入，就算出現人命問題也不在乎。')
          ],
        ),
      ),
    );
  }
}
