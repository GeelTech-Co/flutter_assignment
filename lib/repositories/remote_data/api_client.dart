import 'package:assignment_test/models/auth/login_models.dart';
import 'package:assignment_test/models/items/items_res.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('/login')
  Future<LoginRes> login({@Body() required LoginModel req});

  @GET('/logout')
  Future<GenericRes> logout();

  @GET('/get_user')
  Future<LoginRes> getUser();

  @GET('/items')
  Future<ItemsRes> getItems();

  @GET('item?id={itemId}')
  Future<ItemDtails> geetItemDetails({@Path() required String itemId});
}
