import 'package:food_app/api/baseNetwork.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadMeals() {
    return BaseNetwork.get("/1/lookup.php");
  }

  Future<Map<String, dynamic>> loadDetailMeals(int idDiterima) {
    String id = idDiterima.toString();
    return BaseNetwork.get("/1/lookup.php?i=$id");
  }
}
