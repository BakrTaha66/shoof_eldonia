import 'package:flutter/material.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/view/widgets/widget_button.dart';


import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import 'onboarding/onboarding_screen.dart';


class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(child: Image.asset(AssetsConstants.splashImage,
              width: 150,
              height: 150,
              fit: BoxFit.cover,)),
              SizedBox(height: 50,),
              Text('Choose language'),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buttonLanguage('English'),
                  buttonLanguage('عربي'),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 24,),
                  Text('اختر الدولة'),
                  SizedBox(height: 6,),
                  Container(height: 1,
                    color: Colors.black,),
                  SizedBox(height: 10,),
                  textButtonChooseCountry('المملكة العربية السعودية', AssetsConstants.saudiImage),
                  SizedBox(height: 10,),
                  Container(height: 1,
                    color: Colors.black,),
                  SizedBox(height: 10,),
                  textButtonChooseCountry('مصر', AssetsConstants.egyptImage),
                  SizedBox(height: 10,),
                  Container(height: 1,
                    color: Colors.black,),
                  SizedBox(height: 10,),
                  textButtonChooseCountry('أخرى', AssetsConstants.worldwideImage),
                  SizedBox(height: 10,),
                  Container(height: 1,
                    color: Colors.black,),
                  SizedBox(height: 4,),
                  Text('ملاحظة: يمكنك تغيير اعدادات اللغة والدولة في أي وقت',
                  style: textChooseLanguageNote(),),
                  SizedBox(height: 60,),
                ],
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => OnBoardingScreen()));
              },
                  style: buttonContinue(),
                  child: Text(
                    'الاستمرار',
                    style: textContinue(),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
