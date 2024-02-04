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
  Future<bool> existePeliculaFavorita(int peliculaId) async{
    final isar = await db;

    final Pelicula? esFavorita = await isar.peliculas
    .filter()
    .idEqualTo(peliculaId)
    .findFirst();

    return esFavorita != null;
  }

  @override
  Future<List<Pelicula>> loadPeliculas({int limit = 10, offset = 0}) async{
    final isar = await db;

    return isar.peliculas.where()
    .offset(offset)
    .limit(limit)
    .findAll();
  }

  @override
  Future<void> toggleFavorite(Pelicula pelicula) async{
    final isar = await db;

    final peliculaFavorita = await isar.peliculas
    .filter()
    .idEqualTo(pelicula.id)
    .findFirst();

    if (peliculaFavorita != null) {
      isar.writeTxnSync(() => isar.peliculas.deleteSync(pelicula.isarId!));
    }else{
      isar.writeTxnSync(() => isar.peliculas.putSync(pelicula));
    }
  }

}