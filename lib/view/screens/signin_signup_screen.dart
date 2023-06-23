import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/controller/data/remote/dio/endpoint.dart';
import 'package:shoof_eldonia/models/user_model.dart';
import 'package:shoof_eldonia/view/screens/bottom_nav_bar_screen/bottom_nav_bar.dart';
import 'package:shoof_eldonia/view/widgets/widget_button.dart';
import '../../config/palette.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';


class SignInSignUpScreen extends StatefulWidget {
  const SignInSignUpScreen({super.key});

  @override
  _SignInSignUpScreenState createState() => _SignInSignUpScreenState();
}

class _SignInSignUpScreenState extends State<SignInSignUpScreen> {
  bool isSignupScreen = true;
  bool isMale = true;
  bool isRememberMe = false;

  final Dio _dio = Dio();
  String? accessToken;

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Future<void> loginUser(UserModel userModel) async {

    try{
      Response response = await _dio.post(
          baseUrl + login,
          data: userModel.toJson());
      return response.data;
    } on DioError catch (e){
      return e.response!.data;
    }

  }


  Future<void> registerUser(UserModel userModel) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    try{
      Response response = await _dio.post(
          'https://shoofeldonia.com/api/register',
          data: userModel.toJson(),
      );

      if(response.statusCode == null){
        setState(() {
          prefs.setString('token', response.data["token"].toString());
        });
        final myString = prefs.getString('token') ?? '';
        print(myString);
      } else {

      }
      print("res: $response");
    } on DioError catch (e){
      return e.response!.data;
    }

  }




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.backgroundColor,
      body: Form(
        key: _key,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Image.asset(AssetsConstants.loginScreen,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 220,),
                Positioned(
                  bottom: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1),
                            ),
                            if (isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 2,
                                width: 55,
                                color: Colors.white,
                              )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Container(
                        width: 1,
                        height: 30,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isSignupScreen = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              "Sign In",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: !isSignupScreen
                                      ? Palette.activeColor
                                      : Palette.textColor1),
                            ),
                            if (!isSignupScreen)
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                height: 2,
                                width: 55,
                                color: Colors.white,
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (isSignupScreen) buildSignUpSection(),
                    if (!isSignupScreen) buildSignInSection()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildSignInSection() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          buildTextField(Icons.mail_outline, "info@demouri.com", false, true, emailController),
          buildTextField(
              Icons.lock_outline, "**********", true, false, passwordController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: isRememberMe,
                    activeColor: Palette.textColor2,
                    onChanged: (value) {
                      setState(() {
                        isRememberMe = !isRememberMe;
                      });
                    },
                  ),
                  Text("Remember me",
                      style: TextStyle(fontSize: 12, color: Palette.textColor1))
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text("Forgot Password?",
                    style: TextStyle(fontSize: 12, color: Palette.textColor1)),
              )
            ],
          ),
          SizedBox(height: 18,),
          ElevatedButton(onPressed: (){

          },
              style: buttonContinue(),
              child: Text(
                'Continue',
                style: textContinue(),
              )),
          SizedBox(height: 10,),
          RichText(
            text: const TextSpan(
                text: 'By continuing to register in Shuf Al Donya, you agree to the ',
                style: TextStyle(
                    color: Colors.black
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: TextStyle(color: Palette.textColor2),
                  ),
                  TextSpan(
                      text: ' & '
                  ),
                  TextSpan(
                    text: 'Privacy policy.',
                    style: TextStyle(color: Palette.textColor2),
                  ),
                ]
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 2,
                color: Colors.black.withOpacity(0.2),
              ),
              SizedBox(width: 18,),
              Text('Or'),
              SizedBox(width: 18,),
              Container(
                width: 140,
                height: 2,
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          SizedBox(height: 20,),
          buttonSignUpWithGoogle('Sign up with google account'),
          SizedBox(height: 12,),
          buttonSignUpWithApple('Sign up with Apple account'),
        ],
      ),
    );
  }

  Padding buildSignUpSection() {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          buildTextFieldUser(
              Icons.account_circle_outlined, "username", userNameController),
          buildTextField(
              Icons.email_outlined, "email", false, true, emailController),
          buildTextField(
              Icons.lock_clock_outlined, "password", true, false, passwordController),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: isMale
                                ? Palette.textColor2
                                : Colors.transparent,
                            border: Border.all(
                                width: 1,
                                color: isMale
                                    ? Colors.transparent
                                    : Palette.textColor1),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: isMale ? Colors.white : Palette.iconColor,
                        ),
                      ),
                      Text(
                        "Male",
                        style: TextStyle(color: Palette.textColor1),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: isMale
                                ? Colors.transparent
                                : Palette.textColor2,
                            border: Border.all(
                                width: 1,
                                color: isMale
                                    ? Palette.textColor1
                                    : Colors.transparent),
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: isMale ? Palette.iconColor : Colors.white,
                        ),
                      ),
                      Text(
                        "Female",
                        style: TextStyle(color: Palette.textColor1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18,),
          ElevatedButton(onPressed: (){
            registerUser(UserModel(
              name: userNameController.text,
              email: emailController.text,
              password: passwordController.text,
            ));

            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar(

            )));
          },
              style: buttonContinue(),
              child: Text(
                'Continue',
                style: textContinue(),
              )),
          SizedBox(height: 10,),
          RichText(
            text: const TextSpan(
              text: 'By continuing to register in Shuf Al Donya, you agree to the ',
              style: TextStyle(
                color: Colors.black
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Terms and Conditions',
                  style: TextStyle(color: Palette.textColor2),
                ),
                TextSpan(
                    text: ' & '
                ),
                TextSpan(
                    text: 'Privacy policy.',
                    style: TextStyle(color: Palette.textColor2),
                ),
              ]
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 2,
                color: Colors.black.withOpacity(0.2),
              ),
              SizedBox(width: 18,),
              Text('Or'),
              SizedBox(width: 18,),
              Container(
                width: 140,
                height: 2,
                color: Colors.black.withOpacity(0.2),
              ),
            ],
          ),
          SizedBox(height: 20,),
          buttonSignUpWithGoogle('Sign up with google account'),
          SizedBox(height: 12,),
          buttonSignUpWithApple('Sign up with Apple account'),
        ],
      ),
    );
  }




  Widget buildTextFieldSecUsername(String hintText,) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }

  Widget buildTextField(
      IconData icon, String hintText, bool isPassword, bool isEmail, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        validator: (String? val){
          if (isEmail == true){
            return RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(val!)
                ? null
                : "Enter correct email";
          } else if (isPassword == true){
            RegExp reg = RegExp(
                r'''(?=(.*[0-9]))(?=.*[\!@#$%^&*()\\[\]{}\-_+=~`|:;"'<>,./?])(?=.*[a-z])(?=(.*[A-Z]))(?=(.*)).{8,}''');
            if (!reg.hasMatch(val!)) {
              return 'Enter Validate Password';
            }
            return null;
          }
        },
        obscureText: isPassword,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }

  Widget buildTextFieldUser(
      IconData icon, String hintText,TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Palette.iconColor,
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
        ),
      ),
    );
  }

  // Widget buildTextFieldDropDown(String hintText) {
  //   return TextField(
  //     decoration: InputDecoration(
  //       prefix: DropdownButton<String>(
  //         icon: const Icon(Icons.keyboard_arrow_down,
  //         color: Colors.black,),
  //         items: ['Ms', 'Miss'].map((String items) {
  //           return DropdownMenuItem<String>(
  //             value: items,
  //             child: Text(items),
  //           );
  //         }).toList(),
  //         onChanged: (String? newValue) {
  //           if (newValue != null) {
  //             // BlocProvider.of<LocaleCubit>(context).changedLanguage(newValue);
  //
  //           }
  //         },
  //       ),
  //       contentPadding: EdgeInsets.all(10),
  //       hintText: hintText,
  //       hintStyle: TextStyle(fontSize: 14, color: Palette.textColor1),
  //     ),
  //   );
  // }
}
