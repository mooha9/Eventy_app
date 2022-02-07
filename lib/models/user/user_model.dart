import 'package:eventy_app/models/card/card_models.dart';

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
  List<NewCard>? cards;
  List<CityId>? visitors;
  List<Comment>? comments;
  List<Creator>? creator;
  String? userId;

  factory User.fromJson(Map<String, dynamic> json) => User(
        confirmed: json["confirmed"] == null ? null : json["confirmed"],
        blocked: json["blocked"] == null ? null : json["blocked"],
        gender: json["gender"] == null ? null : json["gender"],
        id: json["id"] == null ? null : json["id"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        username: json["username"] == null ? null : json["username"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        firstName: json["firstName"] == null ? null : json["firstName"],
        email: json["email"] == null ? null : json["email"],
        age: json["age"] == null ? null : json["age"],
        provider: json["provider"] == null ? null : json["provider"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        countryId: json["countryId"] == null
            ? null
            : CityId.fromJson(json["countryId"]),
        profileImage: json["profileImage"] == null
            ? null
            : ProfileImage.fromJson(json["profileImage"]),
        cityId: json["cityId"] == null ? null : CityId.fromJson(json["cityId"]),
        cards:
            List<NewCard>.from(json["cards"].map((x) => NewCard.fromJson(x))),
        visitors:
            List<CityId>.from(json["visitors"].map((x) => CityId.fromJson(x))),
        comments: List<Comment>.from(
            json["comments"].map((x) => Comment.fromJson(x))),
        creator:
            List<Creator>.from(json["creator"].map((x) => Creator.fromJson(x))),
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
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "countryId": countryId == null ? null : countryId,
        "profileImage": profileImage == null ? null : profileImage,
        "cityId": cityId == null ? null : cityId,
        "cards": List<dynamic>.from(cards!.map((x) => x.toJson())),
        "visitors": List<dynamic>.from(visitors!.map((x) => x.toJson())),
        "comments": List<dynamic>.from(comments!.map((x) => x.toJson())),
        "creator": List<dynamic>.from(creator!.map((x) => x.toJson())),
        "userId": userId == null ? null : userId,
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
        cityName: json["cityName"] == null ? null : json["cityName"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        countryId: json["countryId"] == null ? null : json["countryId"],
        cityIdId: json["cityIdId"] == null ? null : json["cityIdId"],
        countryName: json["countryName"] == null ? null : json["countryName"],
        userId: json["name"] == null ? null : json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "cityName": cityName == null ? null : cityName,
        "publishedAt":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "countryId": countryId == null ? null : countryId,
        "cityIdId": cityIdId == null ? null : cityIdId,
        "countryName": countryName == null ? null : countryName,
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
        userId: json["userId"] == null
            ? null
            : List<String>.from(json["userId"].map((x) => x)),
        eventId: json["eventId"] == null
            ? null
            : List<String>.from(json["eventId"].map((x) => x)),
        id: json["id"] == null ? null : json["id"],
        commment: json["commment"] == null ? null : json["commment"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        event: json["event"] == null ? null : json["event"],
        profileImage:
            json["profileImage"] == null ? null : json["profileImage"],
        userName: json["userName"] == null ? null : json["userName"],
        commentId: json["commentId"] == null ? null : json["commentId"],
      );

  Map<String, dynamic> toJson() => {
        "userId":
            userId == null ? null : List<String>.from(userId!.map((x) => x)),
        "eventId":
            eventId == null ? null : List<String>.from(eventId!.map((x) => x)),
        "id": id == null ? null : id,
        "commment": commment == null ? null : commment,
        "publishedAt":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "event": event == null ? null : event,
        "profileImage": profileImage == null ? null : profileImage,
        "userName": userName == null ? null : userName,
        "commentId": commentId == null ? null : commentId,
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

  factory Creator.fromJson(Map<String, dynamic> json) => Creator(
        id: json["id"] == null ? null : json["id"],
        photo: json["photo"] == null
            ? null
            : List<String>.from(json["photo"].map((x) => x)),
        locationName:
            json["locationName"] == null ? null : json["locationName"],
        eventTimeEnd:
            json["eventTimeEnd"] == null ? null : json["eventTimeEnd"],
        eventName: json["eventName"] == null ? null : json["eventName"],
        eventDate: json["eventDate"] == null
            ? null
            : DateTime.parse(json["eventDate"]),
        eventTimeStart:
            json["eventTimeStart"] == null ? null : json["eventTimeStart"],
        shortNote: json["shortNote"] == null ? null : json["shortNote"],
        locationLink:
            json["locationLink"] == null ? null : json["locationLink"],
        numberOfDays:
            json["numberOfDays"] == null ? null : json["numberOfDays"],
        description: json["description"] == null ? null : json["description"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        mainImage: json["mainImage"] == null ? null : json["mainImage"],
        locatoinName:
            json["locatoinName"] == null ? null : json["locatoinName"],
        locatoinUrl: json["locatoinUrl"] == null ? null : json["locatoinUrl"],
        numberDays: json["numberDays"] == null ? null : json["numberDays"],
        timeEnd: json["timeEnd"] == null ? null : json["timeEnd"],
        timeStart: json["timeStart"] == null ? null : json["timeStart"],
        eventCreator:
            json["eventCreator"] == null ? null : json["eventCreator"],
        visitor: json["visitor"] == null ? null : json["visitor"],
        participant: json["participant"] == null ? null : json["participant"],
        eventsCategory:
            json["eventsCategory"] == null ? null : json["eventsCategory"],
        isPublic: json["isPublic"] == null ? null : json["isPublic"],
        like: json["like"] == null ? null : json["like"],
        creatorId: json["creatorId"] == null ? null : json["creatorId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "photo": photo == null ? null : List<String>.from(photo!.map((x) => x)),
        "locationName": locationName == null ? null : locationName,
        "publishedAt":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "eventTimeEnd": eventTimeEnd == null ? null : eventTimeEnd,
        "eventName": eventName == null ? null : eventName,
        "eventDate": eventDate == null ? null : eventDate!.toIso8601String(),
        "eventTimeStart": eventTimeStart == null ? null : eventTimeStart,
        "shortNote": shortNote == null ? null : shortNote,
        "locationLink": locationLink == null ? null : locationLink,
        "numberOfDays": numberOfDays == null ? null : numberOfDays,
        "description": description == null ? null : description,
        "mainImage": mainImage == null ? null : mainImage,
        "locatoinName": locatoinName == null ? null : locatoinName,
        "locatoinUrl": locatoinUrl == null ? null : locatoinUrl,
        "numberDays": numberDays == null ? null : numberDays,
        "timeEnd": timeEnd == null ? null : timeEnd,
        "timeStart": timeStart == null ? null : timeStart,
        "eventCreator": eventCreator == null ? null : eventCreator,
        "visitor": visitor == null ? null : visitor,
        "participant": participant == null ? null : participant,
        "eventsCategory": eventsCategory == null ? null : eventsCategory,
        "isPublic": isPublic == null ? null : isPublic,
        "like": like == null ? null : like,
        "creatorId": creatorId == null ? null : creatorId,
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

  factory ProfileImage.fromJson(Map<String, dynamic> json) => ProfileImage(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        alternativeText:
            json["alternativeText"] == null ? null : json["alternativeText"],
        caption: json["caption"] == null ? null : json["caption"],
        hash: json["hash"] == null ? null : json["hash"],
        ext: json["ext"] == null ? null : json["ext"],
        mime: json["mime"] == null ? null : json["mime"],
        size: json["size"] == null ? null : json["size"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        url: json["url"] == null ? null : json["url"],
        formats:
            json["formats"] == null ? null : Formats.fromJson(json["formats"]),
        related: json["related"] == null
            ? null
            : List<String>.from(json["related"].map((x) => x)),
        provider: json["provider"] == null ? null : json["provider"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        profileImageId:
            json["profileImageId"] == null ? null : json["profileImageId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "alternativeText": alternativeText == null ? null : alternativeText,
        "caption": caption == null ? null : caption,
        "hash": hash == null ? null : hash,
        "ext": ext == null ? null : ext,
        "mime": mime == null ? null : mime,
        "size": size == null ? null : size,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "url": url == null ? null : url,
        "formats": formats == null ? null : formats!.toJson(),
        "provider": provider == null ? null : provider,
        "related":
            related == null ? null : List<String>.from(related!.map((x) => x)),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "profileImageId": profileImageId == null ? null : profileImageId,
      };
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

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: json["thumbnail"] == null
            ? null
            : Large.fromJson(json["thumbnail"]),
        large: json["large"] == null ? null : Large.fromJson(json["large"]),
        medium: json["medium"] == null ? null : Large.fromJson(json["medium"]),
        small: json["small"] == null ? null : Large.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail == null ? null : thumbnail!.toJson(),
        "large": large == null ? null : large!.toJson(),
        "medium": medium == null ? null : medium!.toJson(),
        "small": small == null ? null : small!.toJson(),
      };
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

  factory Large.fromJson(Map<String, dynamic> json) => Large(
        name: json["name"] == null ? null : json["name"],
        hash: json["hash"] == null ? null : json["hash"],
        ext: json["ext"] == null ? null : json["ext"],
        mime: json["mime"] == null ? null : json["mime"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        size: json["size"] == null ? null : json["size"].toDouble(),
        path: json["path"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "hash": hash == null ? null : hash,
        "ext": ext == null ? null : ext,
        "mime": mime == null ? null : mime,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "size": size == null ? null : size,
        "path": path,
        "url": url == null ? null : url,
      };
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
