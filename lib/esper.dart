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

class EsperDetail extends StatelessWidget {
  const EsperDetail({super.key, required this.esper});
  final Esper esper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/${esper.imageNamePrefix}_full_body.png",
            width: 380,
          ),
          Text(
            esper.name,
            style: const TextStyle(fontSize: 40),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Text(
              esper.description,
              style: const TextStyle(fontSize: 20),
            ),
          ),const SizedBox(height: 30,)
        ]),
      ),
    );
  }
}

class EsperPage extends StatelessWidget {
  const EsperPage({super.key});
  final List<Esper> espers = const [
    Esper("一方通行???", 5, "accelerator",
        "學園都市7名Level 5 能力者的第一位，學園都市新任統括理事會理事長。從小就生活在學園都市，本名不詳，性別不明，通常以其超能力的名稱「一方通行」作為稱呼。一方通行，是一方通行自身在開發後覺醒並由本人命名的超能力，此能力可以操縱皮膚直接觸的動量及物體的方向。",
        codeName: "一方通行"),
    Esper("垣根帝督", 5, "darkmatter",
        "學園都市七名Level 5 能力者中的第二位，暗部組織 SCHOOL 的首領。能力是未元物質，他所產生的「未元物質」是這個世上不存在的物質，不是「還沒發現」或是「理論上應該存在」，是真正不存在的東西，所以不適用於既有物理法則。光波和電子波只要透過他白色翅膀上的細小空隙，就會改變性質、扭曲成不可能存在的向量，並依照其獨自的法則行動。",
        codeName: "未元物質"),
    Esper("御坂美琴", 5, "railgun",
        "學園都市七名Level 5 能力者中的第三位，常盤台中學二年級學生。能力是電擊使，可以產生及控制電力、磁力及電磁波。",
        codeName: "超雷磁炮"),//https://i.pinimg.com/736x/5c/17/f5/5c17f5e668d4144bb6a19da46568c646.jpg
    Esper("麥野沉利", 5, "meltdowner",
        "學園都市七名Level 5 能力者中的第四位，為暗部組織 ITEM 的領導人物。能力為原子崩壞，本質是粒機波形高速炮，麥野透過強制操縱介於波與粒子之間、狀況曖昧的電子，透過發射這種電子射線作為攻擊手段，威力極為強大；也可以用做護盾來防禦。麥野還能像火箭引擎一樣發射來彈開自己，實現高速移動和閃避。發動該能力時，看起來很像從半空中生成若干純白色的發光球體，並從中迸射出雷射光束。",
        codeName:
            "原子崩壞"), /*https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.newton.com.tw%2Fwiki%2F%25E9%25BA%25A5%25E9%2587%258E%25E6%25B2%2588%25E5%2588%25A9&psig=AOvVaw3LFP0h4fVEFCdzUNYSi9QU&ust=1713709169008000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCMDfv6n-0IUDFQAAAAAdAAAAABAP
    https://www.newton.com.tw/img/2/18c/nBnaugTNiNDNmVGMiFjMkVWMzcTO4IjN0M2Y3Y2M0QGO4YDZ1QjM5MDMkZ2LtVGdp9yYpB3LltWahJ2Lt92YuUHZpFmYuMmczdWbp9yL6MHc0RHa.jpg */
    Esper("食蜂操祈", 5, "mentalout",
        "學園都市七名Level 5 能力者中的第五位，常盤台中學學生。是學園都市最強的精神系能力者。諸如記憶讀心、與遠距離對象念話、思考消除、意志增幅、思考重現、感情移植等等……僅憑一人之力即可一手包辦所有精神現象，在心靈與精神方面是如同瑞士軍刀般的萬能超能力者。",
        codeName:
            "心理掌握"), //https://moegirl.uk/images/f/f3/Sm.png
    Esper("削板軍霸", 5, "attackcrash",
        "學園都市七名Level 5 能力者中的第七位。有別於學園都市經過超能力開發計畫生成的能力者，削板軍霸是擁有與生俱來的強大才能的「原石」(天生就擁有超自然能力的能力者)。念動砲彈是削板軍霸的絕技，可以以擊毀很大的碎石，能夠擊中10米外的目標。",
        codeName:
            "念動砲彈"), /*https://truth.bahamut.com.tw/s01/201912/723b6398905941b1f1b41920fdc7f790.JPG
            https://lain.bgm.tv/pic/crt/l/92/7e/74715_crt_Ga0A7.jpg?r=1578722199*/
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: espers.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EsperDetail(esper: espers[index])));
            },
            child: EsperTile(esper: espers[index]),
          );
        });
  }
}
