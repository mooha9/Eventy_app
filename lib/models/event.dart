// To parse this JSON data, do
//
//     final Event = EventFromJson(jsonString);

// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';

import 'UploadModel.dart';

Event EventFromJson(String str) => Event.fromJson(json.decode(str));

EventImage imagesFromEvent(String str) => EventImage.fromJson(json.decode(str));

String EventToJson(Event data) => json.encode(data.toJson());

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class Event {
  Event({
    this.id,
    this.title,
    this.content,
    this.contactNumber,

    this.user,
    this.category,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.EventImages,
    this.tags,
    this.comments,
    this.likes,
  });

  int? id;
  String? title;
  String? content;
  String? contactNumber;

  String? likes;
  User? user;
  Category? category;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<EventImage>? EventImages;
  List<Tag>? tags;
  List<Comment>? comments;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        content: json["content"] == null ? null : json["content"],
    contactNumber: json["contactNumber"] == null ? null : json["contactNumber"],
        likes: json["likes"] == null ? null : json["likes"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        category: json["category"] == null
            ? null
            : Category.fromJson(json["category"]),
        publishedAt: DateTime.parse(
          json["published_at"] == null ? null : json["published_at"],
        ),
        createdAt: DateTime.parse(
          json["created_at"] == null ? null : json["created_at"],
        ),
        updatedAt: DateTime.parse(
          json["updated_at"] == null ? null : json["updated_at"],
        ),
        EventImages: List<EventImage>.from(
            json["Event_images"].map((x) => EventImage.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        comments: List<Comment>.from(
            json["comments"].map((x) => Comment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "contactNumber": contactNumber,
        "likes": likes,
        "user": user!.toJson(),
        "category": category!.toJson(),
        "published_at": publishedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "Event_images": List<dynamic>.from(EventImages!.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags!.map((x) => x.toJson())),
        "comments": List<dynamic>.from(comments!.map((x) => x.toJson())),
      };
}

class Tag {
  Tag({
    this.id,
    this.tagName,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? tagName;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        tagName: json["tagName"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "tagName": tagName,
        "published_at": publishedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
      };
}

class EventImage {
  EventImage({
    required this.id,
    required this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.providerMetadata,
    this.createdAt,
    this.updatedAt,
  });

  int id;
  String name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  dynamic previewUrl;
  String? provider;
  dynamic providerMetadata;
  String? createdAt;
  String? updatedAt;

  factory EventImage.fromJson(Map<String, dynamic> json) => EventImage(
        id: json["id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats == null ? null : formats!.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class Thumbnail {
  Thumbnail({
    required this.name,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.width,
    required this.height,
    required this.size,
    required this.path,
    required this.url,
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

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        width: json["width"],
        height: json["height"],
        size: json["size"].toDouble(),
        path: json["path"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "width": width,
        "height": height,
        "size": size,
        "path": path,
        "url": url,
      };
}

class Category {
  Category({
    this.id,
    this.title,
    this.categoryImage,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? title;
  String? categoryImage;
  DateTime? publishedAt;
  String? createdAt;
  String? updatedAt;

  Category copyWith({
    int? id,
    String? title,
    String? categoryImage,
    DateTime? publishedAt,
    String? createdAt,
    String? updatedAt,
  }) =>
      Category(
        id: id ?? this.id,
        title: title ?? this.title,
        categoryImage: categoryImage ?? this.categoryImage,
        publishedAt: publishedAt ?? this.publishedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        title: json["title"],
        categoryImage: json["CategoryImage"],
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "CategoryImage": categoryImage,
        "published_at": publishedAt?.toIso8601String(),
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class Comment {
  Comment({
     this.id,
     this.commentText,
     this.publishedAt,
     this.createdAt,
     this.updatedAt,
    // this.user,
  });

  int? id;
  String? commentText;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  // User? user;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        id: json["id"],
        commentText: json["CommentText"] == null ? null : json["CommentText"],
        // user: json["user"] == null ? null : User.fromJson(json["user"]),
        publishedAt: DateTime.parse(json["published_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "CommentText": commentText == null ? null : commentText,
        "published_at": publishedAt!.toIso8601String(),
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        // "user": user == null ? null : user!.toJson(),
      };
}

class User {
  User({
    this.id,
    this.username,
    this.email,
    this.provider,
    this.confirmed,
    this.blocked,
    // this.role,
    this.createdAt,
    this.updatedAt,
    this.comments,
  });

  int? id;
  String? username;
  String? email;
  String? provider;
  bool? confirmed;
  dynamic blocked;
  List<Comment>? comments;

  // Role? role;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"] == null ? null : json["id"],
        username: json["username"] == null ? null : json["username"],
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
        comments: json["comments"] == null
            ? null
            : List<Comment>.from(
                json["comments"].map((x) => Comment.fromJson(x))),
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
        "comments": comments == null
            ? null
            : List<dynamic>.from(comments!.map((x) => x.toJson())),
      };
}

class Role {
  Role({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
  });

  int id;
  String name;
  String description;
  String type;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "type": type == null ? null : type,
      };
}
