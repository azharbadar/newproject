class HomeScreenModel {
  int? id;
  String? name;
  String? image;
  String? bannerImage;
  String? backgroundImage;
  int? sortno;
  bool? status;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  String? responsiveBackgroundImage;
  String? responsiveBannerImage;

  HomeScreenModel(
      {this.id,
      this.name,
      this.image,
      this.bannerImage,
      this.backgroundImage,
      this.sortno,
      this.status,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.responsiveBackgroundImage,
      this.responsiveBannerImage});

  HomeScreenModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    bannerImage = json['bannerImage'];
    backgroundImage = json['backgroundImage'];
    sortno = json['sortno'];
    status = json['status'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    responsiveBackgroundImage = json['responsiveBackgroundImage'];
    responsiveBannerImage = json['responsiveBannerImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['bannerImage'] = this.bannerImage;
    data['backgroundImage'] = this.backgroundImage;
    data['sortno'] = this.sortno;
    data['status'] = this.status;
    data['deleted'] = this.deleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['responsiveBackgroundImage'] = this.responsiveBackgroundImage;
    data['responsiveBannerImage'] = this.responsiveBannerImage;
    return data;
  }
}
