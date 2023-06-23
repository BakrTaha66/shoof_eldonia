import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shoof_eldonia/config/assets_constants.dart';
import 'package:shoof_eldonia/view/widgets/custom_text.dart';
import 'package:shoof_eldonia/view/widgets/widget_button.dart';

import '../../config/palette.dart';
import '../widgets/text_form_field.dart';

class AirportScreen extends StatefulWidget {


  @override
  State<AirportScreen> createState() => _AirportScreenState();
}

class _AirportScreenState extends State<AirportScreen> with TickerProviderStateMixin{

  late TabController _tabController;
  late TabController _tabController2;

  bool light = true;


  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController2 = TabController(length: 3, vsync: this);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,)
        ),
        centerTitle: true,
        title: Image.asset(AssetsConstants.logoImage),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Palette.iconColor,
          labelColor: Palette.textColor2,
          unselectedLabelColor: Colors.black,
          tabs: [
            Tab(
              text: 'Airport',
              icon: SvgPicture.asset(AssetsConstants.planeBoldIcon,
              height: 30,
              width: 30,),
            ),
            Tab(
              text: 'Hotel',
              icon: SvgPicture.asset(AssetsConstants.hotelBoldIcon),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Column(
                  children: [
                    const SizedBox(height: 20,),
                    Text('Book your flight', style: textTitle(),),
                    const SizedBox(height: 8,),
                    Text('Search over 450 airlines', style: textSubtitle(),),
                    const SizedBox(height: 20,),
                    Container(
                      color: Colors.white,
                      child: TabBar(
                        indicatorColor: Palette.iconColor,
                        labelColor: Palette.textColor2,
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: 'Going and Coming back',
                          ),
                          Tab(
                            text: 'One way',
                          ),
                          Tab(
                            text: 'Multiple destinations',
                          ),
                        ],
                        controller: _tabController2,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController2,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: buildTextFormFieldAirport(
                                          AssetsConstants.planeDepartureIcon, 'Departure'
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      buildTextFormFieldAirport(
                                          AssetsConstants.markerIcon, 'Destination'
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  buildTextFormFieldAirportWidth(
                                      AssetsConstants.calendarIcon, 'Departure date - return date'
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  buildTextFormFieldAirportWidth(
                                      AssetsConstants.userIcon, '1 traveler, economy class'
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      FlutterSwitch(
                                          value: light,
                                          toggleColor: Palette.iconColor,
                                          activeToggleColor: Colors.white,
                                          activeColor: Palette.iconColor,
                                          inactiveColor: Colors.white,
                                          inactiveSwitchBorder: Border.all(
                                            color: Palette.iconColor,
                                          ),
                                          onToggle: (bool value) {
                                            setState(() {
                                              light = value;
                                            });
                                          }),
                                      SizedBox(width: 6,),
                                      Text('Non stop',style: TextStyle(
                                        fontSize: 14,
                                      ),)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  buttonSearch('Search'),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  buttonSearchAirport('Search airport + hotel')
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: buildTextFormFieldAirport(
                                            AssetsConstants.planeDepartureIcon, 'Departure'
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      buildTextFormFieldAirport(
                                          AssetsConstants.markerIcon, 'Destination'
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  buildTextFormFieldAirportWidth(
                                      AssetsConstants.calendarIcon, 'Choose the dates'
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  buildTextFormFieldAirportWidth(
                                      AssetsConstants.userIcon, '1 traveler, economy class'
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      FlutterSwitch(
                                          value: light,
                                          toggleColor: Palette.iconColor,
                                          activeToggleColor: Colors.white,
                                          activeColor: Palette.iconColor,
                                          inactiveColor: Colors.white,
                                          inactiveSwitchBorder: Border.all(
                                            color: Palette.iconColor,
                                          ),
                                          onToggle: (bool value) {
                                            setState(() {
                                              light = value;
                                            });
                                          }),
                                      SizedBox(width: 6,),
                                      Text('Non stop',style: TextStyle(
                                        fontSize: 14,
                                      ),)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  buttonSearch('Search'),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: buildTextFormFieldAirport(
                                            AssetsConstants.planeDepartureIcon, 'Departure'
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      buildTextFormFieldAirport(
                                          AssetsConstants.markerIcon, 'Destination'
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  buildTextFormFieldAirportWidth(
                                      AssetsConstants.calendarIcon, 'Choose the dates'
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: buildTextFormFieldAirport(
                                            AssetsConstants.planeDepartureIcon, 'Departure'
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      buildTextFormFieldAirport(
                                          AssetsConstants.markerIcon, 'Destination'
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  buildTextFormFieldAirportWidth(
                                      AssetsConstants.calendarIcon, 'Choose the dates'
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  buildTextFormFieldAirportWidth(
                                      AssetsConstants.userIcon, '1 traveler, economy class'
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      FlutterSwitch(
                                          value: light,
                                          toggleColor: Palette.iconColor,
                                          activeToggleColor: Colors.white,
                                          activeColor: Palette.iconColor,
                                          inactiveColor: Colors.white,
                                          inactiveSwitchBorder: Border.all(
                                            color: Palette.iconColor,
                                          ),
                                          onToggle: (bool value) {
                                            setState(() {
                                              light = value;
                                            });
                                          }),
                                      SizedBox(width: 6,),
                                      Text('Non stop',style: TextStyle(
                                        fontSize: 14,
                                      ),)
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: buttonSearch('Search')),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 20,),
                      Text('Book your flight', style: textTitle(),),
                      const SizedBox(height: 8,),
                      Text('Search over 450 airlines', style: textSubtitle(),),
                      const SizedBox(height: 20,),
                      Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.white,
                        child: buttonDayUse('Overnight accommodation in nearby hotels'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            buildTextFormFieldAirportWidth(
                                AssetsConstants.markerIcon, 'A specific city, airport or hotel'
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            buildTextFormFieldAirportWidth(
                                AssetsConstants.calendarIcon, 'Entry date - Exit date'
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            buildTextFormFieldAirportWidth(
                                AssetsConstants.userIcon, '1 room, 2 guests'
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            buttonSearch('Search'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

}
