import 'package:flutter/material.dart';

class Mortal {
  final String name;
  final String imageNamePrefix;
  final String description;

  const Mortal(
    this.name,
    this.imageNamePrefix,
    this.description,
  );
}

class MortalTile extends StatelessWidget {
  const MortalTile({super.key, required this.mortal});
  final Mortal mortal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/${mortal.imageNamePrefix}_headshot.png",
          width: 100,
          height: 120,
        ),
        Text(
          mortal.name,
          style: TextStyle(color: Theme.of(context).primaryColor),
        )
      ],
    );
  }
}

class MortalDetail extends StatelessWidget {
  const MortalDetail({super.key, required this.mortal});
  final Mortal mortal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/${mortal.imageNamePrefix}_full_body.png'),
            Text(
              mortal.name,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5,right: 5, top: 10),
              child: Text(mortal.description,style: const TextStyle(fontSize: 20),),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

class MortalGrids extends StatelessWidget {
  const MortalGrids({super.key});
  final List<Mortal> mortals = const [
    Mortal("上條當麻", "touma",
        "上條當麻是一名居住在學園都市的少年，初看是平凡無奇的高中生，但因右手中寄宿了能夠將任何超自然力量無效化的「幻想殺手 Imagine Breaker」而特別。在就讀學園都市之前的某個時間，上條當麻曾被負債的人追趕，並用菜刀砍傷，事後又被電視台擅自公佈了照片，並把他形容得像妖怪一樣。最後，他的父親上條刀夜決定將他送至「不相信迷信的科學之都」學園都市就讀。上條當麻從小學開始就一直住在學園都市。他曾給父親寫信，告訴他「不幸」仍影響著周圍的人對他的看法。在此期間，上條當麻發現自己雖然是無能力者Level 0，但他的右手——也就是「幻想殺手」——可以消除超自然能力。這件事後來被視為一項重要秘密，除了他本人外，在學園都市內只有極少數人知情。日常學習中，由於上條當麻沒有超能力，拿不出必要的能力開發成績，因此需要花很多時間補課——不過這並不意味著他的智力不夠出眾，相反，在戰鬥中的一系列出色表現足以證明上條當麻的思考能力比一般人更為敏銳。"),
    Mortal('土禦門舞夏', 'maika',
        '為了方便土禦門元春偽造身份潛入學園都市而被收養為義妹。 在土禦門元春間諜的身份敗露後與其生活在凌亂的學生宿舍，在即將就讀中學時選擇了培養女僕的繚亂家政女子學校，並且由於成績優秀，舞夏必須到各式各樣的地方進行「實地研習」， 甚至在繚亂家政學校只有精英中的精英才能去的常盤台中學女子宿舍以實習的名義工作。'),
    /*https://toaru-if.com/wp-content/uploads/2020/09/img_3298.jpg
    https://toaru.huijiwiki.com/wiki/%E5%9C%9F%E5%BE%A1%E9%97%A8%E8%88%9E%E5%A4%8F#/media/%E6%96%87%E4%BB%B6:ToaruIF-Tsuchimikado_Maika.png */

    Mortal('濱面仕上', 'hamazura',
        '濱面仕上是無能力者，現為新生ITEM的正式會員。因為懂得擺弄重型建設機器、盜取ATM機而被武裝無能力集團Skill-Out挖去。駒場利德被肅清後，短暫地擔任過武裝無能力集團Skill-Out的領袖。但之後因為狙殺禦坂美鈴的行動失敗，組織受到毀滅性的損害，不得已被派到暗部組織ITEM的下層組織從事打雜的低等工作，專門擔任雜役與司機。暗部大戰中，從麥野沉利的手中拯救了瀧壺理後，並在不久後確認戀人關係。瀧壺出院的當晚，一路躲逃學園都市的追兵並且再次打敗麥野沉利。在第三次世界大戰中和麥野和解。是第二個完成「以無能力者之身打敗超能力者Level 5」這種不可能任務的人。第三次世界大戰之後，回到學園都市，和剩下的成員重組新生ITEM。濱面仕上沒有任何明顯的力量，因此當強大的能力者出現時，他不會選擇正面交鋒，而會先尋找安全地帶；一旦危險和來歷不明的神秘現象扯上關係，只怕選項會變得更少。為了保護無論如何都不想失去的人，為了從可說是不合理的情況中救出夥伴，濱面偶爾會和擁有超常力量的人交戰，但並不表示那就是他最擅長的領域。基本上濱面不管是科學還是魔法都不突出，他不過是個不小心就會喪命，「隨處可見」的小配角。'),
    /*https://p3-sdbk2-media.byteimg.com/tos-cn-i-xv4ileqgde/51eb8247d00c444197efaf6ef239c40d~tplv-xv4ileqgde-resize-w:750.image
    https://toaru.huijiwiki.com/wiki/%E6%BB%A8%E9%9D%A2%E4%BB%95%E4%B8%8A#/media/%E6%96%87%E4%BB%B6:%E6%BB%A8%E9%9D%A2%E4%BB%95%E4%B8%8A-%E9%AD%94%E7%A6%81%E8%AE%BE%E5%AE%9A.jpg*/
    Mortal('月詠小萌', 'komoe',
        '月詠小萌是某高中一年級7班的班主任，教授化學。除了她幼稚的外表和她的風度之外，還是一位非常稱職的老師，她關心她的學生，也是少數幾個在記憶喪失之前就足夠了解上條當麻的人物之一。專長為發火能力，也是社會心理學、環境心理學、行為心理學、交通心理學等心理學專家。她所擔任的班級中有上條當麻、藍髮耳環、土禦門元春、吹寄制理、姬神秋沙等學生。儘管月詠小萌是一名教師，但卻因為自身外表太過嬌小，與她自身實際年齡極為不符而被認為是「學園都市七大不可思議之一」。身為某高中的化學老師，對待學生十分和善耐心，非常樂於開導、鼓勵學生。 即便遇到像上條當麻這樣成績差的學生，她也會耐心教導。 她也非常喜歡上條當麻這樣的學生，對他照顧有加，很在意當麻對她的感受。 雖然為人溫柔和氣，但在學生上課不認真聽課時也會表現出她嚴厲的一面，例如讓學生玩透視遊戲和“哥倫布的蛋”，不成功就不讓放學。 十分願意幫助受難的人。 被神裂火織所傷的茵蒂克絲被上條當麻送到小萌老師家中時，在理清事情原委後，她願意將受傷的茵蒂克絲留下，並在茵蒂克絲的指導 下利用治療術式挽救了她的生命，並且時刻關注著她身體的恢復情況。 最討厭別人提到「小」這個字眼，但又喜歡別人稱讚她可愛。 不喜歡別人開她身體上的玩笑。 茵蒂克絲曾吐槽小萌老師的內褲胸部太緊，讓小萌老師大呼「太小看老師了！」上條當麻看到開車來到學校的小萌老師，不禁懷疑她的腳是否能夠到 剎車，但被小萌老師發覺並訓斥了當麻。 熱心於教育，當失去教導他人的機會時，會感到極度沮喪，曾經試圖讓茵蒂克絲學習拿筷子的方法，但茵蒂克絲狼吞虎嚥地瞬間吃完了堆積如山的食物。 對於教學工作極為負責，以依照各個學生正確的數據做出有效教材而聞名。 由於精通心理學，她會定期在吸引蹺家少女停留的場所巡邏，這已然成為了一種興趣。 喜好吸煙，一天的吸煙量比黃泉川愛穗要多五倍，被黃泉川稱為“堆積如山的人體煙灰缸”。 受史提爾·馬格努斯的影響，還有了用嘴角叼著煙上上下下地晃動的習慣。'),
    /* https://huiji-thumb.huijistatic.com/toaru/uploads/thumb/8/88/ToaruIF-Tsukuyomi_Komoe.png/167px-ToaruIF-Tsukuyomi_Komoe.png?20200702115345 */
    Mortal('黃泉川愛穗', 'yomikawa',
        '黃泉川愛穗是某高中的體育老師，同時也是學園都市的警備員。 過去曾在暗部活動過。 以「不以武器面對學生」為原則，為了學生會毫不猶豫的拿起武器。 作為警備員，她接受了基本的戰鬥訓練，能夠制服手無寸鐵的暴徒，並能夠使用各種槍支。 她也知道如何操作驅動鎧。 但是，她最大的特點是能夠用「美好的結局代替悲劇」，並使用盾牌或其他物品來擊退猖獗的逃脫者。 家住在第七學區的高級公寓Family Side二棟13樓。 房子的結構式四個房間、一個客廳、一個餐廳、一個廚房。 雖然本身價格昂貴，但因為大樓本身兼顧了試驗的特性，所以參與相關設計的大學也會贊助一些款項，所以黃泉川能付得起房租。 家裡的整體環境非常不錯，是自己經常整理房間的結果，有時候太誇張甚至找不到房間的鑰匙。 會抽煙，運動服口袋裡面還會裝手提煙灰缸，不太會欣賞不同香煙之間微妙的差別。'),
    /*https://truth.bahamut.com.tw/s01/201407/ab8214f4b670da586e95d1588e58bbf1.PNG
    https://i.imgur.com/nhDknIS.png */
    Mortal('鐵裝綴裡', 'tessou', '鐵裝綴裡是第七學區某的老師，警員第七十三支部所屬警備員，曾經經常和黃泉川愛穗搭檔行動。 身為警備員，能夠操作製式槍械與防爆盾牌等重型裝備。 但受制於膽怯的天性，開槍時會忍不住閉上雙眼。 曾經個性膽小怯懦，常常手忙腳亂，常常表現出不知所措的狀況，但卻很有責任感。 在經歷「手銬行動」的風波後，鐵裝綴裡的思想似乎因為收到極大的刺激而變得偏激。 為達成自認為可以保護多數學生安全的目的，她不惜主動插手與攪局學園都市內部陰暗勢力。 她挑唆那些被她定義為「惡」的人進行內部的自相殘殺，來形成某種意義上的平衡與學園都市內部的自我淨化，為此可以不擇手段到將任何與「惡人」有關聯者 都視為自己的棋子，加以滲透或傷害。 但黃泉川愛穗點出此時的鐵裝所犯下的錯誤，即不光追求簡單粗暴又背離人倫的叢林法則，更是徹底否定了那些誤入歧途的人改過自新的可能性。'),
    /*https://img.faloo.com/NovelNode/0x0/1/1285/1285795.gif
    https://lain.bgm.tv/pic/crt/l/b7/b7/9664_crt_anidb.jpg */
    Mortal('冥土追魂', 'heavenCanceller', '責任感很強的醫生。在8月31日後一方通行頭部被天井亞雄用手槍擊中，腦部前頭葉受損，失去了獨立的演算能力和語言能力，為此冥土追魂為他發明了脖子上黑色項圈中的電極，電極的功能是改變一方通行的腦波波長，使其和禦坂網路相符並轉換為電氣訊號，並有限制地連接禦坂網路，藉禦坂網絡代為進行演算能力。亞雷斯塔因為刺客的追殺遍體鱗傷，被冥土追魂所救，製造亞雷斯塔維生裝置（直徑四米，全長十米，以鋼化玻璃製成，充滿了一种红色的弱鹼性培養液的維生裝置。亞雷斯塔一直以來都是頭下腳上地懸浮其中）')
    /*https://pic.baike.soso.com/ugc/baikepic2/0/20230312183357-446248179_jpeg_414_320_89811.jpg/0_90
    https://lain.bgm.tv/pic/crt/l/87/91/66609_crt_b2gEu.jpg */
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisCount: 2,
      children: [
        for (var mortall in mortals)
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MortalDetail(mortal: mortall)));
              },
              child: MortalTile(mortal: mortall))
      ],
    );
  }
}
