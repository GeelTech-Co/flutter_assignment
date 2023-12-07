import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../features/authentication/login/data/model/authentication_model.dart';
import '../../../features/item/data/model/item_model.dart';
import '../../helper/constance.dart';
part 'app_service_client.g.dart';

@RestApi(baseUrl: Constance.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST(Constance.pathLogin)
  Future<AuthenticationResponse> login(
    @Field("username") String username,
    @Field("password") String password,
  );

  @GET(Constance.pathItem)
  Future<List<GetItemResponse>> getItem();
}
