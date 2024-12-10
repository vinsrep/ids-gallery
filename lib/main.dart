import 'core.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GetX Gallery',
      initialRoute: AppRoutes.home,
      getPages: AppPages.routes,
    );
  }
}