import 'package:flutter/material.dart';
import 'package:shoof_eldonia/view/widgets/widget_button.dart';

class TripsScreen extends StatefulWidget {
  const TripsScreen({Key? key}) : super(key: key);

  @override
  State<TripsScreen> createState() => _TripsScreenState();
}

class _TripsScreenState extends State<TripsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My bookings',style: TextStyle(
          color: Colors.black,
          fontSize: 16
        ),),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  Text('Subscribe to get access to your next trips',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500
                    ),),
                  SizedBox(height: 30,),
                  buttonDayUse('Sign In'),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    height: 2,
                    width: 150,
                  ),
                  Text('Or'),
                  Container(
                    color: Colors.black.withOpacity(0.2),
                    height: 2,
                    width: 150,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Column(
                children: [
                  Text('Complete the reservation without subscribing',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                    ),),
                  SizedBox(height: 30,),
                  buttonSearchAirport('Manage your bookings without signing up')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
