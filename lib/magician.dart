import 'package:flutter/material.dart';

class Magic {
  final String name;
  final String description;

  const Magic(this.name, this.description);
}

class Magician {
  final String name;
  final String magicName;
  final String organization;
  final String description;
  final List<Magic> magics;

  const Magician(this.name, this.magicName, this.organization, this.description,
      this.magics);
}

class MagicianTile extends StatelessWidget {
  const MagicianTile({super.key, required this.magician});
  final Magician magician;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "assets/${magician.magicName}_headshot.png",
          width: 100,
          height: 120,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                magician.name,
                style: const TextStyle(fontSize: 30),
              ),
              Text(magician.magicName)
            ],
          ),
        ),
      ],
    );
  }
}

class MagicTile extends StatelessWidget {
  const MagicTile({super.key, required this.magic});
  final Magic magic;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 69, 117, 199),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            magic.name,
            style: const TextStyle(fontSize: 30, color: Colors.orange),
          ),
          Text(
            magic.description,
            style: const TextStyle(
              color: Color.fromARGB(166, 255, 193, 7),
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}

class MagicianDetail extends StatelessWidget {
  const MagicianDetail({super.key, required this.magician});
  final Magician magician;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: Column(
            children: [
              Image.asset(
                "assets/${magician.magicName}_full_body.png",
                width: 380,
              ),
              Text(
                magician.name,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    magician.magicName,
                    style: const TextStyle(color: Colors.purple, fontSize: 20),
                  ),
                  Text(
                    magician.organization,
                    style: const TextStyle(
                        color: Color.fromARGB(198, 204, 132, 24), fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
                child: Text(magician.description,
                    style: const TextStyle(fontSize: 20)),
              ),
              for (Magic magic in magician.magics) MagicTile(magic: magic),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}

class MagicianPage extends StatelessWidget {
  const MagicianPage({super.key});
  final List<Magician> magicians = const [
    Magician(
      '茵蒂克絲',
      'Dedicatus545',
      '必要之惡教會',
      '茵蒂克絲是英國清教所屬修女，語言學習能力優秀，不過對科學領域尤其是關於機械的適應能力幾乎等於零。自幼在英國的聖喬治大聖堂長大，隸屬於英國清教徒第零聖堂區必要之惡教會。魔法名為Dedicatus545，寄託的意義為獻身的羔羊守護強者的知識。因為擁有完全記憶能力，不受原典的污染，背負著沉重的使命，作為存放了十萬三千本魔道書的禁書目錄。為了讓她無法背叛教會，每隔一年就必須接受教會施予的維生措施，以確保大腦容量為理由，每年都要消除一次記憶。一年前來到日本已經失去記憶，被上條當麻解除了項圈的枷鎖後，就寄宿在上條的學生宿舍，還擁有學園都市的來賓臨時ID。',
      [
        Magic('完全記憶能力',
            '無論多麼複雜的事物，只要看過一次就會全部記住不會遺忘，也能夠將記憶妥善區別保存。茵蒂克絲還能做到重拾被一瞬間破壞的、無數碎片般的情報然後在腦中組成真正的圖像文字符串、將每秒30幀的畫面或60幀的動作遊戲一幀一幀記錄下來然後瞬間檢索分析這種事情。'),
        Magic('龍王的嘆息',
            '發動聖喬治聖域產生的漆黑龜裂深處發出的直徑約一公尺的白色光束，被「龍王的嘆息」破壞的部分會變成潔白的發光羽毛，普通人只要輕輕觸碰任何一根羽毛都會對肉體造成極大的傷害。'),
        Magic('聖喬治聖域',
            '發動時茵蒂克絲雙眼中的兩個魔法陣一口氣擴大，形成兩個交迭在一起的直徑兩公尺多的魔法陣，浮在空中的魔法陣會跟著茵蒂克絲的腦袋移動。以兩個魔法陣的接點（靠近眉心的位置）為中心，朝四面八方產生漆黑的龜裂，彷彿一道防壁，阻止任何人靠近茵蒂克絲。'),
      ],
    ),
    Magician(
      '史提爾·馬格努斯',
      'Fortis931',
      '必要之惡教會',
      '史提爾是隸屬於英國清教徒必要之惡教會的魔法師。他年僅十四歲就完全解析現存的二十四個符文文字，更開發了六個具有新力量的符文文字的天才。兩年前與茵蒂克絲相遇並成為了她的監護人，短短一年時間，這個少女早已成為了史提爾堅守一生的信念，在上條當麻拯救了茵蒂克絲之後，主動讓出了伴其身邊的位置，同時在多次與上條接觸及並肩作戰後，受其影響重新確認了身為魔法師的生存之道。個性冷靜，做事果斷不猶豫，能夠將工作與個人感情區分開來，嚴格執行任務，對待敵人冷酷無情，但也有著自己的原則，基本上他是不會出手攻擊與魔法世界無緣無故的人。為了守護自己珍惜之人可以毫不猶豫衝入敵陣。不擅長團體行動，害怕自己的火焰魔法波及同伴和束縛自己是一部分，性格上的缺陷也讓他更喜歡單獨作戰。吸菸是史提爾的嗜好之一，曾稱「沒有尼古丁和焦油的世界是地獄」，習慣性地咬著香菸濾嘴，其也能用來配合魔法進行點火。',
      [
        Magic('符文魔法',
            '盧恩文字本身就蘊含著魔力。符文魔法必須先刻上符文刻印才能發動，史提爾完全解析現存的二十四個符文文字，更開發了六個具有新力量的符文文字。他會透過事先佈置符文卡片來讓自己使用符文魔法。擅長火元素的魔法，為此將頭髮染成了代表火元素的紅色以增幅術式。'),
        Magic('獵殺魔女之王',
            '生成巨大火焰球體，化作溫度超過攝氏三千度，手持兩公尺巨大十字架的火焰巨人。獵殺魔女之王會因符文卡數量多寡，而大幅改變其強弱程度。火焰巨人本身有著自動追蹤敵人將其殲滅的特性。但只要超出佈置的符文結界之外，火焰巨人就無能為力。'),
      ], /*https://toaru.huijiwiki.com/wiki/%E5%8F%B2%E6%8F%90%E5%B0%94%C2%B7%E9%A9%AC%E6%A0%BC%E5%8A%AA%E6%96%AF#/media/%E6%96%87%E4%BB%B6:Image-%E5%8F%B2%E6%8F%90%E5%B0%94-%E5%8A%A8%E7%94%BB%E8%AE%BE%E5%AE%9A.jpg
      https://toaru.huijiwiki.com/wiki/%E5%8F%B2%E6%8F%90%E5%B0%94%C2%B7%E9%A9%AC%E6%A0%BC%E5%8A%AA%E6%96%AF#/media/%E6%96%87%E4%BB%B6:ToaruIF-Stiyl_Magnus.png */
    ),
    Magician(
      '神裂火織',
      'Salvare000',
      '必要之惡教會、天草式十字淒教',
      '史提爾是隸屬於英國清教徒必要之惡教會的魔法師。他年僅十四歲就完全解析現存的二十四個符文文字，更開發了六個具有新力量的符文文字的天才。兩年前與茵蒂克絲相遇並成為了她的監護人，短短一年時間，這個少女早已成為了史提爾堅守一生的信念，在上條當麻拯救了茵蒂克絲之後，主動讓出了伴其身邊的位置，同時在多次與上條接觸及並肩作戰後，受其影響重新確認了身為魔法師的生存之道。個性冷靜，做事果斷不猶豫，能夠將工作與個人感情區分開來，嚴格執行任務，對待敵人冷酷無情，但也有著自己的原則，基本上他是不會出手攻擊與魔法世界無緣無故的人。為了守護自己珍惜之人可以毫不猶豫衝入敵陣。不擅長團體行動，害怕自己的火焰魔法波及同伴和束縛自己是一部分，性格上的缺陷也讓他更喜歡單獨作戰。吸菸是史提爾的嗜好之一，曾稱「沒有尼古丁和焦油的世界是地獄」，習慣性地咬著香菸濾嘴，其也能用來配合魔法進行點火。',
      [
        Magic('七閃',
            '神裂操縱七根鋼絲所發出的斬擊，其速度之快可以一瞬間殺人七次，又被稱之為「瞬殺」，鋼絲平時收納在日本刀的刀鞘裡，攻擊時將刀從刀鞘中稍微拔出，然後又推回去。這個動作，只是為了掩飾操縱鋼絲的手。'),
        Magic('裂神者',
            '神裂運用獨特的呼吸法在體內精練魔力，就可以讓自己化身為「裂神者」。化身為「裂神者」的神裂，可以在一定時間內獲得超越凡人領域的能力。血管、肌肉、神經、內臟、骨骼都在術式的影響下獲得了「殺神」的能力。'),
        Magic('唯閃',
            '七天七刀一擊必殺的拔刀術。對特定宗教迂迴使出其他教義的術式攻擊。十字教的術式不行的話就用佛教術式，佛教術式不行的話就用神道術式，神道術式不行的話就用十字教術式，像這樣藉由適當互補彼此的弱點，發揮出完全破壞力的獨一無二攻擊式是「唯閃」。'),
      ], /* https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSZgexd-5joyzuKPn5ZU9KX_SbeTN7815vTm_Hi-4f6Q&s
      https://neoapo.com/images/character/1804/d9a5ee67b9373a5315875f69d34aac46.gif */
    )
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: magicians.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MagicianDetail(magician: magicians[index])));
            },
            child: MagicianTile(magician: magicians[index]),
          );
        });
  }
}

//https://toaru.huijiwiki.com/wiki/%E5%9C%9F%E5%BE%A1%E9%97%A8%E5%85%83%E6%98%A5
//https://toaru.huijiwiki.com/wiki/%E7%A5%9E%E8%A3%82%E7%81%AB%E7%BB%87
/*https://toaru.huijiwiki.com/wiki/%E5%89%8D%E6%96%B9%E4%B9%8B%E9%A3%8E
https://toaru.huijiwiki.com/wiki/%E5%90%8E%E6%96%B9%E4%B9%8B%E6%B0%B4
https://toaru.huijiwiki.com/wiki/%E5%8F%B3%E6%96%B9%E4%B9%8B%E7%81%AB
https://toaru.huijiwiki.com/wiki/%E5%B7%A6%E6%96%B9%E4%B9%8B%E5%9C%B0
https://toaru.huijiwiki.com/wiki/%E4%BA%9A%E9%9B%B7%E6%96%AF%E5%A1%94%C2%B7%E5%85%8B%E5%8A%B3%E5%88%A9
*/