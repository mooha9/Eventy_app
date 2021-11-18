class User {
    User({
        this.confirmed,
        this.blocked,
        this.gender,
        this.id,
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
        this.cards,
        this.visitors,
        this.comments,
        this.creator,
        this.userId,
    });

    bool? confirmed;
    bool? blocked;
    String? gender;
    String? id;
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
    CityId? countryId;
    ProfileImage? profileImage;
    Role? role;
    CityId? cityId;
    List<Card1>? cards;
    List<CityId>? visitors;
    List<Comment>? comments;
    List<Creator>? creator;
    String? userId;

      factory User.fromJson(Map<String, dynamic> json) => User(
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
        blocked: json["blocked"]== null ? null : json["blocked"],
        gender: json["gender"]== null ? null : json["gender"],
        id: json["id"] == null ? null : json["id"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        username: json["username"] == null ? null : json["username"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        firstName: json["firstName"] == null ? null : json["firstName"],
        email: json["email"] == null ? null : json["email"],
        age: json["age"] == null ? null : json["age"],
        provider: json["provider"] == null ? null : json["provider"],
        // role: json["role"] == null ? null : json["role"],
        // role: json["role"] == null ? null : Role.fromJson(json["role"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        // countryId: json["countryId"] == null
        //     ? null
        //     : CityId.fromJson(json["countryId"]),
        // profileImage: json["profileImage"] == null
        //     ? null
        //     : ProfileImage.fromJson(json["profileImage"]),
        // cityId: json["cityId"] == null
        //     ? null
        //     : CityId.fromJson(json["cityId"]),
        // cards: List<Card1>.from(
        //     json["cards"].map((x) => Card1.fromJson(x))),
        // visitors: List<CityId>.from(json["visitors"].map((x) => CityId.fromJson(x))),    
        
        // comments: json["comments"] == null
        //     ? null
        //     : List<Comment>.from(
        //         json["comments"].map((x) => Comment.fromJson(x))),
        // creator: json["comments"] == null
        //     ? null
        //     : List<Creator>.from(
        //         json["creator"].map((x) => Comment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "username": username == null ? null : username,
        "email": email == null ? null : email,
        "provider": provider == null ? null : provider,
        "confirmed": confirmed == null ? null : confirmed,
        "blocked": blocked,
        // "role": role == null ? null : role,
        // "role": role == null ? null : role!.toJson(),

        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        // "comments": comments == null
        //     ? null
        //     : List<dynamic>.from(comments!.map((x) => x.toJson())),
      };
}

class Card1 {
    Card1({
        this.id,
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

    String? id;
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
    String? usersId;
    String? cardId;
}

class CityId {
    CityId({
        this.id,
        this.cityName,
        this.publishedAt,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.countryId,
        this.cityIdId,
        this.countryName,
        this.userId,
    });

    String? id;
    String? cityName;
    DateTime? publishedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? countryId;
    String? cityIdId;
    String? countryName;
    String? userId;
}

class Comment {
    Comment({
        this.userId,
        this.eventId,
        this.id,
        this.commment,
        this.publishedAt,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.event,
        this.profileImage,
        this.userName,
        this.commentId,
    });

    List<String>? userId;
    List<String>? eventId;
    String? id;
    String? commment;
    DateTime? publishedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? event;
    String? profileImage;
    String? userName;
    String? commentId;
}

class Creator {
    Creator({
        this.id,
        this.photo,
        this.locationName,
        this.eventTimeEnd,
        this.eventName,
        this.eventDate,
        this.eventTimeStart,
        this.shortNote,
        this.locationLink,
        this.numberOfDays,
        this.description,
        this.publishedAt,
        this.createdAt,
        this.updatedAt,
        this.v,
        this.mainImage,
        this.locatoinName,
        this.locatoinUrl,
        this.numberDays,
        this.timeEnd,
        this.timeStart,
        this.eventCreator,
        this.visitor,
        this.participant,
        this.eventsCategory,
        this.isPublic,
        this.like,
        this.creatorId,
    });

    String? id;
    List<String>? photo;
    String? locationName;
    String? eventTimeEnd;
    String? eventName;
    DateTime? eventDate;
    String? eventTimeStart;
    String? shortNote;
    String? locationLink;
    int? numberOfDays;
    String? description;
    DateTime? publishedAt;
    DateTime? createdAt;
    DateTime? updatedAt;
    int? v;
    String? mainImage;
    String? locatoinName;
    String? locatoinUrl;
    int? numberDays;
    String? timeEnd;
    String? timeStart;
    String? eventCreator;
    String? visitor;
    String? participant;
    String? eventsCategory;
    bool? isPublic;
    int? like;
    String? creatorId;
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

class Role {
    Role({
        this.id,
        this.name,
        this.description,
        this.type,
        this.v,
        this.roleId,
    });

    String? id;
    String? name;
    String? description;
    String? type;
    int? v;
    String? roleId;
}
