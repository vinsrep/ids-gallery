import '../../../core.dart';

class ListPictureController extends GetxController {
  var pictures = <PictureModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchPictures();
    super.onInit();
  }

  void fetchPictures() async {
    try {
      isLoading(true);
      var picturesList = await PictureService.fetchPictures();
      if (picturesList != null) {
        pictures.assignAll(picturesList);
      }
    } finally {
      isLoading(false);
    }
  }
}