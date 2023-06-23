import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/config/palette.dart';
import 'package:shoof_eldonia/controller/data/remote/dio/endpoint.dart';




import '../../../models/hotel_model.dart';
import '../../../models/programs_model.dart';
import '../airport_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  final Dio _dio = Dio();

  List<Programs> programs = [];
  List<Images> imageList = [];
  String? accessToken;


  Future<List<Programs>> getData() async {

    Response response = await _dio.get('https://shoofeldonia.com/api/programs',
    options: Options(
      headers: {
        'Authorization': 'Bearer 121|DnkzrV1L6hnJ05PH3qhWBSGfbqxUDLauB9f2QfCq ',
      }
    )
    );


    // response.data['data']['${widget.accessToken}'];

    response.data.forEach(
        (e) => programs.add(Programs.fromJson(e)));

    return programs;
  }

  Future<List<Images>> getImage() async {

    Response response = await _dio.get('http://shoofeldonia.com/api/programs',
        options: Options(
            headers: {
              'Authorization': 'Bearer 121|DnkzrV1L6hnJ05PH3qhWBSGfbqxUDLauB9f2QfCq ',
            }
        )
    );


    // response.data['data']['${widget.accessToken}'];

    response.data.forEach(
            (e) => imageList.add(Images.fromJson(e)));


    return imageList;
  }


  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Image.asset(AssetsConstants.back,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(height: 60,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(AssetsConstants.bellIcon,
                            color: Colors.white,),
                          SizedBox(width: 10,),
                          SvgPicture.asset(AssetsConstants.percent),
                        ],
                      ),
                      SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            child: Container(
                              width: 174,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Color(0xff004579),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      width: 34,
                                      height: 34,
                                      child: SvgPicture.asset(AssetsConstants.hotelIcon)),
                                  SizedBox(height: 4,),
                                  Text('Hotel',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Colors.white
                                    ),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => AirportScreen()));
                            },
                            child: Container(
                              width: 174,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Color(0xff004579)),
                                  color: Colors.white
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 34,
                                      width: 34,
                                      child: SvgPicture.asset(AssetsConstants.planeIcon)),
                                  SizedBox(height: 4,),
                                  Text('Airport',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        color: Color(0xff004579)
                                    ),)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('برامج سياحية متنوعة',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),),
                  SizedBox(height: 20,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: FutureBuilder<List<Programs>>(
                      future: getData(),
                      builder: (context, snapshot){
                        return snapshot.hasData
                            ? requestPrograms()
                            : snapshot.hasError
                            ? errorWidget()
                            : loadingWidget();
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget requestPrograms() => SizedBox(
    width: double.infinity,
    height: 400,
    child: GridView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: programs.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          childAspectRatio: 10 / 7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0)),
          child: Stack(
            children: [
              SvgPicture.network(
                  programs[index].plan ?? '',
                  height: 400,
                  width: double.infinity,
                ),
              Positioned(
                right: 16,
                left: 16,
                bottom: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      programs[index].name ?? '',
                      style: TextStyle(
                          fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(AssetsConstants.users,
                              width: 20,
                              height: 20,),
                            SizedBox(width: 10,),
                            Text(
                              programs[index].guests ?? '',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Palette.textColor2
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 60,),
                        Row(
                          children: [
                            SvgPicture.asset(AssetsConstants.bed,
                              width: 20,
                              height: 20,),
                            SizedBox(width: 10,),
                            RichText(
                            text: TextSpan(
                              text: programs[index].days ?? '',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Palette.textColor2
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' ايام'
                                ),
                                TextSpan(
                                  text: ' - '
                                ),
                                TextSpan(
                                  text: programs[index].nights ?? '',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Palette.textColor2
                                  ),
                                ),
                                TextSpan(
                                    text: ' ليالي'
                                ),
                              ]
                            ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      programs[index].title ?? '',
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

    ),
  );



  Widget errorWidget() => const Text('Sorry, Something went wrong');

  Widget loadingWidget() => const CupertinoActivityIndicator();
}
