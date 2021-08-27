import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';

import 'Constant.dart';

//use enum when we use flag value , but flag value dont have more than 2 state so to define sonstant
//we take it
enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

double heightSliderVal = 100;
int weight = 55;
int age = 10;

class _InputPageState extends State<InputPage> {
  Gender? selectedGender; //null safety

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ReusableCard(
                    selectedGender == Gender.male
                        ? active
                        : cardBackgroundColor,
                    IconDatas(
                      FontAwesomeIcons.mars,
                      'MALE',
                    ), () {
                  setState(() {
                    selectedGender = Gender.male;
                  });
                }),
              ),
              Expanded(
                flex: 1,
                //we use GestureDetector beacuse in TextButton there is a extra margin
                //which will destroy the look of our UI so we use GestureDector which does same thing
                //as TextBuuton but more than that also
                child: ReusableCard(
                    selectedGender == Gender.female
                        ? active
                        : cardBackgroundColor,
                    IconDatas(FontAwesomeIcons.venus, 'FEMALE'), () {
                  setState(() {
                    selectedGender = Gender.female;
                  });
                }),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: ReusableCard(
              cardBackgroundColor,
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: cardTextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          "${heightSliderVal.round()}",
                          style: TextStyle(
                              letterSpacing: 5,
                              fontSize: 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('cm'),
                      ],
                    ),
                    SliderTheme(
                      data: SliderThemeData(
                          trackHeight: 1,
                          thumbColor: backgroundNavColor,
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.white,
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15,
                          ),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30),
                          overlayColor: Color(0x6DD718A1)),
                      child: Slider(
                          value: heightSliderVal,
                          min: 60,
                          max: 250,
                          onChanged: (double value) {
                            setState(() {
                              heightSliderVal = value;
                            });
                          }),
                    ),
                  ],
                ),
              ),
              () {}),
        ),
        Expanded(
          flex: 1,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: ReusableCard(
                    cardBackgroundColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: cardTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(weight.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50)),
                            Text('Kg')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtomCustom(FontAwesomeIcons.plus, () {
                              setState(() {
                                weight++;
                              });
                            }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButtomCustom(FontAwesomeIcons.minus, () {
                              setState(() {
                                weight--;
                              });
                            })
                          ],
                        ),
                      ],
                    ),
                    () {}),
              ),
              Expanded(
                flex: 1,
                child: ReusableCard(
                    cardBackgroundColor,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: cardTextstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(age.toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 50)),
                            Text('Yrs')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundButtomCustom(FontAwesomeIcons.plus, () {
                              setState(() {
                                age++;
                              });
                            }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundButtomCustom(FontAwesomeIcons.minus, () {
                              setState(() {
                                age--;
                              });
                            })
                          ],
                        ),
                      ],
                    ),
                    () {}),
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Secondscreen();
                },
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.only(top: 10),
            height: bottomnavbarheight,
            child: Center(
              child: Text(
                "CALCULATE",
                style: cardTextstyle,
              ),
            ),
            width: double
                .infinity, //so that it xould extend to any screen ,same as match parent in native
            color: backgroundNavColor,
          ),
        )
      ],
    );
  }
}

//This is generatrted when we extracted the widget using flutter outline and this is
//just select the widget which is repeated again and again, then just right click on that inside the flutter
//outline and click on Extract the widget.

class RoundButtomCustom extends StatelessWidget {
  IconData myIcon;
  VoidCallback onPress;
  RoundButtomCustom(this.myIcon, this.onPress) {}
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xe12e5d8b),
      elevation: 7,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      child: Icon(
        myIcon,
        color: Colors.white,
      ),
      onPressed: onPress,
    );
  }
}

class Secondscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
