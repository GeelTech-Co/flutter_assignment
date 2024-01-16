import 'package:assignment_test/features/item/data/model/item_profile_response.dart';
import 'package:assignment_test/features/item/data/model/items_response.dart';
import 'package:dio/dio.dart'; //hide Headers;
import 'package:retrofit/retrofit.dart';
import '../../features/login/data/model/login_request_body.dart';
import '../../features/login/data/model/login_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
      @Body() LoginRequestBody loginRequestBody,);

  @GET(ApiConstants.getUser)
  Future<LoginResponse> getUser();

  @GET(ApiConstants.logout)
  Future<LoginResponse> logout();

  @GET(ApiConstants.items)
  Future<ItemsResponse> items();

  @GET(ApiConstants.itemProfile)
  Future<ItemProfileResponse> itemProfile(
      @Query('id') int id,
      );
}
