import 'package:flutter/material.dart';
import 'package:translation_dept/utiles/styles.dart';

class Lectures extends StatefulWidget {
  const Lectures({Key? key}) : super(key: key);

  @override
  State<Lectures> createState() => _LecturesState();
}

class _LecturesState extends State<Lectures> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         title('التلفظ'),
         listViewWidget(context),
         title('الكرامر'),
          listViewWidget(context),
         title('مبادئ الترجمه'),
          listViewWidget(context),
          title('الترجمه'),
          listViewWidget(context),

        ],
      ),
    );
  }
}


title(title){
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Text(title, style: textStyleBiggerThanNormal,),
  );
}

listViewWidget(context,){
  return  SizedBox(
    height: MediaQuery.of(context).size.height * 0.15,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index){
          return SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.width * 0.4,
              child: const Card());
        }
    ),
  );
}