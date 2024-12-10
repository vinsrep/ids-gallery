import '../core.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: AppRoutes.home,
      page: () => const ListPictureView(),
      binding: PictureBindings(),
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => const DetailPictureView(),
      binding: PictureBindings(),
    ),
  ];
}