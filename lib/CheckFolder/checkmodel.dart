class Inventory {
  final int id;
  final String unitNo;
  final String floorName;

  Inventory({
    required this.id,
    required this.unitNo,
    required this.floorName,
  });

  factory Inventory.fromJson(Map<String, dynamic> json) {
    return Inventory(
      id: json['id'],
      unitNo: json['unitno'],
      floorName: json['floors']['name'],
    );
  }
}
