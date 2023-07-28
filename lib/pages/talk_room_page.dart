import 'package:flutter/material.dart';
import 'package:flutter_chatapp/model/message.dart';
import 'package:intl/intl.dart' as intl;

class TalkRoomPage extends StatefulWidget {
  final String name;
  const TalkRoomPage(this.name, {Key? key}) : super(key: key);

  @override
  _TalkRoomPageState createState() => _TalkRoomPageState();
}

class _TalkRoomPageState extends State<TalkRoomPage> {
  List<Message> messageList = [
    Message(message: 'そりゃこまる！', isMe: true, sendTime: DateTime(2023, 7, 21, 22, 31)),
        Message(message: 'かmっっっっっkきくけこ', isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0)),
                Message(message: 'かきくこおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおけこ', 
                isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0)),
    Message(message: 'あいうえお', isMe: true, sendTime: DateTime(2023, 7, 21, 22, 31)),
        Message(message: 'かきくけこ', isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0)),
                Message(message: 'かきくこおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおけこ', 
                isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0)),
                    Message(message: 'あいうえお', isMe: true, sendTime: DateTime(2023, 7, 21, 22, 31)),
        Message(message: 'かきくけこ', isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0)),
                Message(message: 'かきくこおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおけこ', 
                isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0)),
                    Message(message: 'あいうえお', isMe: true, sendTime: DateTime(2023, 7, 21, 22, 31)),
        Message(message: 'かきくけこ', isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0)),
                Message(message: 'おいおいああああかきくこおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおおけこ', 
                isMe: false, sendTime: DateTime(2023, 7, 21, 23, 0))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text(widget.name),

      ),
  body: Stack(
    alignment: Alignment.bottomCenter,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 60),
        child: ListView.builder(
          physics: const RangeMaintainingScrollPhysics(),
          shrinkWrap: true,
          reverse: true,
          itemCount: messageList.length,
          itemBuilder: (context, index){
            return Padding(
              padding: EdgeInsets.only(top: 10.0, left: 10, right: 10, bottom: index == 0 ? 10 : 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                textDirection: messageList[index].isMe ? TextDirection.rtl : TextDirection.ltr,
                children: [
                  Container(
                    constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width*0.6),
                    decoration: BoxDecoration(
                      color: messageList[index].isMe ? Colors.green : Colors.white, 
                      borderRadius: BorderRadius.circular(15)
                       ),
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    child: Text(messageList[index].message)),
                  Text(intl.DateFormat('HH:mm').format(messageList[index].sendTime))
                ],
              ),
            );
          }
          ),
      ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.white,
              height: 60,
              child: Row (
                children: [
                const Expanded(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      border: OutlineInputBorder()
                    ),
                                     ),
                )),
                    IconButton(
                      onPressed: (){

                      },
                       icon: const Icon(Icons.send)
                    )
              ],),
            ),
             Container(
              color: Colors.white,
              height: MediaQuery.of(context).padding.bottom,
            ),
          ],
        )
    ],
  ),
    );
  }
}