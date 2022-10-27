import 'package:cloud_firestore/cloud_firestore.dart';

class Video {
  String username;
  String uid;
  String id; //id of video
  List likes;
  int commentCount;
  int shareCount;
  String songName;
  String caption;
  String videoUrl;
  String thumbnail;
  String profilePhoto;

  Video({
    required this.username,
    required this.uid,
    required this.id,
    required this.commentCount,
    required this.likes,
    required this.shareCount,
    required this.songName,
    required this.caption,
    required this.videoUrl,
    required this.thumbnail,
    required this.profilePhoto,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "uid": uid,
        "id": id,
        "commentCount": commentCount,
        "likes": likes,
        "shareCount": shareCount,
        "songname": songName,
        "caption": caption,
        "videoUrl": videoUrl,
        "thumbnail": thumbnail,
        "profilePhoto": profilePhoto,
      };

  static Video fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;
    return Video(
      username: snapshot['username'],
      uid: snapshot['uid'],
      id: snapshot['id'],
      commentCount: snapshot['commentCount'],
      likes: snapshot['likes'],
      shareCount: snapshot['shareCount'],
      songName: snapshot['songName'],
      caption: snapshot['caption'],
      videoUrl: snapshot['videoUrl'],
      thumbnail: snapshot['thumbnail'],
      profilePhoto: snapshot['profilePhoto'],
    );
  }
}
