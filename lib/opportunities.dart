import 'package:flutter/material.dart';

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
      SizedBox(
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
                ));
          }
      ),
    ),
          ListView.builder(
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
                    ));
              }
          ),
        ],
      ),
    );
  }
}
