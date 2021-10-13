import 'package:flutter/material.dart';


class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final List<String> _texts = [
    "InduceSmile.com",
    "Flutter.io",
    "google.com",
    "youtube.com",
    "yahoo.com",
    "gmail.com"
  ];
  late List<bool> _isChecked;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isChecked = List<bool>.filled(_texts.length, false);

  }
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _texts.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Image.asset('assets/road.jpg',width: 100.0,height: 150.0,
            alignment: Alignment.topLeft,fit: BoxFit.contain,),
          value: _isChecked[index],
          onChanged: (val) {
            setState(
                  () {
                _isChecked[index] = val!;
              },
            );
          },
        );
      }, separatorBuilder: (BuildContext context, int index)
    { return const Divider(height: 2.0,thickness: 2.0,); },
    );

  }
}




