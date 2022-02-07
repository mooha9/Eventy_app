import 'dart:convert';

import 'package:EventySA/models/event.dart';

NewCard card1FromJson(String str) => NewCard.fromJson(json.decode(str));

String card1ToJson(NewCard data) => json.encode(data.toJson());

class NewCard {
  NewCard({
    this.id,
    this.cardName,
    this.city,
    this.urlWork,
    this.tagLine,
    this.email,
    this.phoneNumber,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.logo,
    this.cardsCategory,
    this.user,
    this.usersPermissionsUser,
    this.usersId,
    this.participant,
    this.newCardId,
  });

  String? id;
  String? cardName;
  String? city;
  String? urlWork;
  String? tagLine;
  String? email;
  String? phoneNumber;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  Logo? logo;
  CardsCategory? cardsCategory;
  String? user;
  String? usersPermissionsUser;
  User? usersId;
  CardsCategory? participant;
  String? newCardId;

  factory NewCard.fromJson(Map<String, dynamic> json) => NewCard(
        id: json["id"] == null ? null : json["id"],
        cardName: json["cardName"] == null ? null : json["cardName"],
        city: json["city"] == null ? null : json["city"],
        urlWork: json["urlWork"] == null ? null : json["urlWork"],
        tagLine: json["tagLine"] == null ? null : json["tagLine"],
        email: json["email"] == null ? null : json["email"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        logo: json["logo"] == null ? null : Logo.fromJson(json["logo"]),
        cardsCategory: json["category"] == null ? null : json["cardsCategory"],
        user: json["user"] == null ? null : json["user"],
        usersPermissionsUser: json["usersPermissionsUser"] == null
            ? null
            : json["usersPermissionsUser"],
        usersId:
            json["usersId"] == null ? null : User.fromJson(json["usersId"]),
        participant: json["participant"] == null ? null : json["participant"],
        newCardId: json["newCardId"] == null ? null : json["newCardId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "cardName": cardName == null ? null : cardName,
        "city": city == null ? null : city,
        "urlWork": urlWork == null ? null : urlWork,
        "tagLine": tagLine == null ? null : tagLine,
        "email": email == null ? null : email,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "publishedAt":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "logo": logo == null ? null : logo!.toJson(),
        "cardsCategory": cardsCategory == null ? null : cardsCategory,
        "user": user == null ? null : user,
        "usersPermissionsUser":
            usersPermissionsUser == null ? null : usersPermissionsUser,
        "usersId": usersId == null ? null : usersId,
        "participant": participant == null ? null : participant,
        "newCardId": newCardId == null ? null : newCardId,
      };
}

class CardsCategory {
  CardsCategory({
    this.id,
    this.fieldWork,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.cardsCategoryId,
  });

  String? id;
  String? fieldWork;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? cardsCategoryId;
  factory CardsCategory.fromJson(Map<String, dynamic> json) => CardsCategory(
        id: json["id"] == null ? null : json["id"],
        fieldWork: json["fieldWork"] == null ? null : json["fieldWork"],
        publishedAt: json["publishedAt"] == null
            ? null
            : DateTime.parse(json["publishedAt"]),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        cardsCategoryId:
            json["cardsCategoryId"] == null ? null : json["cardsCategoryId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "fieldWork": fieldWork == null ? null : fieldWork,
        "publishedAt":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "createdAt": createdAt == null ? null : createdAt!.toIso8601String(),
        "updatedAt": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "cardsCategoryId": cardsCategoryId == null ? null : cardsCategoryId,
      };
}

class Logo {
  Logo({
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
    this.logoId,
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
  String? logoId;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
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
        logoId: json["logoId"] == null ? null : json["logoId"],
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
        "logoId": logoId == null ? null : logoId,
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
