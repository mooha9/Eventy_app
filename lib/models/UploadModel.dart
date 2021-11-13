// To parse this JSON data, do
//
//     final upload = uploadFromJson(jsonString);

import 'dart:convert';

// Upload uploadFromJson(String str) => Upload.fromJson(json.decode(str));
List<Upload> uploadFromJson(String str) => List<Upload>.from(json.decode(str).map((x) => Upload.fromJson(x)));

String uploadToJson(Upload data) => json.encode(data.toJson());

class Upload {
  Upload({
    this.id,
    this.name,
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
    this.related,
  });

  int ?id;
  String ?name;
  String ?alternativeText;
  String ?caption;
  int? width;
  int ?height;
  Formats? formats;
  String ?hash;
  String ?ext;
  String ?mime;
  double ?size;
  String ?url;
  dynamic previewUrl;
  String ?provider;
  dynamic providerMetadata;
  DateTime ?createdAt;
  DateTime ?updatedAt;
  List<Related> ?related;

  factory Upload.fromJson(Map<String, dynamic> json) => Upload(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    alternativeText: json["alternativeText"] == null ? null : json["alternativeText"],
    caption: json["caption"] == null ? null : json["caption"],
    width: json["width"] == null ? null : json["width"],
    height: json["height"] == null ? null : json["height"],
    formats: json["formats"] == null ? null : Formats.fromJson(json["formats"]),
    hash: json["hash"] == null ? null : json["hash"],
    ext: json["ext"] == null ? null : json["ext"],
    mime: json["mime"] == null ? null : json["mime"],
    size: json["size"] == null ? null : json["size"].toDouble(),
    url: json["url"] == null ? null : json["url"],
    previewUrl: json["previewUrl"],
    provider: json["provider"] == null ? null : json["provider"],
    providerMetadata: json["provider_metadata"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    related: json["related"] == null ? null : List<Related>.from(json["related"].map((x) => Related.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "alternativeText": alternativeText == null ? null : alternativeText,
    "caption": caption == null ? null : caption,
    "width": width == null ? null : width,
    "height": height == null ? null : height,
    "formats": formats == null ? null : formats!.toJson(),
    "hash": hash == null ? null : hash,
    "ext": ext == null ? null : ext,
    "mime": mime == null ? null : mime,
    "size": size == null ? null : size,
    "url": url == null ? null : url,
    "previewUrl": previewUrl,
    "provider": provider == null ? null : provider,
    "provider_metadata": providerMetadata,
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
    "related": related == null ? null : List<dynamic>.from(related!.map((x) => x.toJson())),
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
    thumbnail: json["thumbnail"] == null ? null : Large.fromJson(json["thumbnail"]),
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
  int ?height;
  double ?size;
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

class Related {
  Related({
    this.contentType,
    this.id,
    this.title,
    this.content,
    this.user,
    this.category,
    this.likes,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
  });

  String? contentType;
  int? id;
  String ?title;
  String? content;
  int? user;
  int? category;
  String ?likes;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Related.fromJson(Map<String, dynamic> json) => Related(
    contentType: json["__contentType"] == null ? null : json["__contentType"],
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    content: json["content"] == null ? null : json["content"],
    user: json["user"] == null ? null : json["user"],
    category: json["category"] == null ? null : json["category"],
    likes: json["likes"] == null ? null : json["likes"],
    publishedAt: json["published_at"] == null ? null : DateTime.parse(json["published_at"]),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "__contentType": contentType == null ? null : contentType,
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "content": content == null ? null : content,
    "user": user == null ? null : user,
    "category": category == null ? null : category,
    "likes": likes == null ? null : likes,
    "published_at": publishedAt == null ? null : publishedAt!.toIso8601String(),
    "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
    "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
  };
}
