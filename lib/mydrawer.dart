import 'package:flutter/material.dart';
import 'package:translation_dept/utiles/styles.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_share/flutter_share.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);



  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 145,
          padding: const EdgeInsets.only(top: 20.0),
          child: Center(child: Image.asset('assets/menu.png', fit: BoxFit.cover, )),
        ),
        Row(
            children: const [
              Expanded(
                  child: Divider(color: Colors.white70,)
              ),

              Text('  دعم التطبيق  ', style: TextStyle(fontSize: 15, fontFamily: 'Tajawal', color: Colors.white70, overflow: TextOverflow.clip),),

              Expanded(
                  child: Divider(color: Colors.white70,)
              ),
            ]
        ),
        const SizedBox(height: 13,),
        Column(
          children: [
            buildMenuItem(text: 'التبليغات والاقتراحات', icon: Icons.report_problem_outlined, onClicked: () => selectedItem(context, 9)),
            const SizedBox(height: 13,),
            buildMenuItem(text: 'مشاركه التطبيق', icon: Icons.share_outlined, onClicked: () => selectedItem(context, 7)),
            const SizedBox(height: 13,),
            buildMenuItem(text: 'مطور التطبيق', icon: Icons.code_outlined, onClicked: () => selectedItem(context, 6)),
            const SizedBox(height: 13,),
            Row(
                children: const [
                  Expanded(
                      child: Divider(color: Colors.white70,)
                  ),

                  Text('  مواقع المنصه  ', style: TextStyle(fontSize: 15, fontFamily: 'Tajawal', color: Colors.white70, overflow: TextOverflow.clip),),

                  Expanded(
                      child: Divider(color: Colors.white70,)
                  ),
                ]
            ),
            buildMenuItem(text: 'مطور التطبيق', icon: Icons.code_outlined, onClicked: () => selectedItem(context, 6)),
            buildMenuItem(text: 'التبليغات والاقتراحات', icon: Icons.report_problem_outlined, onClicked: () => selectedItem(context, 9)),
            buildMenuItem(text: 'مشاركه التطبيق', icon: Icons.share_outlined, onClicked: () => selectedItem(context, 7)),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     IconButton(onPressed: () => selectedItem(context, 5), icon: const Icon(Icons.web, color: Colors.white70,)),
            //     IconButton(onPressed: () => selectedItem(context, 2), icon: const Icon(Icons.send_outlined, color: Colors.white70, )),
            //     IconButton(onPressed: () => selectedItem(context, 3), icon: const Icon(Icons.groups_outlined, color: Colors.white70,)),
            //     IconButton(onPressed: () => selectedItem(context, 4), icon: Image.asset('assets/Linkedin.png', color: Colors.white70,)),
            //   ],
            // ),

          ],
        ),
      ],
    );
  }
  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white70;
    const hoverColor = Colors.blue;

    return ListTile(
      leading: Icon(icon, color: color,),
      title: Text(text, style: const TextStyle(fontSize: 15, fontFamily: 'Tajawal', color: color),),
      hoverColor: hoverColor,
      onTap: onClicked ,

    );
  }

  Widget bulidMenuItem2({
    required String text,
    required String image,
    VoidCallback? onClicked,
  }) {
    const color = Colors.white70;
    const hoverColor = Colors.blue;

    return ListTile(
      leading: Image.asset(image, color: color,),
      title: Text(text, style: textStyleSmall),
      hoverColor: hoverColor,
      onTap: onClicked ,

    );
  }
  String Instagram = 'https://www.instagram.com/xbr.dev/';
  void insta() async {
    if (!await launch(Instagram)) throw 'حدث خطا ما $Instagram';
  }

  String passiontelegram = 'https://t.me/passion03x';
  void telegram() async {
    if (!await launch(passiontelegram)) throw 'حدث خطا ما $passiontelegram';
  }
  String thepassionatecommenoty = 'https://t.me/tpc03';
  void tpc() async {
    if (!await launch(thepassionatecommenoty)) throw 'حدث خطا ما $thepassionatecommenoty';
  }
  String passioninstagram = 'https://instagram.com/passion03x';
  void passioninsta() async {
    if (!await launch(passioninstagram)) throw 'حدث خطا ما $passioninstagram';
  }
  String passionlinkedin = 'https://www.linkedin.com/company/passion-tpc/';
  void passionLinkedin() async {
    if (!await launch(passionlinkedin)) throw 'حدث خطا ما $passionlinkedin';
  }
  String passionwebsite = 'https://passion03x.netlify.com/';
  void passionWebsite() async {
    if (!await launch(passionwebsite)) throw 'حدث خطا ما $passionwebsite';
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 1:
        passioninsta();
        break;
      case 2:
        telegram();
        break;
      case 3:
        tpc();
        break;
      case 4:
        passionLinkedin();
        break;
      case 5:
        passionWebsite();
        break;
      case 6:
        insta();
        break;
      case 7:
        FlutterShare.share(title: 'لاتفوت المعرفه والفرص والمهارات الي تقدمها باشن حمل التطبيق الان.', linkUrl: 'https://play.google.com/store/apps/details?id=com.husseindev.passion');
        break;
      case 9:
        Navigator.of(context).push(
          PageRouteBuilder(
            opaque: false, // set to false
            pageBuilder: (_, __, ___) => const ReportsAndSuggestions(),
          ),
        );
        break;

    }
  }
}

