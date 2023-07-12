class DataModelNews {
  String? message;
  List<News>? news;

  DataModelNews({this.message, this.news});

  DataModelNews.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['news'] != null) {
      news = <News>[];
      json['news'].forEach((v) {
        news!.add(new News.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.news != null) {
      data['news'] = this.news!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class News {
  String? sId;
  int? id;
  String? title;
  String? description;
  String? imgPath;
  String? date;
  String? createdAt;
  String? updatedAt;
  int? iV;

  News(
      {this.sId,
      this.id,
      this.title,
      this.description,
      this.imgPath,
      this.date,
      this.createdAt,
      this.updatedAt,
      this.iV});

  News.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    id = json['id'];
    title = json['title'];
    description = json['description'];
    imgPath = json['imgPath'];
    date = json['date'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['description'] = this.description;
    data['imgPath'] = this.imgPath;
    data['date'] = this.date;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}

class ModelsPrograms {
  String? message;
  List<Programs>? programs;

  ModelsPrograms({this.message, this.programs});

  ModelsPrograms.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['programs'] != null) {
      programs = <Programs>[];
      json['programs'].forEach((v) {
        programs!.add(new Programs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.programs != null) {
      data['programs'] = this.programs!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Programs {
  String? sId;
  int? id;
  String? title;
  String? price;
  String? imgPath;
  String? description;
  String? createdAt;
  String? updatedAt;
  int? iV;

  Programs(
      {this.sId,
      this.id,
      this.title,
      this.price,
      this.imgPath,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.iV});

  Programs.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    id = json['id'];
    title = json['title'];
    price = json['price'];
    imgPath = json['imgPath'];
    description = json['description'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['price'] = this.price;
    data['imgPath'] = this.imgPath;
    data['description'] = this.description;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['__v'] = this.iV;
    return data;
  }
}
