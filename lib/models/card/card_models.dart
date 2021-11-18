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

    String?id;
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
}

class UsersId {
    UsersId({
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
        this.usersIdId,
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
    String? usersIdId;
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
