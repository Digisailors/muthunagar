import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muthunagar/constants/controller.dart';
import 'package:muthunagar/constants/text_widget.dart';
import 'package:muthunagar/constants/widgets/news_widget.dart';


class News extends StatefulWidget {
  const News({Key key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News>  with SingleTickerProviderStateMixin{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    newsController.controller = TabController(length: 2, vsync: this);
    newsController.controller.index = celebrationController.selectedIndex.value;
    newsController.controller.addListener(() {
      setState(() {
        newsController.selectedIndex.value =
            newsController.controller.index;
      });
      print("celebrationController Selected Index: " +
          newsController.selectedIndex.toString());
    });
  }



  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 10,
              child: ListTile(title: customText(
                  Colors.black, 'Search', height * 0.03, FontWeight.bold),
                trailing: Icon(Icons.search, color: Colors.black,),),
            ),
          ),
          PreferredSize(
              child: TabBar(
                  controller: newsController.controller,
                  physics: BouncingScrollPhysics(),
                  isScrollable: true,
                  unselectedLabelColor: Colors.black.withOpacity(0.3),
                  indicatorColor: Colors.black,
                  tabs: [
                    Card(
                      color: newsController.selectedIndex == 0
                          ? Color(0xFF178DBC)
                          : Colors.white,
                      child: Tab(
                        child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: customText(newsController
                                .selectedIndex == 0
                                ? Colors.white
                                : Colors.black.withOpacity(0.3),
                                'NEWS', 15, newsController
                                    .selectedIndex == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal)),
                      ),
                    ),
                    Card(
                      color: newsController.selectedIndex == 1
                          ? Color(0xFF178DBC)
                          : Colors.white,
                      child: Tab(
                        child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20),
                            child: customText(newsController
                                .selectedIndex == 1
                                ? Colors.white
                                : Colors.black.withOpacity(0.3),
                                'EMPLOYMENT', 15, newsController
                                    .selectedIndex == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal)),
                      ),),
                  ]), preferredSize: Size.fromHeight(30)),
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: IconButton(onPressed: () {},
                  icon: Icon(Icons.sort_sharp, color: Color(0xFF178DBC),
                    size: size.height * 0.05,)),
            ),
          ),
          Expanded(
            child: TabBarView(
                controller: newsController.controller,
                children: [
                  NewsTabBar(),
                  ChooseEmployment(),
                ]),
          ),
        ],),
    );
  }
}
