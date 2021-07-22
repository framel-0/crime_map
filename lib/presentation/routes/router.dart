import 'package:auto_route/auto_route.dart';

import '../crime/crime_form/crime_form_page.dart';
import '../crime/crime_form/widgets/image_picker_widget.dart';
import '../crime/crime_map/crime_map_page.dart';
import '../sign_in/sign_in_page.dart';
import '../splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    // initial route is named "/"
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignInPage),
    AutoRoute(page: CrimeMapPage),
    AutoRoute(page: CrimeFormPage),
    AutoRoute(page: ImagePickerPage),
  ],
)
class $AppRouter {}
