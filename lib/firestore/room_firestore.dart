
import 'package:cloud_firestore/cloud_firestore.dart';

class RoomFirestore{
      static final FirebaseFirestore _firebaseFirestoreInstance = FirebaseFirestore.instance;
      static final _roomCollection = _firebaseFirestoreInstance.collection('room');

      static Future<void> createRoom() async{
        
      }

}
