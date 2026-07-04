import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/row_column.dart';
import 'package:flutter_application_1/widget/stackWidget.dart';

import 'exercise1.dart';
import 'exercise2.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Widget"),
          centerTitle: true,
          bottom: TabBar(
            tabs:[
              Tab(icon: Icon(Icons.home), text: "Home",),
              Tab(icon: Icon(Icons.person), text: "Search",),
              Tab(icon: Icon(Icons.shopping_cart), text: "Cart",),
              Tab(icon: Icon(Icons.notifications), text: "Notification",)
            ]
          ),
        ),
        body: TabBarView(
            children: [
              // Center(child: Text("Home")),
              // Center(child: Text("Search")),
              // Center(child: Text("Cart")),
              // Center(child: Text("Notification")),
              StackWidget(),
              RowColumnWidget(),
              Exercise2GridView(),
              Exercise1(),

            ]
        ),
      ),
    );
  }


}
