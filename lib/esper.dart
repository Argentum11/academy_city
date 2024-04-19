import 'package:flutter/material.dart';

class Esper {
  final String name;
  final int level;
  final String? codeName; // Making codeName nullable
  final String imageNamePrefix;
  final String description;

  const Esper(this.name, this.level, this.imageNamePrefix, this.description,
      {this.codeName});
}

class EsperTile extends StatelessWidget {
  const EsperTile({super.key, required this.esper});
  final Esper esper;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          "assets/${esper.imageNamePrefix}_headshot.png",
          width: 100,
          height: 120,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                esper.name,
                style: const TextStyle(fontSize: 30),
              ),
              if (esper.codeName != null) Text(esper.codeName!)
            ],
          ),
        )
      ]),
    );
  }
}

class EsperPage extends StatelessWidget {
  const EsperPage({super.key});
  final List<Esper> espers = const [
    Esper("一方通行???", 5, "accelerator",
        "學園都市7名Level 5能力者的第一位，學園都市新任統括理事會理事長。從小就生活在學園都市，本名不詳，性別不明。通常以其超能力的名稱「一方通行」作為稱呼。一方通行，是一方通行自身在開發後覺醒並由本人命名的超能力。此能力可以操縱皮膚直接觸的動量及物體的方向。",
        codeName: "一方通行"),
    Esper("垣根帝督", 5, "darkmatter",
        "學園都市七名Level 5能力者中的第二位，暗部組織 SCHOOL 的首領。能力是未元物質，他所產生的「未元物質」是這個世上不存在的物質，不是「還沒發現」或是「理論上應該存在」，是真正不存在的東西，所以不適用於既有物理法則。光波和電子波只要透過他白色翅膀上的細小空隙，就會改變性質、扭曲成不可能存在的向量，並依照其獨自的法則行動。",
        codeName: "未元物質"),
      Esper("御坂美琴", 5, "railgun",
        "學園都市七名Level 5能力者中的第三位，常盤台中學二年級學生。能力是電擊使，可以產生及控制電力、磁力及電磁波。",
        codeName: "超雷磁炮")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: espers.length,
        itemBuilder: (context, index) {
          return EsperTile(esper: espers[index]);
        });
  }
}
