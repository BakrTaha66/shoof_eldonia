class Programs {
  int? id;
  String? name;
  String? title;
  String? description;
  String? activities;
  String? days;
  String? nights;
  String? guests;
  String? plan;
  String? daysDetails;
  String? notes;
  String? country;
  String? city;
  String? price;
  String? createdAt;
  String? updatedAt;
  List<Images>? images;
  List<Features>? features;
  List<Booking>? booking;

  Programs(
      {this.id,
        this.name,
        this.title,
        this.description,
        this.activities,
        this.days,
        this.nights,
        this.guests,
        this.plan,
        this.daysDetails,
        this.notes,
        this.country,
        this.city,
        this.price,
        this.createdAt,
        this.updatedAt,
        this.images,
        this.features,
        this.booking});

  Programs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    title = json['title'];
    description = json['description'];
    activities = json['activities'];
    days = json['days'];
    nights = json['nights'];
    guests = json['guests'];
    plan = json['plan'];
    daysDetails = json['days_details'];
    notes = json['notes'];
    country = json['country'];
    city = json['city'];
    price = json['price'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    if (json['features'] != null) {
      features = <Features>[];
      json['features'].forEach((v) {
        features!.add(Features.fromJson(v));
      });
    }
    if (json['booking'] != null) {
      booking = <Booking>[];
      json['booking'].forEach((v) {
        booking!.add(Booking.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['title'] = title;
    data['description'] = description;
    data['activities'] = activities;
    data['days'] = days;
    data['nights'] = nights;
    data['guests'] = guests;
    data['plan'] = plan;
    data['days_details'] = daysDetails;
    data['notes'] = notes;
    data['country'] = country;
    data['city'] = city;
    data['price'] = price;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    if (features != null) {
      data['features'] = features!.map((v) => v.toJson()).toList();
    }
    if (booking != null) {
      data['booking'] = booking!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  int? id;
  String? programId;
  String? image;
  String? createdAt;
  String? updatedAt;

  Images({this.id, this.programId, this.image, this.createdAt, this.updatedAt});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    programId = json['program_id'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['program_id'] = programId;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Features {
  int? id;
  String? programId;
  String? feature;
  String? createdAt;
  String? updatedAt;

  Features(
      {this.id, this.programId, this.feature, this.createdAt, this.updatedAt});

  Features.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    programId = json['program_id'];
    feature = json['feature'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['program_id'] = programId;
    data['feature'] = feature;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Booking {
  int? id;
  String? username;
  String? email;
  String? phone;
  String? programId;
  String? status;
  String? createdAt;
  String? updatedAt;

  Booking(
      {this.id,
        this.username,
        this.email,
        this.phone,
        this.programId,
        this.status,
        this.createdAt,
        this.updatedAt});

  Booking.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    programId = json['program_id'];
    status = json['status'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['email'] = email;
    data['phone'] = phone;
    data['program_id'] = programId;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}