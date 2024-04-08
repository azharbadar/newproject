class DealModel {
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

  DealModel(
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

  DealModel.fromJson(Map<String, dynamic> json) {
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
