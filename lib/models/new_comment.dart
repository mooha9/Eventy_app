// To parse this JSON data, do
//
//     final newComment = newCommentFromJson(jsonString);

import 'dart:convert';

import 'event.dart';

NewComment newCommentFromJson(String str) =>
    NewComment.fromJson(json.decode(str));

String newCommentToJson(NewComment data) => json.encode(data.toJson());

class NewComment {
  NewComment({
    this.id,
    this.commentText,
    this.user,
    this.event,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? commentText;
  User? user;
  Event? event;
  DateTime? publishedAt;
  String? createdAt;
  String? updatedAt;

  factory NewComment.fromJson(Map<String, dynamic> json) => NewComment(
        id: json["id"] == null ? null : json["id"],
        commentText: json["CommentText"] == null ? null : json["CommentText"],
        user: json["user"] == null ? null : User.fromJson(json["user"]),
        event: json["Event"] == null ? null : Event.fromJson(json["Event"]),
        publishedAt: json["published_at"] == null
            ? null
            : DateTime.parse(json["published_at"]),
        createdAt: json["created_at"] == null ? null : json["created_at"],
        updatedAt: json["updated_at"] == null ? null : json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "CommentText": commentText == null ? null : commentText,
        "user": user == null ? null : user!.toJson(),
        "Event": event == null ? null : event!.toJson(),
        "published_at":
            publishedAt == null ? null : publishedAt!.toIso8601String(),
        "created_at": createdAt == null ? null : createdAt,
        "updated_at": updatedAt == null ? null : updatedAt,
      };
}
