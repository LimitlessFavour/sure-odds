
import '../../helper/utils/ad_manager.dart';

class AdsRepository {
  const AdsRepository({
    required AdManager adManager,
  }) : _adManager = adManager;

  final AdManager _adManager;

  List<String> get unitIdList => _adManager.unitIdList;

}
