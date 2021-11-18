

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
        createdAt: json["createdAt"] == null ? null: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null: DateTime.parse(json["updatedAt"]),
        countryId: json["countryId"] == null ? null: CityId.fromJson(json["countryId"]),
        profileImage: json["profileImage"] == null? null: ProfileImage.fromJson(json["profileImage"]),
        cityId: json["cityId"] == null? null: CityId.fromJson(json["cityId"]),
        cards: List<Card1>.from(json["cards"].map((x) => Card1.fromJson(x))),
        visitors: List<CityId>.from(json["visitors"].map((x) => CityId.fromJson(x))),
        comments: List<Comment>.from(json["comments"].map((x) => Comment.fromJson(x))),    
        // creator: List<Creator>.from(json["creator"].map((x) => Creator.fromJson(x))),
        userId: json["userId"] == null ? null : json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "confirmed": confirmed == null ? null : confirmed,
        "blocked": blocked == null ? null : blocked,
        "gender": gender == null ? null : gender,
        "id": id == null ? null : id,
        "lastName": lastName == null ? null : lastName,
        "username": username == null ? null : username,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "firstName": firstName == null ? null : firstName,
        "email": email == null ? null : email,
        "age": age == null ? null : age,
        "provider": provider == null ? null : provider,
        // "role": role == null ? null : role,
        // "role": role == null ? null : role!.toJson(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "countryId": countryId == null ? null : countryId,
        "profileImage": profileImage == null ? null : profileImage,
        "cityId": cityId == null ? null : cityId,
        "cards": List<dynamic>.from(cards!.map((x) => x.toJson())),
        "visitors": List<dynamic>.from(visitors!.map((x) => x.toJson())),
        "comments": List<dynamic>.from(comments!.map((x) => x.toJson())),
        // "creator": List<dynamic>.from(creator!.map((x) => x.toJson())),
        "userId": userId == null ? null : userId,   
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
    
  factory Card1.fromJson(Map<String, dynamic> json) => Card1(
        id: json["id"] == null ? null : json["id"],
        urlWork: json["urlWork"]== null ? null : json["urlWork"],
        city: json["city"]== null ? null : json["city"],
        name: json["name"] == null ? null : json["name"],
        tagLine: json["tagLine"] == null ? null : json["tagLine"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        email: json["email"] == null ? null : json["email"],
        category: json["category"] == null ? null : json["category"],
        publishedAt: json["publishedAt"] == null ? null: DateTime.parse(json["publishedAt"]),
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        usersId: json["usersId"] == null ? null : json["usersId"],
        cardId: json["cardId"] == null ? null : json["cardId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "urlWork": urlWork == null ? null : urlWork,
        "city":city == null ? null : city,
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

  factory CityId.fromJson(Map<String, dynamic> json) => CityId(
      id: json["id"] == null ? null : json["id"],
      cityName: json["cityName"]== null ? null : json["cityName"],
      publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
      createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
      countryId: json["countryId"] == null ? null : json["countryId"],
      cityIdId: json["cityIdId"] == null ? null : json["cityIdId"],
      countryName: json["countryName"]== null ? null : json["countryName"],
      userId: json["name"] == null ? null : json["userId"],
    );

  Map<String, dynamic> toJson() => {
      "id": id == null ? null : id,
      "cityName": cityName == null ? null : cityName,
      "publishedAt": publishedAt == null ? null : publishedAt!.toIso8601String(),
      "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
      "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
      "countryId":countryId == null ? null : countryId,
      "cityIdId": cityIdId == null ? null: cityIdId,
      "countryName": countryName == null ? null: countryName,
      "userId": userId == null ? null : userId,
      
    };
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

    factory Comment.fromJson(Map<String, dynamic> json) => Comment(
      userId: json["userId"] == null ? null : List<String>.from(json["userId"].map((x) => x)),
      eventId: json["eventId"] == null ? null : List<String>.from(json["eventId"].map((x) => x)),
      id: json["id"] == null ? null : json["id"],
      commment: json["commment"] == null ? null : json["commment"],
      publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
      createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
      updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
      event: json["event"]== null ? null : json["event"],
      profileImage: json["profileImage"] == null ? null : json["profileImage"],
      userName: json["userName"] == null ? null : json["userName"],
      commentId: json["commentId"]== null ? null : json["commentId"],
    );

  Map<String, dynamic> toJson() => {
      "userId": userId == null ? null : List<String>.from(userId!.map((x) => x)),
      "eventId": eventId == null ? null : List<String>.from(eventId!.map((x) => x)),
      "id": id == null ? null : id,
      "commment": commment == null ? null : commment,
      "publishedAt": publishedAt == null ? null : publishedAt!.toIso8601String(),
      "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
      "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
      "event": event == null ? null : event,
      "profileImage": profileImage == null ? null : profileImage,
      "userName": userName == null ? null: userName,
      "commentId": commentId == null ? null: commentId,
     
      
    };
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

      factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        alternativeText: json["alternativeText"] == null ? null : json["alternativeText"],
        caption: json["caption"] == null ? null : json["caption"],
        hash: json["hash"] == null ? null : json["hash"],
        ext: json["ext"] == null ? null : json["ext"],
        mime: json["mime"] == null ? null : json["mime"],
        size: json["size"] == null ? null : json["size"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        url: json["url"] == null ? null : json["url"],
        formats: json["formats"] == null ? null : json["formats"],
        related: json["related"] == null ? null : List<String>.from(json["related"].map((x) => x)),
        provider: json["provider"] == null ? null : json["provider"],
        createdAt: json["createdAt"] == null ? null: DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null: DateTime.parse(json["updatedAt"]),
        profileImageId: json["profileImageId"] == null ? null : json["profileImageId"],
      );

  // Map<String, dynamic> toJson() => {
  //       "id": id == null ? null : id,
  //       "provider": provider == null ? null : provider,
  //       "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
  //       "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
  //       "countryId": countryId == null ? null : countryId,
  //       "profileImage": profileImage == null ? null : profileImage,
  //       "cityId": cityId == null ? null : cityId,
  //       "cards": List<dynamic>.from(cards!.map((x) => x.toJson())),
  //       "visitors": List<dynamic>.from(visitors!.map((x) => x.toJson())),
  //       "comments": List<dynamic>.from(comments!.map((x) => x.toJson())),
  //       "creator": List<dynamic>.from(creator!.map((x) => x.toJson())),
  //       "userId": userId == null ? null : userId,   
  //     };
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
