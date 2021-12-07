
import 'dart:convert';


Card1 card1FromJson(String str) => Card1.fromJson(json.decode(str));

String card1ToJson(Card1 data) => json.encode(data.toJson());
class Card1 {
    Card1({
        this.id,
        this.logo,
        this.urlWork,
        this.city,
        this.workType,
        this.name,
        this.tagLine,
        this.phoneNumber,
        this.email,
        this.category,
        this.publishedAt,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.participant,
        this.usersId,
        this.cardId,
    });

    String?id;
    String? logo;
    String? urlWork;
    String? city;
    String? workType;
    String? name;
    String? tagLine;
    String? phoneNumber;
    String? email;
    String? category;
    DateTime? publishedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    dynamic participant;
    UsersId? usersId;
    String? cardId;
    
    factory Card1.fromJson(Map<String, dynamic> json) => Card1(
        id: json["id"] == null ? null : json["id"],
        urlWork: json["urlWork"]== null ? null : json["urlWork"],
        city: json["city"]== null ? null : json["city"],
        name: json["name"] == null ? null : json["name"],
        logo: json["logo"]== null ? null : json["logo"],
        tagLine: json["tagLine"] == null ? null : json["tagLine"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        email: json["email"] == null ? null : json["email"],
        category: json["category"] == null ? null : json["category"],
        publishedAt: json["publishedAt"] == null ? null: DateTime.parse(json["publishedAt"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        usersId: json["usersId"] == null ? null : UsersId.fromJson(json["usersId"]),
        cardId: json["cardId"] == null ? null : json["cardId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "urlWork": urlWork == null ? null : urlWork,
        "city":city == null ? null : city,
        "logo":logo == null ? null : logo,
        "name": name == null ? null: name,
        "tagLine": tagLine == null ? null: tagLine,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "email": email == null ? null : email,
        "category": category == null ? null : category,
        "publishedAt": publishedAt == null ? null : publishedAt!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "usersId": usersId == null ? null : usersId,   
        "cardId": cardId == null ? null : cardId,  
      };
}

class UsersId {
    UsersId({
        this.confirmed,
        this.blocked,
        this.gender,
        this.id,
        this.bio,
        this.lastName,
        this.username,
        this.phoneNumber,
        this.firstName,
        this.email,
        this.age,
        this.provider,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.countryId,
        this.profileImage,
        this.role,
        this.cityId,
        this.usersIdId,
    });

    bool? confirmed;
    bool? blocked;
    String? gender;
    String? id;
    String? bio;
    String? lastName;
    String? username;
    int? phoneNumber;
    String? firstName;
    String? email;
    int? age;
    String? provider;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? countryId;
    ProfileImage? profileImage;
    String? role;
    String? cityId;
    String? usersIdId;

    factory UsersId.fromJson(Map<String, dynamic> json) => UsersId(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
        firstName: json["firstName"] == null ? null : json["firstName"],
        bio: json["bio"] == null ? null : json["bio"],
        
        email: json["email"] == null ? null : json["email"],
        provider: json["provider"] == null ? null : json["provider"],
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
        blocked: json["blocked"],
        // role: json["role"] == null ? null : json["role"],
        // role: json["role"] == null ? null : Role.fromJson(json["role"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
        "firstName": firstName == null ? null : firstName,
        "bio": bio == null ? null : bio,
        "profileImage": profileImage == null ? null : profileImage!.name,
        "email": email == null ? null : email,
        "provider": provider == null ? null : provider,
        "confirmed": confirmed == null ? null : confirmed,
        "blocked": blocked,
        // "role": role == null ? null : role,
        // "role": role == null ? null : role!.toJson(),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
       
      };
}

class ProfileImage {
    ProfileImage({
        this.id,
        this.name,
        this.alternativeText,
        this.caption,
        this.hash,
        this.ext,
        this.mime,
        this.size,
        this.width,
        this.height,
        this.url,
        this.formats,
        this.provider,
        this.related,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.profileImageId,
    });

    String? id;
    String? name;
    String? alternativeText;
    String? caption;
    String? hash;
    String? ext;
    String? mime;
    double? size;
    int? width;
    int? height;
    String? url;
    Formats? formats;
    String? provider;
    List<String>? related;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? profileImageId;
}

class Formats {
    Formats({
        this.thumbnail,
        this.large,
        this.medium,
        this.small,
    });

    Large? thumbnail;
    Large? large;
    Large? medium;
    Large? small;
}

class Large {
    Large({
        this.name,
        this.hash,
        this.ext,
        this.mime,
        this.width,
        this.height,
        this.size,
        this.path,
        this.url,
    });

    String? name;
    String? hash;
    String? ext;
    String? mime;
    int? width;
    int? height;
    double? size;
    dynamic path;
    String? url;
}


