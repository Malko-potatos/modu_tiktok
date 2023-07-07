import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:modu_tiktok/app/data/model/video.dart';

Future<List<Video>> getVideoList() async {
  var videos = await FirebaseFirestore.instance.collection("Videos").get();

  if (videos.docs.isEmpty) {
    videos = await FirebaseFirestore.instance.collection("Videos").get();
  }
  return videos.docs.map((doc) => Video.fromJson(doc.data())).toList();
}

void saveVideoToFirebase(Video video) async {
  try {
    await FirebaseFirestore.instance.collection("Videos").add(video.toJson());
    print('Video saved to Firebase: ${video.id}');
  } catch (e) {
    print('Error saving video to Firebase: $e');
  }
}

void printVideoList(List<Video> videoList) {
  for (int i = 0; i < videoList.length; i++) {
    print('Video ${i + 1}: ${videoList[i].toString()}');
  }
}
