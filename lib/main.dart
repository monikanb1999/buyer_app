import 'package:flutter/material.dart';
import 'first_screen.dart';
import 'second_screen.dart';
import 'ThirdScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('DailyDesignist'),
            actions: [
              //list if widget in appbar actions
              PopupMenuButton(
                color: Colors.white,
                itemBuilder: (context) => [
                  const PopupMenuItem<int>(
                    value: 0,
                    child: Text("Shipping Policy",style: TextStyle(color: Colors.black),),
                  ),
                  const PopupMenuItem<int>(
                    value: 1,
                    child: Text("Blog",style: TextStyle(color: Colors.black),),
                  ),
                  const PopupMenuItem<int>(
                    value: 2,
                    child: Text("Why Dailydesignist(DD)",style: TextStyle(color: Colors.black),),
                  ),
                  const PopupMenuItem<int>(
                    value: 3,
                    child: Text("Media & Events)",style: TextStyle(color: Colors.black),),
                  ),
                  const PopupMenuItem<int>(
                    value: 4,
                    child: Text("FAO",style: TextStyle(color: Colors.black),),
                  ),
                  const PopupMenuItem<int>(
                    value: 5,
                    child: Text("About Us",style: TextStyle(color: Colors.black),),
                  ),
                  const PopupMenuItem<int>(
                    value: 6,
                    child: Text("AfterPay",style: TextStyle(color: Colors.black),),
                  ),
                ],
                onSelected: (item) => {print(item)},
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.person)),
                Tab(icon: Icon(Icons.shopping_cart))
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
            ],
          ),
        ),
      ),
    );
  }
}