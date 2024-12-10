class PictureModel {
  String? id;
  String? author;
  String? url;
  String? downloadUrl;

  PictureModel({this.id, this.author, this.url, this.downloadUrl});

  factory PictureModel.fromJson(Map<String, dynamic> json) {
    return PictureModel(
      id: json['id'],
      author: json['author'],
      url: json['url'],
      downloadUrl: json['download_url'],
    );
  }
}