import '../../../core.dart';

class DetailPictureController extends GetxController {
  var picture = PictureModel().obs;
  var isLoading = true.obs;

  void fetchPictureDetail(String id) async {
    try {
      isLoading(true);
      var pictureDetail = await PictureService.fetchPictureDetail(id);
      if (pictureDetail != null) {
        picture.value = pictureDetail;
      }
    } finally {
      isLoading(false);
    }
  }
}