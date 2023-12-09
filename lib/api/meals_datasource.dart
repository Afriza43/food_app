import 'package:food_app/api/baseNetwork.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadMeals() {
    return BaseNetwork.get("/1/filter.php?c=Seafood");
  }

  Future<Map<String, dynamic>> loadDetailMeals(int idDiterima) {
    String id = idDiterima.toString();
    return BaseNetwork.get("/filter.php?c=Seafood/$id");
  }
}
