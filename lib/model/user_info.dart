class UserInfoModel {
  int styleColor;
  UserInfoModel({required this.styleColor});

  UserInfoModel.fromMap(Map<String, dynamic> map)
      : styleColor = map["styleColor"]
  ;

  Map<String, dynamic> toMap() {
    return {"styleColor": styleColor};
  }
}
