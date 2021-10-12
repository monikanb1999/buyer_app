import 'package:flutter/material.dart';


class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
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
    return ListView.builder(
      itemCount: _texts.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(_texts[index]),
          value: _isChecked[index],
          onChanged: (val) {
            setState(
                  () {
                _isChecked[index] = val!;
              },
            );
          },
        );
      },
    );
  }
}



