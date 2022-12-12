class Local {
  final String id;
  final String placeName;
  final String categoryName;
  final String categoryGroupCode;
  final String categoryGroupName;
  final String phone;
  final String addressName;
  final String roadAddressName;
  final String x;
  final String y;
  final String placeUrl;
  final String distance;

  const Local({
    required this.id,
    required this.placeName,
    required this.categoryName,
    required this.categoryGroupCode,
    required this.categoryGroupName,
    required this.phone,
    required this.addressName,
    required this.roadAddressName,
    required this.x,
    required this.y,
    required this.placeUrl,
    required this.distance,
  });

  factory Local.fromJson(Map<String, dynamic> json) {
    return Local(
      id: json['id'],
      placeName: json['place_name'],
      categoryName: json['category_name'],
      categoryGroupCode: json['category_group_code'],
      categoryGroupName: json['category_group_name'],
      phone: json['phone'],
      addressName: json['address_name'],
      roadAddressName: json['road_address_name'],
      x: json['x'],
      y: json['y'],
      placeUrl: json['place_url'],
      distance: json['distance'],
    );
  }
}
