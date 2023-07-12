import 'package:movie_app/app/data/providers/api.dart';

class HomeRepository {
  final MyApi api;

  HomeRepository(this.api);

  getAll() {
    return api.getAll();
  }

  getId(id) {
    return api.getId(id);
  }

  delete(id) {
    return api.delete(id);
  }

  edit(obj) {
    return api.edit(obj);
  }

  add(obj) {
    return api.add(obj);
  }
}
