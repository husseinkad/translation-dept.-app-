import 'package:flutter/material.dart';
import 'package:translation_dept/utiles/styles.dart';

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
            gradeCard('مرحلى ثانيه', Icons.my_library_books_outlined, (){}, context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           gradeCard('مرحلى ثالثه', Icons.class_outlined, (){}, context),
           gradeCard('مرحلى رابعه', Icons.person_outlined, (){}, context),
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
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(icon),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(grade, style: textStyleNormal,),
              ),

            ],
          ),
        ),
      ),
    ),
  );
}