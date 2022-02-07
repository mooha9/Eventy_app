// To parse this JSON data, do
//
//     final newEvent = newEventFromJson(jsonString);

import 'dart:convert';

import 'package:EventySA/models/event.dart';

NewEvent newEventFromJson(String str) => NewEvent.fromJson(json.decode(str));

String newEventToJson(NewEvent data) => json.encode(data.toJson());

class NewEvent {
  NewEvent({
    this.title,
    this.content,
    this.contactNumber,
    this.user,
    this.tags,
    this.images,
    this.category,
    this.comments,
    this.likes,
    this.publishedAt,
    this.createdBy,
    this.updatedBy,
  });

  String? title;
  String? content;
  String? contactNumber;
  User? user;
  List<Tag>? tags;
  List<EventImage>? images;
  Category? category;
  List<String>? comments;
  int? likes;
  DateTime? publishedAt;
  String? createdBy;
  String? updatedBy;

  NewEvent copyWith({
    String? title,
    String? content,
    String? contactNumber,
    User? user,
    List<EventImage>? images,
    List<Tag>? tags,
    Category? category,
    List<String>? comments,
    int? likes,
    DateTime? publishedAt,
    String? createdBy,
    String? updatedBy,
  }) =>
      NewEvent(
        title: title ?? this.title,
        content: content ?? this.content,
        contactNumber: contactNumber ?? this.contactNumber,
        user: user ?? this.user,
        tags: tags ?? this.tags,
        category: category ?? this.category,
        comments: comments ?? this.comments,
        likes: likes ?? this.likes,
        images: images ?? this.images,
        publishedAt: publishedAt ?? this.publishedAt,
        createdBy: createdBy ?? this.createdBy,
        updatedBy: updatedBy ?? this.updatedBy,
      );

  factory NewEvent.fromJson(Map<String, dynamic> json) => NewEvent(
        title: json["title"] == null ? null : json["title"],
        content: json["content"] == null ? null : json["content"],
        contactNumber:
            json["contactNumber"] == null ? null : json["contactNumber"],
        user: json["user"] == null ? null : json["user"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        category: json["category"] == null ? null : json["category"],
        comments: json["comments"] == null
            ? null
            : List<String>.from(json["comments"].map((x) => x)),
        likes: json["likes"] == null ? null : json["likes"],
        images: json["Event_images"] == null ? null : json["Event_images"],
        // todo ????
        publishedAt: json["published_at"] == null
            ? null
            : DateTime.parse(json["published_at"]),
        createdBy: json["created_by"] == null ? null : json["created_by"],
        updatedBy: json["updated_by"] == null ? null : json["updated_by"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "content": content == null ? null : content,
        "contactNumber": contactNumber == null ? null : contactNumber,
        "user": user == null ? null : user!.toJson(),
        "tags":
            tags == null ? null : List<Tag>.from(tags!.map((x) => x.toJson())),
        // "Event_images": images == null
        //     ? null
        //     : List<EventImage>.from(images!.map((x) => x.toJson())),
        "Event_images": List<dynamic>.from(images!.map((x) => x.toJson())),

        "category": category == null ? null : category!.toJson(),
        "comments": comments == null
            ? null
            : List<String>.from(comments!.map((x) => x)),
        "likes": likes == null ? null : likes,
        "published_at":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "created_by": createdBy == null ? null : createdBy,
        "updated_by": updatedBy == null ? null : updatedBy,
      };
}
