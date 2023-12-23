import 'package:flutter/material.dart';

class YoutubeUI extends StatefulWidget {
  const YoutubeUI({super.key});

  @override
  State<YoutubeUI> createState() => _YoutubeUIState();
}

class _YoutubeUIState extends State<YoutubeUI> {
  int _selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            snap: true,
            floating: true,
            backgroundColor: Colors.black,
            centerTitle: false,
            expandedHeight: 44,
            title: const Row(
              children: [
                Icon(
                  Icons.ac_unit,
                  color: Colors.white,
                ),
                Text(
                  'YouTube',
                  style: TextStyle(color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
                Icon(
                  Icons.abc,
                  color: Colors.white,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(30),
              child: SizedBox(
                height: 30,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('전체'),
                      style: const ButtonStyle(),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text('전체'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text('전체'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text('전체'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text('전체'),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(),
                      child: const Text('전체'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // width: 300,
                    child: Image.network(
                      'https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.'
                      'net%2Fimage%2F011%2F2023%2F11%2F01%2F0004256063_001_20231101104709048.jpg&type=sc960_832',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.ac_unit_rounded,
                          color: Colors.white,
                        ),
                        Column(
                          children: [
                            Text(
                              'data',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'data',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.density_medium,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    // width: 300,
                    child: Image.network(
                      'https://search.pstatic.net/common/?src=http%3A%2F%2Fimgnews.naver.'
                      'net%2Fimage%2F011%2F2023%2F11%2F01%2F0004256063_001_20231101104709048.jpg&type=sc960_832',
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.ac_unit_rounded,
                          color: Colors.white,
                        ),
                        Column(
                          children: [
                            Text(
                              'data',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            Text(
                              'data',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.density_medium,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Row(
                children: [
                  Icon(
                    Icons.access_alarm,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Short",
                    style: TextStyle(fontSize: 30, color: Colors.white),
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
            ]),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
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
