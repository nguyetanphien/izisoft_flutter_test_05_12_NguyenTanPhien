import 'package:dio/dio.dart';
import 'package:izisoft_flutter_test_05_12_nguyentanphien/src/remote/service/respone/base_response.dart';
import 'package:retrofit/http.dart';


part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('campaigns/{id}')
  Future<BaseResponse> getCampaigns(@Path("id") String id);

}