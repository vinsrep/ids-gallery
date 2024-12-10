import '../../../core.dart';

class ListPictureView extends StatelessWidget {
  const ListPictureView({super.key});

  @override
  Widget build(BuildContext context) {
    final ListPictureController controller = Get.find<ListPictureController>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Photo'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: controller.pictures.length,
            itemBuilder: (context, index) {
              var picture = controller.pictures[index];
              return ListContentWidget(
                picture: picture,
                onTap: () {
                  Get.toNamed(AppRoutes.detail, arguments: picture.id);
                },
              );
            },
          );
        }
      }),
    );
  }
}