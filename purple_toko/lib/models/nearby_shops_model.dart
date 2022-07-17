class NearbyShopsModel {
  final int? errorCode;
  final String? responseString;
  final List<Data>? data;
  final dynamic data1;
  final dynamic data2;
  final dynamic data3;

  NearbyShopsModel({
    this.errorCode,
    this.responseString,
    this.data,
    this.data1,
    this.data2,
    this.data3,
  });

  NearbyShopsModel.fromJson(Map<String, dynamic> json)
      : errorCode = json['error_code'] as int?,
        responseString = json['response_string'] as String?,
        data = (json['data'] as List?)
            ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
            .toList(),
        data1 = json['data1'],
        data2 = json['data2'],
        data3 = json['data3'];

  Map<String, dynamic> toJson() => {
        'error_code': errorCode,
        'response_string': responseString,
        'data': data?.map((e) => e.toJson()).toList(),
        'data1': data1,
        'data2': data2,
        'data3': data3
      };
}

class Data {
  final Markets? markets;
  final List<Shops>? shops;

  Data({
    this.markets,
    this.shops,
  });

  Data.fromJson(Map<String, dynamic> json)
      : markets = (json['markets'] as Map<String, dynamic>?) != null
            ? Markets.fromJson(json['markets'] as Map<String, dynamic>)
            : null,
        shops = (json['shops'] as List?)
            ?.map((dynamic e) => Shops.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'markets': markets?.toJson(),
        'shops': shops?.map((e) => e.toJson()).toList()
      };
}

class Markets {
  final String? id;
  final String? name;
  final String? state;
  final String? city;
  final String? address;
  final String? latitude;
  final String? longitude;
  final String? showDefault;
  final String? image;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;

