class UserModel {
  final String uid, email, nickname;
  final int phoneNum;
  final bool hasAvatar;

  UserModel({
    required this.uid,
    required this.email,
    required this.nickname,
    required this.phoneNum,
    required this.hasAvatar,
  });
}
