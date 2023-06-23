// class Hotel {
//   int? id;
//   String? name;
//   String? location;
//   String? description;
//   String? createdAt;
//   String? updatedAt;
//   String? country;
//   String? city;
//   String? region;
//   String? freeOff;
//   String? image;
//   List<Rooms>? rooms;
//   List<Options>? options;
//
//   Hotel(
//       {this.id,
//         this.name,
//         this.location,
//         this.description,
//         this.createdAt,
//         this.updatedAt,
//         this.country,
//         this.city,
//         this.region,
//         this.freeOff,
//         this.image,
//         this.rooms,
//         this.options});
//
//   Hotel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     location = json['location'];
//     description = json['description'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     country = json['country'];
//     city = json['city'];
//     region = json['region'];
//     freeOff = json['free_off'];
//     image = json['image'];
//     if (json['rooms'] != null) {
//       rooms = <Rooms>[];
//       json['rooms'].forEach((v) {
//         rooms!.add(Rooms.fromJson(v));
//       });
//     }
//     if (json['options'] != null) {
//       options = <Options>[];
//       json['options'].forEach((v) {
//         options!.add(Options.fromJson(v));
//       });
//     }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['name'] = name;
//     data['location'] = location;
//     data['description'] = description;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     data['country'] = country;
//     data['city'] = city;
//     data['region'] = region;
//     data['free_off'] = freeOff;
//     data['image'] = image;
//     if (rooms != null) {
//       data['rooms'] = rooms!.map((v) => v.toJson()).toList();
//     }
//     if (options != null) {
//       data['options'] = options!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Rooms {
//   int? id;
//   String? hotelId;
//   String? name;
//   String? guests;
//   String? image;
//   String? containBreakfastPrice;
//   String? containAllPrice;
//   String? onlyAccommodationPrice;
//   String? createdAt;
//   String? updatedAt;
//
//   Rooms(
//       {this.id,
//         this.hotelId,
//         this.name,
//         this.guests,
//         this.image,
//         this.containBreakfastPrice,
//         this.containAllPrice,
//         this.onlyAccommodationPrice,
//         this.createdAt,
//         this.updatedAt});
//
//   Rooms.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     hotelId = json['hotel_id'];
//     name = json['name'];
//     guests = json['guests'];
//     image = json['image'];
//     containBreakfastPrice = json['contain_breakfast_price'];
//     containAllPrice = json['contain_all_price'];
//     onlyAccommodationPrice = json['only_accommodation_price'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = id;
//     data['hotel_id'] = hotelId;
//     data['name'] = name;
//     data['guests'] = guests;
//     data['image'] = image;
//     data['contain_breakfast_price'] = containBreakfastPrice;
//     data['contain_all_price'] = containAllPrice;
//     data['only_accommodation_price'] = onlyAccommodationPrice;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }
//
// class Options {
//   int? id;
//   String? hotelId;
//   String? name;
//   String? nightPrice;
//   String? createdAt;
//   String? updatedAt;
//
//   Options(
//       {this.id,
//         this.hotelId,
//         this.name,
//         this.nightPrice,
//         this.createdAt,
//         this.updatedAt});
//
//   Options.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     hotelId = json['hotel_id'];
//     name = json['name'];
//     nightPrice = json['night_price'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = id;
//     data['hotel_id'] = hotelId;
//     data['name'] = name;
//     data['night_price'] = nightPrice;
//     data['created_at'] = createdAt;
//     data['updated_at'] = updatedAt;
//     return data;
//   }
// }