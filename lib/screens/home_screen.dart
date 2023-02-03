import 'package:education_app/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String route = 'home';

  final List<String> catNames = [
    "Category",
    "Classes",
    "Free Course",
    "Bookstore",
    "LiveCourse",
    "LeaderBoard",
  ];
  final List<Color> catColors = const [
    Color(0xffffcf2f),
    Color(0xff6fe08d),
    Color(0xff61bdbf),
    Color(0xfffc7f7f),
    Color(0xffc884fb),
    Color(0xff78e667),
  ];
  final List<Icon> catIcons = const [
    Icon(Icons.category, color: Colors.white, size: 30),
    Icon(Icons.video_library, color: Colors.white, size: 30),
    Icon(Icons.assignment, color: Colors.white, size: 30),
    Icon(Icons.store, color: Colors.white, size: 30),
    Icon(Icons.play_circle_fill, color: Colors.white, size: 30),
    Icon(Icons.emoji_events, color: Colors.white, size: 30),
  ];
  final List<String> imgList = [
    'Flutter',
    'React Native',
    'Python',
    'C#',
  ];

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          _CustomAppBar(),
          _CategoriesIcons(
            catNames: catNames,
            catColors: catColors,
            catIcons: catIcons,
          ),
          _CardsCourses(imgList: imgList),
        ],
      ),
      bottomNavigationBar: _NavigationButtons(),
    );
  }
}

class _NavigationButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 32,
      selectedItemColor: const Color(0xff674aef),
      selectedFontSize: 18,
      showUnselectedLabels: true,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.assignment), label: 'Courses'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Wishlist'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
      ],
    );
  }
}

class _CardsCourses extends StatelessWidget {
  const _CardsCourses({
    required this.imgList,
  });

  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Row(
            children: const [
              Text(
                'Courses',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
              ),
              Spacer(),
              Text(
                'See All',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff674aef),
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          GridView.builder(
            itemCount: imgList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio:
                  (MediaQuery.of(context).size.height - 75) / (4 * 240),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    CourseScreen.route,
                    arguments: imgList[index],
                  );
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color(0xfff5f3ff),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          'assets/${imgList[index]}.png',
                          width: 100,
                          height: 100,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        imgList[index],
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        '55 videos',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class _CategoriesIcons extends StatelessWidget {
  const _CategoriesIcons({
    required this.catNames,
    required this.catColors,
    required this.catIcons,
  });

  final List<String> catNames;
  final List<Color> catColors;
  final List<Icon> catIcons;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Column(
        children: [
          GridView.builder(
            itemCount: catNames.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: catColors[index],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: catIcons[index],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    catNames[index],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
      decoration: const BoxDecoration(
        color: Color(0xff674aef),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Icon(Icons.dashboard, size: 30, color: Colors.white),
              Spacer(),
              Icon(Icons.notifications, size: 30, color: Colors.white),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 3, bottom: 15),
            child: Text(
              'Hi, Programmer',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  wordSpacing: 2,
                  color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 20),
            width: MediaQuery.of(context).size.width,
            height: 55,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search here...',
                hintStyle: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
