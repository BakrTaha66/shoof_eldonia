import 'package:dio/dio.dart';

import '../../models/user_model.dart';

// String url = 'https://shoofeldonia.com/api/register';
// String url1 = 'https://shoofeldonia.com/api/login';
// Dio dio = Dio();

// bool isUserLoggedIn = false;
// String? token;
// Future<void> sendData(UserModel userModel) async {
//   Response response = await dio.post(
//     url,
//     data: userModel.toJson(),
//   );
//
//   return response.data;
// }
//
// Future<Response?> sendLogin(UserModel userModel) async {
//
//
//   try{
//     var response = await dio.post(
//         url1,
//         data: userModel.toJson(),
//         options: Options(
//             headers: {
//               'Content-Type': 'application/json',
//               'Accept': 'application/json',
//             }
//         )
//     );
//     print(response.data);
//     return response;
//   }catch (e) {
//     print(e.toString());
//   }
//   return null;
// }

// Future<void> login(UserModel userModel) async{
//
//
//   Dio dio = Dio();
//
//   try{
//     Response response = await dio.post(url1,
//     data: userModel.toJson());
//
//     if(response.statusCode == 200){
//       if(response.data['success'] == true){
//         print(response.data['data']['token']);
//
//
//         await sharedPreferences!.setString('token', response.data['data']['token']);
//         setState(() {
//           isUserLoggedIn = true;
//         });
//       } else{
//         print(response.data['message']);
//       }
//     }
//
//   } on DioError catch (e){
//     print('Error from server : $e');
//   }
// }

// WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//   final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   token = sharedPreferences!.getString('token');
//   if(token != null) {
//     isUserLoggedIn = true;
//   }
// });