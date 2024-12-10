import '../../../core.dart';

class DetailPictureView extends StatelessWidget {
  const DetailPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailPictureController controller = Get.find<DetailPictureController>();
    final String id = Get.arguments;

    controller.fetchPictureDetail(id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Picture Detail'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          var picture = controller.picture.value;
          return DetailContentWidget(picture: picture);
        }
      }),
    );
  }
}