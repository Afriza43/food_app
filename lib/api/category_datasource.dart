import 'package:food_app/api/baseNetwork.dart';

class ApiDataSource {
  static ApiDataSource instance = ApiDataSource();

  Future<Map<String, dynamic>> loadCategories() {
    return BaseNetwork.get("/1/categories.php");
  }

  Future<Map<String, dynamic>> loadDetailCategories(int idDiterima) {
    String id = idDiterima.toString();
    return BaseNetwork.get("/categories.php/$id");
  }
}
