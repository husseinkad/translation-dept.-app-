import 'package:flutter/material.dart';
import 'package:translation_dept/utiles/styles.dart';

class Opportunities extends StatefulWidget {
  const Opportunities({Key? key}) : super(key: key);

  @override
  State<Opportunities> createState() => _OpportunitiesState();
}

class _OpportunitiesState extends State<Opportunities> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.07,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index){
              return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: Card(
                    shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    child: const Center(child: Text('فرص العمل', style: textStyleSmall,),),
                  ));
            }
        ),
    ),
      ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index){
                  return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.35,
                   //   width: MediaQuery.of(context).size.width * 0.1,
                      child: Card(
                        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('مترجم فوري', style: textStyleBig,),
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.apps),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('وضائف', style: textStyleNormal,),
                                ),
                                SizedBox(width: 100,),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.credit_card),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('\$1000',),
                                ),
                              ],
                            ),

                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.calendar_today_outlined),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('22/11/6',),
                                ),
                                SizedBox(width: 100,),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.calendar_today_outlined),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('22/11/6',),
                                ),
                              ],
                            ),
                            Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.location_on_outlined),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('السفاره الامريكيه في بغداد', style: textStyleNormal,),
                                ),
                              ],
                            ),

                            const Center(
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text('عرض التفاصيل', style: textStyleBig,),
                              ),
                            ),

                          ],
                        ),
                      ));
                }
            ),
          ),
        ],
      ),
    );
  }
}

