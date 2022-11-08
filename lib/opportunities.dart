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
        child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index){
              return Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(width: 1, color: Color(0xFF26A3F7))),
                child: const Center(child: Text('فرص العمل', style: textStyleSmall,),),
              );
            },
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(width: 0.3)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('مترجم فوري', style: textStyleBig,),
                              ),
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.apps, color: Color(0xFF26A3F7)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('وضائف', style: textStyleNormalNoFont,),
                                  ),
                                  SizedBox(width: 60,),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.credit_card, color: Color(0xFF26A3F7)),
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
                                    child: Icon(Icons.calendar_today_outlined, color: Color(0xFF26A3F7)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('22/11/6',),
                                  ),
                                  SizedBox(width: 60,),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(Icons.calendar_today_outlined, color: Color(0xFF26A3F7),),
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
                                    child: Icon(Icons.location_on_outlined, color: Color(0xFF26A3F7)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Text('السفاره الامريكيه في بغداد', style: textStyleNormalNoFont,),
                                  ),
                                ],
                              ),

                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.blue.withOpacity(0.1)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Text('عرض التفاصيل', style: textStyleLogo,),
                                      )),
                                ),
                              ),

                            ],
                          ),
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

