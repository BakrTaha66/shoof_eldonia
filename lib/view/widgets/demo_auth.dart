// Future<dynamic> _handleRegister() async{
//   if(_key.currentState!.validate()) {
//     //show snackbar to indicate loading
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: const Text('Processing Data'),
//       backgroundColor: Colors.green.shade300,
//     ));
//
//     //the user data to be sent
//
//     //get response from ApiClient
//     dynamic res = await _apiClient.registerUser(UserModel(
//       name: userNameController.text,
//       email: emailController.text,
//       password: passwordController.text,
//     ));
//     ScaffoldMessenger.of(context).hideCurrentSnackBar();
//
//     //checks if there is no error in the response body.
//     //if error is not present, navigate the users to Login Screen.
//     if (res['ErrorCode'] == null) {
//       String? accessToken;
//       Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar(accessToken: accessToken)));
//     } else {
//       //if error is present, display a snackbar showing the error messsage
//       ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error: ${res['Message']}'),
//             backgroundColor: Colors.red.shade300,
//       ));
//     }
//   }
// }
//
// Future<void> login() async {
//   if(_key.currentState!.validate()) {
//     //show snackbar to indicate loading
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//       content: const Text('Processing Data'),
//       backgroundColor: Colors.green.shade300,
//     ));
//
//
//     Response? res;
//     //get response from ApiClient
//     _apiClient.loginUser(
//       UserModel(
//           email: emailController.text,
//           password: passwordController.text
//       )
//     );
//     ScaffoldMessenger.of(context).hideCurrentSnackBar();
//
//     //if there is no error, get the user's accessToken and pass it to HomeScreen
//     if (res!.statusCode == null) {
//       String? accessToken;
//       Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => BottomNavBar(accessToken: accessToken)));
//     } else {
//       //if an error occurs, show snackbar with error message
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Error: ${res.statusMessage}'),
//         backgroundColor: Colors.red.shade300,
//       ));
//     }
//   }
//
// }







// bool isUserLoggedIn = false;
// Dio dio = Dio();
//
//
// List<Programs> programs = [];
//
// Future<List<Programs>> getProgramsData() async{
//
//   Response response = await dio.get(baseUrl + programsP,
//   );
//   response.data.forEach(
//         (e) => programs.add(Programs.fromJson(e)),
//   );
//   return programs;
// }
//
// Future<List<Images>> getImages() async{
//
//   Response response;
//   response = await dio.get(url);
//   dio.options.headers = {
//     'Content-Type': 'application/json',
//     'Accept': 'application/json',
//     'Authorization': 'Bearer ${response.data["token"]} ',
//   };
//
//
//   response.data.forEach(
//         (e) => images.add(Images.fromJson(e)),
//   );
//
//
//
//   return images;
// }

// Future<List<Rooms>> getRoom() async{
//
//
//   dio.options.headers = {
//     'Authorization' : 'Bearer $token ',
//   };
//   Response response = await dio.get(url);
//
//   response.data.forEach(
//         (e) => room.add(Rooms.fromJson(e)),
//   );
//
//   return room;
// }