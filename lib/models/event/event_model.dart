class Event {
  Event({
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
    this.comments,
    this.eventPhotos,
    this.eventId,
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
  EventCreator? eventCreator;
  EventsCategory? visitor;
  Participant? participant;
  EventsCategory? eventsCategory;
  bool? isPublic;
  int? like;
  List<Comment>? comments;
  List<EventsCategory>? eventPhotos;
  String? eventId;
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

class EventCreator {
  EventCreator({
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
    this.eventCreatorId,
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
  String? countryId;
  ProfileImage? profileImage;
  String? role;
  String? cityId;
  String? eventCreatorId;
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

  Medium? thumbnail;
  Medium? large;
  Medium? medium;
  Medium? small;
}

class Medium {
  Medium({
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

class EventsCategory {
  EventsCategory({
    this.eventPhotos,
    this.id,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.eventId,
    this.eventsCategoryId,
    this.categoryName,
    this.userId,
  });

  List<ProfileImage>? eventPhotos;
  String? id;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? eventId;
  String? eventsCategoryId;
  String? categoryName;
  String? userId;
}

class Participant {
  Participant({
    this.id,
    this.userName,
    this.type,
    this.typeOfWork,
    this.publishedAt,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.profileImage,
    this.card,
    this.cards,
    this.events,
    this.participantId,
  });

  String? id;
  String? userName;
  String? type;
  String? typeOfWork;
  DateTime? publishedAt;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? profileImage;
  String? card;
  List<String>? cards;
  List<String>? events;
  String? participantId;
}
