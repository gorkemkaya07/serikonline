class ProfileCommentsModel {
  final String userName;
  final String comment;
  final String profilePictureImg;
  final DateTime createdTime;
  final bool status;

  ProfileCommentsModel({
    required this.userName,
    required this.comment,
    required this.createdTime,
    required this.status,
    required this.profilePictureImg,
  });
}
