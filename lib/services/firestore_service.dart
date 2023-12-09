import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference newsmodel =
      FirebaseFirestore.instance.collection('newsmodel');

  Stream<QuerySnapshot> getNews() {
    final newsStream = newsmodel.snapshots();
    return newsStream;
  }

  Future<Map<String, dynamic>?> getNewsById(String id) async {
    try {
      final QuerySnapshot querySnapshot =
          await newsmodel.where('id', isEqualTo: id).limit(1).get();

      if (querySnapshot.docs.isNotEmpty) {
        final data = querySnapshot.docs.first.data() as Map<String, dynamic>;
        data['id'] = querySnapshot.docs.first.id;
        return data;
      } else {
        return null;
      }
    } catch (e) {
      print('Error getting article by ID: $e');
      return null;
    }
  }

  Stream<QuerySnapshot> getNewsNew({String? searchQuery}) {
    Query newsQuery = newsmodel;

    if (searchQuery != null && searchQuery.isNotEmpty) {
      newsQuery = newsQuery
          .where('title', isGreaterThanOrEqualTo: searchQuery)
          .orderBy('title');
    }

    final newsStream = newsQuery.snapshots();
    return newsStream;
  }
}
