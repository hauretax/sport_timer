import 'package:audioplayers/audioplayers.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

final player = AudioPlayer();

playsound() async {
  await player.setSource(AssetSource('sounds/extralife.wav'));
  await player.resume();
}

class CircleAnimation extends StatefulWidget {
  int scd;
  int round;
  CircleAnimation({super.key, required this.scd, this.round = 1});

  @override
  State<CircleAnimation> createState() => _CircleAnimationState();
}

class _CircleAnimationState extends State<CircleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  //nbr of repeat
  int x = 0;
  //map to feat whit PieChart
  Map<String, double> dataMap = {
    "a": 0,
    "b": 0,
  };

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: Duration(milliseconds: widget.scd * 1000),
      vsync: this,
    );
    _controller.addListener(() {
      setState(() {
        dataMap['a'] = 000 + (_controller.value * 100.0);
        dataMap['b'] = 100 - (_controller.value * 100.0);
      });
      if (_controller.value == 1 && widget.round != x) {
        playsound();
        x++;
        if (widget.round != x) {
          _controller.value = 0;
          _controller.forward();
        }
      }
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int percent = (_controller.value * 100.0).round();
    return Container(
      child: Stack(
        children: [
          PieChart(
            dataMap: dataMap,
            animationDuration: Duration(milliseconds: 0),
            colorList: [Colors.white, Colors.red],
            legendOptions: const LegendOptions(showLegends: false),
            chartValuesOptions:
                const ChartValuesOptions(showChartValues: false),
          ),
          Positioned.fill(
            child: Align(
              child: BorderedText(
                child: Text(
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                    x.toString()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
