import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            gradeCard('مرحلى اوله', Icons.style_outlined, (){}, context),
            gradeCard('مرحلى ثانيه', Icons.book_online, (){}, context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           gradeCard('مرحلى ثالثه', Icons.class_outlined, (){}, context),
           gradeCard('مرحلى رابعه', Icons.grade_outlined, (){}, context),
          ],
        ),
      ],
    );
  }
}


Widget gradeCard(grade, icon, onTap, context){
  return Center(
    child: GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * 0.45,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(grade),
              Icon(icon)
            ],
          ),
        ),
      ),
    ),
  );
}