import '../../../core.dart';

class PictureBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListPictureController>(() => ListPictureController());
    Get.lazyPut<DetailPictureController>(() => DetailPictureController());
  }
}