class ReportsAndSuggestions extends StatefulWidget {
  const ReportsAndSuggestions({Key? key}) : super(key: key);

  @override
  State<ReportsAndSuggestions> createState() => _ReportsAndSuggestionsState();
}

class _ReportsAndSuggestionsState extends State<ReportsAndSuggestions> {
  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();
    String? messageText;
   // final _firestore = FirebaseFirestore.instance;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.7),
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('نستقبل جميع اقتراتكم وتبليغاتكم لتطوير منصه باشن', style: TextStyle(fontSize: 18, fontFamily: 'Tajawal', color: Colors.white70,)),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  // height: MediaQuery.of(context).size.height * 0.4,
                  child: TextFormField(
                    controller: textEditingController,
                    maxLines: 8,
                    onChanged: (value) {
                      messageText = value;
                    },
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(color: Colors.white70),
                    decoration: const InputDecoration(

                      hintTextDirection: TextDirection.rtl,
                      hintText: 'اكتب هنا...',
                      hintStyle: TextStyle(color: Colors.white70),
                      fillColor: Colors.white10,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white70, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.white70, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(18.0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    onPressed: (){
                      if(messageText == null){
                        // do nothing
                      }else{
                        // textEditingController.clear();
                        // _firestore.collection('feedback').add({
                        //   'message': messageText,
                        //   'time': FieldValue.serverTimestamp(),
                        // });
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Colors.black26.withOpacity(0.7),
                              title: const Text('شكرا لك', style: TextStyle(fontSize: 18, fontFamily: 'Tajawal', color: Colors.white70,)),
                              content: const Text('لقد تم استلام رسالتك', style: TextStyle(fontSize: 18, fontFamily: 'Tajawal', color: Colors.white70,)),
                            );
                          },
                        );
                      }
                    },
                    child: const Text('الارسال', style: TextStyle(fontSize: 18, fontFamily: 'Tajawal', color: Colors.white70),), style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.black26;
                        }
                        return Colors.grey.withOpacity(0.2); // Use the component's default.
                      },
                    ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: const BorderSide(width: 0.3,color: Colors.white70)
                          ),
                      ),
                  ),),
                ),
                const SizedBox(height: 38,),
                Center(
                    child: TextButton(
                      onPressed: (){ Navigator.pop(context);},
                      child: const Text('الرجوع', style: TextStyle(fontSize: 21, fontFamily: 'Tajawal', color: Colors.white70),),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

