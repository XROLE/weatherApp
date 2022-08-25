import 'package:flutter/material.dart';
import 'package:weather_app/ui/widgets/round_dots.dart';
import 'package:weather_app/utils/colors.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: _size.height,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Column(
              children: const [
                Text('Darmstadt', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Text('Samstag', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: _size.height * .17,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    child: SizedBox(
                      height: _size.height * .15,
                      child: const Image(
                        image: AssetImage('assets/img/Sonne.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 50,
                    child: SizedBox(
                      height: _size.height * .15,
                      child: const Image(
                        image: AssetImage('assets/img/Bewölkt.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: _size.width * .05),
                  child: const Text(
                    '20 C',
                    style: TextStyle(fontSize: 64, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: _size.width * .05),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Details'.toUpperCase(),
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: _size.width * .35,
                        child: const Divider(
                          thickness: 1,
                        ),
                      ),
                      Text('skfjsafjhsaf a dfsjk l'),
                      Text('skfjsafjhsaf a dfsjk l'),
                      Text('skfjsafjhsaf a dfsjk l'),
                      Text('skfjsafjhsaf a dfsjk l'),
                      Text('skfjsafjhsaf a dfsjk l'),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const Image(
                    image: AssetImage('assets/img/Bewölkt.png'),
                  ),
                  Positioned(
                      top: 25,
                      left: 19,
                      child: Row(
                        children: const [
                          RoundDots(),
                          SizedBox(width: 3),
                          RoundDots(),
                          SizedBox(width: 3),
                          RoundDots(),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: const SizedBox(
                  height: 25,
                  child: Image(
                    image: AssetImage('assets/img/Bewölkt.png'),
                  )),
              label: 'Heute',
              backgroundColor: AppColor.appPrimary),
          const BottomNavigationBarItem(
              icon: SizedBox(
                  height: 25,
                  child: Image(
                    image: AssetImage('assets/img/Bewölkt.png'),
                  )),
              label: 'Heute',
              backgroundColor: Colors.red),
        ],
      ),
    );
  }
}
