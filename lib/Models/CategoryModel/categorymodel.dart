class CategoryModel {
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
  List<DealCategory>? dealCategory;

  CategoryModel(
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
      this.responsiveBannerImage,
      this.dealCategory});

  CategoryModel.fromJson(Map<String, dynamic> json) {
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
    if (json['DealCategory'] != null) {
      dealCategory = <DealCategory>[];
      json['DealCategory'].forEach((v) {
        dealCategory!.add(new DealCategory.fromJson(v));
      });
    }
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
    if (this.dealCategory != null) {
      data['DealCategory'] = this.dealCategory!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DealCategory {
  int? dealId;
  int? categoryid;
  Deal? deal;

  DealCategory({this.dealId, this.categoryid, this.deal});

  DealCategory.fromJson(Map<String, dynamic> json) {
    dealId = json['dealId'];
    categoryid = json['categoryid'];
    deal = json['deal'] != null ? new Deal.fromJson(json['deal']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dealId'] = this.dealId;
    data['categoryid'] = this.categoryid;
    if (this.deal != null) {
      data['deal'] = this.deal!.toJson();
    }
    return data;
  }
}

class Deal {
  int? id;
  String? name;
  String? desc;
  int? price;
  bool? pricecheck;
  int? saleper;
  String? startDate;
  String? endDate;
  String? floorplan;
  String? frontImage;
  int? userId;
  bool? referral;
  bool? status;
  bool? deleted;
  String? createdAt;
  String? updatedAt;
  int? projectId;
  int? sortno;

  Deal(
      {this.id,
      this.name,
      this.desc,
      this.price,
      this.pricecheck,
      this.saleper,
      this.startDate,
      this.endDate,
      this.floorplan,
      this.frontImage,
      this.userId,
      this.referral,
      this.status,
      this.deleted,
      this.createdAt,
      this.updatedAt,
      this.projectId,
      this.sortno});

  Deal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    desc = json['desc'];
    price = json['price'];
    pricecheck = json['pricecheck'];
    saleper = json['saleper'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    floorplan = json['floorplan'];
    frontImage = json['frontImage'];
    userId = json['userId'];
    referral = json['referral'];
    status = json['status'];
    deleted = json['deleted'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    projectId = json['projectId'];
    sortno = json['sortno'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['desc'] = this.desc;
    data['price'] = this.price;
    data['pricecheck'] = this.pricecheck;
    data['saleper'] = this.saleper;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['floorplan'] = this.floorplan;
    data['frontImage'] = this.frontImage;
    data['userId'] = this.userId;
    data['referral'] = this.referral;
    data['status'] = this.status;
    data['deleted'] = this.deleted;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['projectId'] = this.projectId;
    data['sortno'] = this.sortno;
    return data;
  }
}
