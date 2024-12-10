import '../../core.dart';

class PictureService {
  static var dio = Dio();

  static Future<List<PictureModel>?> fetchPictures({int limit = 5, int page = 1}) async {
    try {
      var response = await dio.get('https://picsum.photos/v2/list', queryParameters: {'limit': limit, 'page': page});
      if (response.statusCode == 200) {
        List<PictureModel> pictures = (response.data as List).map((i) => PictureModel.fromJson(i)).toList();
        return pictures;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  static Future<PictureModel?> fetchPictureDetail(String id) async {
    try {
      var response = await dio.get('https://picsum.photos/id/$id/info');
      if (response.statusCode == 200) {
        return PictureModel.fromJson(response.data);
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}