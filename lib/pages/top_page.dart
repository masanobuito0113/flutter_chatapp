import 'package:flutter_chatapp/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chatapp/pages/setting_profile_page.dart';
import 'package:flutter_chatapp/pages/talk_room_page.dart';


class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<User> userList = [
    User(name: '山田', uid: 'abc', 
        imagePath:'https://dol.ismcdn.jp/mwimgs/5/d/600/img_7e0b8adba77c91687a8078920dedc7be160077.jpg',
        lastMessage: 'こんにちわっっっっっわ'),
    User(name: '佐久間', uid: 'def', 
        imagePath:'https://www.mfr.co.jp/content/dam/mfrcojp/sumai/chishiki_018/img/s302-key.jpg',
        lastMessage: 'あざすすすす！'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('202'),
      actions: [
        IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => const SettingProfilePage()
          ));
        },
         icon: const Icon(Icons.settings)
         )
      ],
      ),
      body:ListView.builder(
        itemCount: userList.length, 
        // ユーザー数に合わせて変化させる
        itemBuilder: (context, index){
          return InkWell(
            onTap: (){
              // 画面遷移の記述3行
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => TalkRoomPage(userList[index].name)
              ));
            },
            child: SizedBox(
                height: 70,
              child: Row(
                children: [
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: userList[index].imagePath == null
                    ? null
                    : NetworkImage(userList[index].imagePath!),
                    ),
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(userList[index].name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Text(userList[index].lastMessage, style: TextStyle(color: Colors.pink[400]),),
                    ],
                  )
                ],
                ),
            ),
          );
        }
        
        ),
    );
  }
}