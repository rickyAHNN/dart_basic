import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:percent_indicator/percent_indicator.dart';

class StarbucksUi extends StatefulWidget {
  const StarbucksUi({super.key});

  @override
  State<StarbucksUi> createState() => _StarbucksUiState();
}

class _StarbucksUiState extends State<StarbucksUi> {
  int _selectindex = 0;
  bool isScrolled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: ,
      // appBar: AppBar(
      //   leading: const Text(''),
      // ),
      body: SafeArea(
        child: NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            if (notification.direction == ScrollDirection.forward) {
              setState(() {
                isScrolled = true;
              });
            } else if (notification.direction == ScrollDirection.reverse) {
              setState(() {
                isScrolled = false;
              });
            }
            return isScrolled;
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Text('sdffd'),
              ),
              SliverAppBar(
                flexibleSpace: FlexibleSpaceBar(
                  titlePadding: const EdgeInsets.only(
                    bottom: 20,
                  ),
                  background: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/starbucks_01.png',
                    ),
                  ),
                  title: Container(
                    width: double.infinity,
                    height: 100,
                    child: Column(
                      children: [
                        // SizedBox(
                        //   width: double.infinity,
                        //   height: 200,
                        //   child: ClipRRect(
                        //     borderRadius: BorderRadius.circular(10),
                        //     child: Image.asset(
                        //       'assets/starbucks_01.png',
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '1 \u{2B50}until Green Level',
                                      style: TextStyle(
                                        color: Colors.grey[500],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    LinearPercentIndicator(
                                        progressColor: Colors.grey[600],
                                        backgroundColor: Colors.grey[300],
                                        percent: 0.75,
                                        width: 200.0,
                                        animation: true,
                                        animationDuration: 100,
                                        lineHeight: 15.0,
                                        center: const Text(
                                          "4",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10),
                                        ),
                                        barRadius: const Radius.circular(10))
                                  ],
                                ),
                                const Spacer(),
                                const Row(
                                  children: [
                                    Text(
                                      '4 ',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
                                    ),
                                    Text('/ 5\u{2B50}')
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: const PreferredSize(
                  preferredSize: Size.fromHeight(50),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.local_activity,
                            size: 30,
                          ),
                          Text(
                            "What's New",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(
                            Icons.pageview_sharp,
                            size: 30,
                          ),
                          Text(
                            "Coupon",
                            style: TextStyle(fontSize: 20),
                          ),
                          Spacer(),
                          Icon(
                            Icons.beach_access,
                            size: 30,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                pinned: true,
                floating: true,
                expandedHeight: 250,

                // actions: [
                //
                // ],
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // width: 300,
                    child: Image.network(
                      'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.'
                      'net%2FMjAyMzEyMTRfODYg%2FMDAxNzAyNTI4Mjg1OTk0.mkv18yRkwTui6RBC9QDD6ZjYY31KIm7F5ARNBONwDxUg.'
                      'ccxe5fE68aCOxsZfYx_Qa9AiFlvvU7lmNn6UXV_30J4g.JPEG.benjamin3%2F%25BD%25BA%25C5%25B8%25B9%25F7%25BD%25BA_.'
                      'jpg&type=sc960_832',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // width: 300,
                    child: Image.network(
                      'https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.'
                      'net%2Fimage%2F011%2F2023%2F11%2F01%2F0004256063_001_20231101104709048.jpg&type=sc960_832',
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text(
                      "What's New",
                      style: TextStyle(fontSize: 30),
                    ),
                    const Spacer(),
                    TextButton(
                      autofocus: true,
                      onPressed: () {},
                      child: const Text(
                        'see all',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  constraints:
                      const BoxConstraints.tightFor(width: 200, height: 300),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          constraints: const BoxConstraints.tightFor(
                              width: 250, height: 150),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // width: 300,
                                child: Image.network(
                                  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjVfMTUw%2FMDAxNjg0OTg5NzgxMDk3._pbLWY3_hEYtjmg6AMndGMmj4hs8zqcGyMrbajDlMgEg.aY9Tn23xngMhfYht1vH8ruARQTbWZXrpyqspvCHzWTcg.JPEG.kiwontech%2FNFT%25BD%25BA%25C5%25B8%25B9%25F7%25BD%25BA_%25281%2529.jpg&type=sc960_832',
                                  height: 220,
                                ),
                              ),
                              const Text(
                                '스타벅스 앱 보안강화',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '안전한 서비스 이ㅣ용을 위하여 Pay 탭 이용,'
                                '다중 기기/해외 로그인 시 인증 절차 적용',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                      Container(
                          constraints: const BoxConstraints.tightFor(
                              width: 250, height: 150),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // width: 300,
                                child: Image.network(
                                  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjVfMTUw%2FMDAxNjg0OTg5NzgxMDk3._pbLWY3_hEYtjmg6AMndGMmj4hs8zqcGyMrbajDlMgEg.aY9Tn23xngMhfYht1vH8ruARQTbWZXrpyqspvCHzWTcg.JPEG.kiwontech%2FNFT%25BD%25BA%25C5%25B8%25B9%25F7%25BD%25BA_%25281%2529.jpg&type=sc960_832',
                                  height: 220,
                                ),
                              ),
                              const Text(
                                '스타벅스 앱 보안강화',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '안전한 서비스 이ㅣ용을 위하여 Pay 탭 이용,'
                                '다중 기기/해외 로그인 시 인증 절차 적용',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                      Container(
                          constraints: const BoxConstraints.tightFor(
                              width: 250, height: 150),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // width: 300,
                                child: Image.network(
                                  'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMzA1MjVfMTUw%2FMDAxNjg0OTg5NzgxMDk3._pbLWY3_hEYtjmg6AMndGMmj4hs8zqcGyMrbajDlMgEg.aY9Tn23xngMhfYht1vH8ruARQTbWZXrpyqspvCHzWTcg.JPEG.kiwontech%2FNFT%25BD%25BA%25C5%25B8%25B9%25F7%25BD%25BA_%25281%2529.jpg&type=sc960_832',
                                  height: 220,
                                ),
                              ),
                              const Text(
                                '스타벅스 앱 보안강화',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                '안전한 서비스 이ㅣ용을 위하여 Pay 탭 이용,'
                                '다중 기기/해외 로그인 시 인증 절차 적용',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // width: 300,
                    child: Image.network(
                      'https://search.pstatic.net/sunny/?src=https%3A%2F%2Fthumb.mtstarnews.com%2F21%2F2022%2F06%2F2022061310382686850_1.jpg%2Fdims%2Fresize%2F1200%2Fcrop%2F1200x630%21%2Foptimize&type=sc960_832',
                      height: 220,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // width: 300,
                    child: Image.network(
                      'https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA2MTVfMTU0%2FMDAxNjU1MjY0ODYxNjQ0.zicuEZHuoluZAaPspJ1LV34vaaUpK2zAEboaBKMKShcg.3OnBe50YB4ezzd3xoYf8i5IbmAu6MeqXMkAZ8wUD-Wwg.PNG.kksjh2%2F20220615_091953.png&type=sc960_832',
                      height: 220,
                    ),
                  ),
                ),
              ]))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.green[800],
// shape: CircleBorder(),
        onPressed: () {},
        isExtended: isScrolled,
        icon: const Icon(Icons.motorcycle_rounded, color: Colors.white),
        label: const Text(
          'Delivers',
          style: TextStyle(color: Colors.white),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black12,
        showSelectedLabels: true,
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.payments), label: 'Pay'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_drink), label: 'Order'),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all), label: 'Other'),
        ],
        currentIndex: _selectindex,
        onTap: (index) {
          setState(() {
            _selectindex = index;
          });
        },
      ),
    );
  }
}