  Markets({
    this.id,
    this.name,
    this.state,
    this.city,
    this.address,
    this.latitude,
    this.longitude,
    this.showDefault,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Markets.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        name = json['name'] as String?,
        state = json['state'] as String?,
        city = json['city'] as String?,
        address = json['address'] as String?,
        latitude = json['latitude'] as String?,
        longitude = json['longitude'] as String?,
        showDefault = json['show_default'] as String?,
        image = json['image'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        deletedAt = json['deleted_at'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'state': state,
        'city': city,
        'address': address,
        'latitude': latitude,
        'longitude': longitude,
        'show_default': showDefault,
        'image': image,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'deleted_at': deletedAt
      };
}

class Shops {
  final Shop? shop;
  final String? offers;
  final String? status;
  final dynamic ratings;
  final List<Categories>? categories;
  final Shopkeeper? shopkeeper;

  Shops({
    this.shop,
    this.offers,
    this.status,
    this.ratings,
    this.categories,
    this.shopkeeper,
  });

  Shops.fromJson(Map<String, dynamic> json)
      : shop = (json['shop'] as Map<String, dynamic>?) != null
            ? Shop.fromJson(json['shop'] as Map<String, dynamic>)
            : null,
        offers = json['offers'] as String?,
        status = json['status'] as String?,
        ratings = json['ratings'],
        categories = (json['categories'] as List?)
            ?.map((dynamic e) => Categories.fromJson(e as Map<String, dynamic>))
            .toList(),
        shopkeeper = (json['shopkeeper'] as Map<String, dynamic>?) != null
            ? Shopkeeper.fromJson(json['shopkeeper'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'shop': shop?.toJson(),
        'offers': offers,
        'status': status,
        'ratings': ratings,
        'categories': categories?.map((e) => e.toJson()).toList(),
        'shopkeeper': shopkeeper?.toJson()
      };
}

class Shop {
  final String? id;
  final String? userId;
  final String? shopName;
  final String? slugName;
  final String? gstNumber;
  final String? shopNumber;
  final String? street;
  final dynamic landmark;
  final String? city;
  final String? state;
  final String? country;
  final String? pincode;
  final String? googleAddress;
  final String? latitude;
  final String? longitude;
  final String? openTime;
  final String? closeTime;
  final String? deliveryRange;
  final String? description;
  final String? currentSubscriptionId;
  final dynamic qrImage;
  final String? image;
  final String? marketId;
  final String? isShopClosed;
  final String? isSelfDelivered;
  final String? isAutoAccept;
  final dynamic gstImage;
  final String? shopDays;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;

  Shop({
    this.id,
    this.userId,
    this.shopName,
    this.slugName,
    this.gstNumber,
    this.shopNumber,
    this.street,
    this.landmark,
    this.city,
    this.state,
    this.country,
    this.pincode,
    this.googleAddress,
    this.latitude,
    this.longitude,
    this.openTime,
    this.closeTime,
    this.deliveryRange,
    this.description,
    this.currentSubscriptionId,
    this.qrImage,
    this.image,
    this.marketId,
    this.isShopClosed,
    this.isSelfDelivered,
    this.isAutoAccept,
    this.gstImage,
    this.shopDays,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Shop.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        userId = json['user_id'] as String?,
        shopName = json['shop_name'] as String?,
        slugName = json['slug_name'] as String?,
        gstNumber = json['gst_number'] as String?,
        shopNumber = json['shop_number'] as String?,
        street = json['street'] as String?,
        landmark = json['landmark'],
        city = json['city'] as String?,
        state = json['state'] as String?,
        country = json['country'] as String?,
        pincode = json['pincode'] as String?,
        googleAddress = json['google_address'] as String?,
        latitude = json['latitude'] as String?,
        longitude = json['longitude'] as String?,
        openTime = json['open_time'] as String?,
        closeTime = json['close_time'] as String?,
        deliveryRange = json['delivery_range'] as String?,
        description = json['description'] as String?,
        currentSubscriptionId = json['current_subscription_id'] as String?,
        qrImage = json['qr_image'],
        image = json['image'] as String?,
        marketId = json['market_id'] as String?,
        isShopClosed = json['is_shop_closed'] as String?,
        isSelfDelivered = json['is_self_delivered'] as String?,
        isAutoAccept = json['is_auto_accept'] as String?,
        gstImage = json['gst_image'],
        shopDays = json['shop_days'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        deletedAt = json['deleted_at'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'user_id': userId,
        'shop_name': shopName,
        'slug_name': slugName,
        'gst_number': gstNumber,
        'shop_number': shopNumber,
        'street': street,
        'landmark': landmark,
        'city': city,
        'state': state,
        'country': country,
        'pincode': pincode,
        'google_address': googleAddress,
        'latitude': latitude,
        'longitude': longitude,
        'open_time': openTime,
        'close_time': closeTime,
        'delivery_range': deliveryRange,
        'description': description,
        'current_subscription_id': currentSubscriptionId,
        'qr_image': qrImage,
        'image': image,
        'market_id': marketId,
        'is_shop_closed': isShopClosed,
        'is_self_delivered': isSelfDelivered,
        'is_auto_accept': isAutoAccept,
        'gst_image': gstImage,
        'shop_days': shopDays,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'deleted_at': deletedAt
      };
}

class Categories {
  final String? id;
  final String? categoryType;
  final String? name;
  final String? slug;
  final dynamic parentId;
  final String? commission;
  final String? image;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;

  Categories({
    this.id,
    this.categoryType,
    this.name,
    this.slug,
    this.parentId,
    this.commission,
    this.image,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Categories.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        categoryType = json['category_type'] as String?,
        name = json['name'] as String?,
        slug = json['slug'] as String?,
        parentId = json['parent_id'],
        commission = json['commission'] as String?,
        image = json['image'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        deletedAt = json['deleted_at'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'category_type': categoryType,
        'name': name,
        'slug': slug,
        'parent_id': parentId,
        'commission': commission,
        'image': image,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'deleted_at': deletedAt
      };
}

class Shopkeeper {
  final String? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? appKey;
  final dynamic dob;
  final String? age;
  final String? gender;
  final dynamic image;
  final dynamic fcmToken;
  final String? aadhaarNumber;
  final dynamic aadhaarFront;
  final dynamic aadhaarBack;
  final String? panNumber;
  final dynamic panImage;
  final dynamic fbLogin;
  final dynamic gmailLogin;
  final String? userType;
  final String? password;
  final String? isVerified;
  final String? isKyc;
  final String? referalCode;
  final dynamic googleAddress;
  final String? latitude;
  final String? longitude;
  final String? createdAt;
  final String? updatedAt;
  final dynamic deletedAt;

  Shopkeeper({
    this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.appKey,
    this.dob,
    this.age,
    this.gender,
    this.image,
    this.fcmToken,
    this.aadhaarNumber,
    this.aadhaarFront,
    this.aadhaarBack,
    this.panNumber,
    this.panImage,
    this.fbLogin,
    this.gmailLogin,
    this.userType,
    this.password,
    this.isVerified,
    this.isKyc,
    this.referalCode,
    this.googleAddress,
    this.latitude,
    this.longitude,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  Shopkeeper.fromJson(Map<String, dynamic> json)
      : id = json['id'] as String?,
        firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        email = json['email'] as String?,
        phone = json['phone'] as String?,
        appKey = json['app_key'] as String?,
        dob = json['dob'],
        age = json['age'] as String?,
        gender = json['gender'] as String?,
        image = json['image'],
        fcmToken = json['fcm_token'],
        aadhaarNumber = json['aadhaar_number'] as String?,
        aadhaarFront = json['aadhaar_front'],
        aadhaarBack = json['aadhaar_back'],
        panNumber = json['pan_number'] as String?,
        panImage = json['pan_image'],
        fbLogin = json['fb_login'],
        gmailLogin = json['gmail_login'],
        userType = json['user_type'] as String?,
        password = json['password'] as String?,
        isVerified = json['is_verified'] as String?,
        isKyc = json['is_kyc'] as String?,
        referalCode = json['referal_code'] as String?,
        googleAddress = json['google_address'],
        latitude = json['latitude'] as String?,
        longitude = json['longitude'] as String?,
        createdAt = json['created_at'] as String?,
        updatedAt = json['updated_at'] as String?,
        deletedAt = json['deleted_at'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'phone': phone,
        'app_key': appKey,
        'dob': dob,
        'age': age,
        'gender': gender,
        'image': image,
        'fcm_token': fcmToken,
        'aadhaar_number': aadhaarNumber,
        'aadhaar_front': aadhaarFront,
        'aadhaar_back': aadhaarBack,
        'pan_number': panNumber,
        'pan_image': panImage,
        'fb_login': fbLogin,
        'gmail_login': gmailLogin,
        'user_type': userType,
        'password': password,
        'is_verified': isVerified,
        'is_kyc': isKyc,
        'referal_code': referalCode,
        'google_address': googleAddress,
        'latitude': latitude,
        'longitude': longitude,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'deleted_at': deletedAt
      };
}
