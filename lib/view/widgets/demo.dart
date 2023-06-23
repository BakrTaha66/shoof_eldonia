// class ApiClient {
//   final Dio _dio = Dio();
//
//
//   Future<dynamic> registerUser(UserModel userModel) async {
//     //IMPLEMENT USER REGISTRATION
//     try{
//       Response response = await _dio.post(
//         baseUrl + register,
//         data: userModel.toJson(), //QUERY PARAMETERS
//       );
//       //returns the successful json object
//       return response.data;
//     }  on DioError catch (e) {
//       //returns the error object if there is
//       return e.response!.data;
//     }
//   }
//
//   Future<Response> loginUser(UserModel userModel) async {
//     //IMPLEMENT USER LOGIN
//
//     try{
//       Response response = await _dio.post(
//         baseUrl + login,
//         data: userModel.toJson(),
//       );
//       //returns the successful user data json object
//       return response.data;
//     }on DioError catch (e) {
//       //returns the error object if any
//       return e.response!.data;
//     }
//
//   }
//
//   Future<dynamic> getPrograms(String accessToken) async {
//     //GET USER PROFILE DATA
//     try{
//       Response response = await _dio.get(
//         baseUrl + programsP,
//         options: Options(
//           headers: {
//             'Authorization': 'Bearer $accessToken',
//           },
//         ),
//       );
//       return response.data;
//     } on DioError catch (e) {
//       return e.response!.data;
//     }
//   }
//
// Future<Response> logout(String accessToken) async {
//   //IMPLEMENT USER LOGOUT
//   try{
//     Response response = await _dio.get(
//       url,
//       options: Options(
//         headers: {
//           'Authorization': 'Bearer ${accessToken}',
//         },
//       ),
//     );
//     return response.data;
//   } on DioError catch (e) {
//     return e.response!.data;
//   }
// }
// }


// class DioClient{
//   final Dio _dio = Dio();
//
//   final _baseUrl = 'https://shoofeldonia.com/api';
//
//   Future<Hotel> getHotel({required String id}) async {
//     Response response = await _dio.get(_baseUrl + userEndPoint);
//
//     print('Hotel : ${response.data}');
//
//     Hotel hotel = Hotel.fromJson(response.data);
//
//     return hotel;
//   }
// }




// class DioHelper {
//   late Dio dio;
//   init(){
//     dio = Dio(
//       BaseOptions(
//         baseUrl: 'https://shoofeldonia.com/api/hotels',
//         headers: {
//           'Accept' : 'application/json',
//           'Content-Type' : 'application/json'
//         }
//       )
//     );
//   }
//
//
//  Future<Response> getData({
//     required String url,
//    Map<String, dynamic>? queryParameters,
//    String? accessToken}) async {
//
//     try{
//       dio.options.headers={
//         'Authorization' : 'Bearer $accessToken ',
//         'Accept' : 'application/json',
//         'Content-Type' : 'application/json'
//       };
//       final Response response = await dio.get(url);
//       return response;
//     }
//     catch(e){
//       rethrow;
//     }
//
// }
//
// }