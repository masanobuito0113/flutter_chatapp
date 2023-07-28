
import 'package:cloud_firestore/cloud_firestore.dart';

class UserFirestore {
    static final FirebaseFirestore _firebaseFirestoreInstance = FirebaseFirestore.instance;
    static final _userCollection = _firebaseFirestoreInstance.collection('user');

    static Future<void> createUser() async{
      try{
        await _userCollection .add({
          'name': '名無し',
          'image_path': 'https://dol.ismcdn.jp/mwimgs/5/d/600/img_7e0b8adba77c91687a8078920dedc7be160077.jpg'
        });
        print('アカウント処理完了');
      }catch(e) {
        print('アカウント作成失敗 ===== $e');
      }
    }
    static Future<ListQueryDocumentSnapshot>?> fetchUsers() async{
      try{
          final snapshot = await _userCollection.get();
          snapshot.docs.forEach((doc) {
            print('ドキュメントID: ${doc.id} ----- 名前: ${doc.data()['name']}');
          });
          return snapshot.docs;
      } catch(e) {
        print('ユーザー情報の取得失敗 ===== $e');
      }
    }
    }
    