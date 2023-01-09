import 'package:first_flutter_project/db.dart';
import 'package:flutter/material.dart';

class BlogUiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Text(
              'Category',
              style: TextStyle(color: Colors.black),
            ),
            leading: Icon(
              Icons.category,
              color: Colors.black,
            ),
            actions: [
              Icon(
                Icons.search,
                color: Colors.black,
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child: TabBar(
                  labelPadding: EdgeInsets.all(10),
                  unselectedLabelColor: Colors.cyan.withOpacity(.5),
                  labelColor: Colors.purple,
                  isScrollable: true,
                  tabs: [
                    Text('For You'),
                    Text('Design'),
                    Text('Beauty'),
                    Text('Education'),
                    Text('Entertaiment'),
                  ]),
            )),
        body: TabBarView(
          children: [
            ListView.separated(
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Bloglist(
                      index: index,
                    ),
                  );
                },
                separatorBuilder: (context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                },
                itemCount: blogData.length),
            Text('tab2'),
            Text('tab3'),
            Text('tab4'),
            Text('tab5'),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.folder_copy), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
    );
  }
}

class Bloglist extends StatelessWidget {
  final int index;

  const Bloglist({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var user = blogData[index];
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              height: 90,
              width: 90,
              color: Colors.cyan,
            ),
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/movie/movie1.jfif'),
                                fit: BoxFit.fill)),
                        height: 100,
                        width: 100,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              user['text']!,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w900),
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Text.rich(
                              TextSpan(children: [
                                WidgetSpan(
                                    child: CircleAvatar(
                                  radius: 12,
                                )),
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 5,
                                )),
                                TextSpan(text: user['name']),
                                WidgetSpan(
                                    child: SizedBox(
                                  width: 20,
                                )),
                                TextSpan(
                                  text: '4 min read',
                                )
                              ]),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
