import 'package:dio/dio.dart';
import 'package:flutter_project_8/album_model.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_album_provider.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/albums')
abstract class RestAlbumProvider {
  factory RestAlbumProvider(Dio dio, {String baseUrl}) = _RestAlbumProvider;

  @GET('/albums')
  Future<List<AlbumModel>> fetchAlbums();

  @POST('/albums')
  Future<HttpResponse<void>> createAlbum(@Body() AlbumModel model);
}