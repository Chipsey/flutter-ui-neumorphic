// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';

class UserTemplate extends StatefulWidget {
  const UserTemplate({super.key});

  @override
  State<UserTemplate> createState() => _UserTemplateState();
}

class _UserTemplateState extends State<UserTemplate> {
  int _radioValue = 0;

  void _handleRadioValueChange(int? value) {
    setState(() {
      if (value != null) _radioValue = value;
    });
  }

  bool _checkBoxValue = true;
  bool _switchValue = false;
  int _selectedIndex = 0;
  double _sliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text(
          'NeumorphicAppBar',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        buttonPadding: EdgeInsets.symmetric(horizontal: 16),
        buttonStyle: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          depth: 3,
          color: Colors.grey[300],
          boxShape: NeumorphicBoxShape.circle(),
        ),
        iconTheme: IconThemeData(color: Colors.grey[900]),
        color: NeumorphicTheme.baseColor(context),
        leading: NeumorphicButton(
          style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            depth: 3,
            color: Colors.grey[300],
            boxShape: NeumorphicBoxShape.circle(),
          ),
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.menu, color: Colors.deepPurple),
          onPressed: () {
            // Open drawer or perform leading action
          },
        ),
        automaticallyImplyLeading: true,
        centerTitle: true,
        titleSpacing: NavigationToolbar.kMiddleSpacing,
        actionSpacing: 16,
        padding: 16,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildWidgetInfo(
                  'Neumorphic',
                  'A container with neumorphic design.',
                  Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.concave,
                      depth: 8,
                      lightSource: LightSource.topLeft,
                      color: Colors.grey[300], // Color of the container
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Text container',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              _buildWidgetInfo(
                  'NeumorphicButton',
                  'A neumorphic-styled button.',
                  NeumorphicButton(
                    curve: Curves.bounceIn,
                    style: NeumorphicStyle(
                      depth: 5,
                      color: Colors.grey[300],
                      lightSource: LightSource.topLeft,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Button',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              _buildWidgetInfo(
                'NeumorphicRadio true',
                'A neumorphic-styled radio button.',
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NeumorphicRadio<int>(
                      value: 0,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                      style: NeumorphicRadioStyle(
                        boxShape: NeumorphicBoxShape.circle(),
                        selectedColor: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('A'),
                      ),
                    ),
                    SizedBox(width: 15),
                    NeumorphicRadio<int>(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                      style: NeumorphicRadioStyle(
                        boxShape: NeumorphicBoxShape.circle(),
                        selectedColor: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('B'),
                      ),
                    ),
                    SizedBox(width: 15),
                    NeumorphicRadio<int>(
                      value: 2,
                      groupValue: _radioValue,
                      onChanged: _handleRadioValueChange,
                      style: NeumorphicRadioStyle(
                        boxShape: NeumorphicBoxShape.circle(),
                        selectedColor: Colors.grey[300],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text('C'),
                      ),
                    ),
                  ],
                ),
              ),
              _buildWidgetInfo(
                'NeumorphicCheckbox',
                'A neumorphic-styled checkbox.',
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _checkBoxValue = !_checkBoxValue;
                    });
                  },
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      depth: 5,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(6)),
                      color:
                          _checkBoxValue ? Colors.grey[300] : Colors.grey[200],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: _checkBoxValue
                          ? Icon(Icons.check_box_outlined,
                              color: Colors.grey[900])
                          : Icon(Icons.check_box_outline_blank_rounded,
                              color: Colors.grey),
                    ),
                  ),
                ),
              ),
              _buildWidgetInfo(
                  'NeumorphicText',
                  'A neumorphic-styled text.',
                  NeumorphicText(
                    'Neumorphic Text',
                    style: NeumorphicStyle(
                      depth: 1,
                      color: Colors.grey[400],
                      lightSource: LightSource.topLeft,
                    ),
                    textStyle: NeumorphicTextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
              _buildWidgetInfo(
                  'NeumorphicIcon',
                  'A neumorphic-styled icon.',
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NeumorphicIcon(
                        Icons.star,
                        size: 50,
                        style: NeumorphicStyle(
                          color: Colors.grey[800],
                        ),
                      ),
                      NeumorphicIcon(
                        Icons.sunny,
                        size: 50,
                        style: NeumorphicStyle(
                          color: Colors.grey[500],
                        ),
                      ),
                      NeumorphicIcon(
                        Icons.nightlight_round_outlined,
                        size: 50,
                        style: NeumorphicStyle(
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  )),
              _buildWidgetInfo(
                  'NeumorphicSwitch',
                  'A neumorphic-styled switch.',
                  NeumorphicSwitch(
                    value: _switchValue,
                    onChanged: (value) {
                      setState(() {
                        _switchValue = value;
                      });
                    },
                  )),
              _buildWidgetInfo(
                'NeumorphicToggle',
                'A neumorphic-styled toggle.',
                NeumorphicToggle(
                  style: NeumorphicToggleStyle(
                    backgroundColor: Colors.grey[300],
                  ),
                  height: 50,
                  selectedIndex: _selectedIndex,
                  children: [
                    ToggleElement(
                      background: Center(child: Text('A')),
                      foreground: Center(
                          child:
                              Text('A', style: TextStyle(color: Colors.white))),
                    ),
                    ToggleElement(
                      background: Center(child: Text('B')),
                      foreground: Center(
                          child:
                              Text('B', style: TextStyle(color: Colors.white))),
                    ),
                    ToggleElement(
                      background: Center(child: Text('C')),
                      foreground: Center(
                          child:
                              Text('C', style: TextStyle(color: Colors.white))),
                    ),
                  ],
                  thumb: Neumorphic(
                    style: NeumorphicStyle(
                      shape: NeumorphicShape.convex,
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(12)),
                      depth: 5,
                      color: Colors.white,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Icon(Icons.circle, size: 20),
                      ),
                    ),
                  ),
                  onChanged: (int index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
              _buildWidgetInfo(
                'NeumorphicSlider',
                'A neumorphic-styled slider.',
                NeumorphicSlider(
                  min: 0,
                  max: 100,
                  value: _sliderValue,
                  onChanged: (value) {
                    setState(
                      () {
                        _sliderValue = value;
                      },
                    );
                  },
                  style: SliderStyle(
                    depth: 3,
                    accent: Colors.black,
                    variant: Colors.blue[500],
                  ),
                ),
              ),
              _buildWidgetInfo(
                  'NeumorphicProgress',
                  'A neumorphic-styled progress bar.',
                  NeumorphicProgress(
                    style: ProgressStyle(
                      depth: 3,
                      accent: Colors.black,
                      lightSource: LightSource.topLeft,
                      variant: Colors.blue[500],
                    ),
                    percent: _sliderValue / 100,
                  )),
              // _buildWidgetInfo(
              //   'NeumorphicProgressIndeterminate',
              //   'An indeterminate neumorphic-styled progress bar.',
              //   NeumorphicProgressIndeterminate(
              //     style: ProgressStyle(
              //         depth: 0,
              //         variant: Colors.black,
              //         lightSource: LightSource.topLeft),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetInfo(String title, String description, Widget child) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5.0),
          Text(description),
          SizedBox(height: 5.0),
          child,
        ],
      ),
    );
  }
}
