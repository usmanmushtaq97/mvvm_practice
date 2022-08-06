import 'package:flutter/material.dart';
class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
 late bool isExpand = true;
  @override
  void initState() {
      super.initState();
     isExpand = true;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: isExpand == true?Colors.grey: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [ Row( children: [Icon( isExpand==true?Icons.file_copy: Icons.copy_all), SizedBox(width: 20), Text("Title Icons")]),IconButton(onPressed: (){
                setState(() {
                  isExpand =! isExpand;
                });
              }, icon: Icon(isExpand==true?Icons.arrow_back:Icons.arrow_back_ios))],
            ),
          ),
         if(isExpand) Container(
            height: 300,
            color: Colors.green,
          )
         else Container(),
          ],
        ),
      ),
    );
  }
}
