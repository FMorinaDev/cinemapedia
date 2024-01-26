import 'package:isar/isar.dart';
import 'package:cinemapedia/domain/datasources/local_storage_datasource.dart';
import 'package:cinemapedia/domain/entities/pelicula.dart';
import 'package:path_provider/path_provider.dart';

class IsarDatasource extends LocalStorageDatasource{
  late Future<Isar> db;
  
  IsarDatasource(){
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();

    if(Isar.instanceNames.isEmpty){
      return await Isar.open(
        [PeliculaSchema], 
        inspector: true,
        directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }
  @override
  Future<bool> existePeliculaFavorita(int peliculaId) {
    // TODO: implement existePeliculaFavorita
    throw UnimplementedError();
  }

  @override
  Future<List<Pelicula>> loadPeliculas({int limit = 10, offset = 0}) {
    // TODO: implement loadPeliculas
    throw UnimplementedError();
  }

  @override
  Future<void> toggleFavorite(Pelicula pelicula) {
    // TODO: implement toggleFavorite
    throw UnimplementedError();
  }

}