import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveDate(key: 'isOnBoardingVisited', value: true);
}
