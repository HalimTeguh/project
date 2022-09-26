import 'package:belajar_yuk/constants/r.dart';
import 'package:belajar_yuk/view/main/Discussion/chat_page.dart';
import 'package:belajar_yuk/view/main/latihan_soal/home_page.dart';
import 'package:belajar_yuk/view/main/profile/profile_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  static String route = "main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pc = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Image.asset(R.assets.icDiscuss, width: 40, ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatPage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildButtonNavigation(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pc,
        children: [
          HomePage(),
          ProfilePage(),
        ],
      ),
    );
  }

  Container _buildButtonNavigation() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Colors.black.withOpacity(0.06))
      ]),
      child: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 9.0),
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        index = 0;
                        _pc.animateToPage(index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceInOut);
                        setState(() {});
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            R.assets.icHome,
                            height: 25,
                          ),
                          SizedBox(
                            height: 2.3,
                          ),
                          Text("Home")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  child: InkWell(
                    child: Column(
                      children: [
                        Opacity(
                          opacity: 0,
                          child: Image.asset(
                            R.assets.icHome,
                            height: 25,
                          ),
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Text("Diskusi")
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 9.0),
                  child: Material(
                    child: InkWell(
                      onTap: () {
                        index = 1;
                        _pc.animateToPage(index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                        setState(() {});
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            R.assets.icProfile,
                            height: 25,
                          ),
                          SizedBox(
                            height: 2.3,
                          ),
                          Text("Profile")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
