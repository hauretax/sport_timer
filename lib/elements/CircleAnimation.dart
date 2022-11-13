import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pie_chart/pie_chart.dart';

final player = AudioPlayer();

playsound() async {
  await player.setSource(AssetSource('sounds/extralife.wav'));
   print(await player.getDuration());
}

class CircleAnimation extends StatefulWidget {
  int scd;
  int repeat;
  CircleAnimation({super.key, required this.scd, this.repeat = 1});

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
      playsound();
      setState(() {
        dataMap['a'] = 000 + (_controller.value * 100.0);
        dataMap['b'] = 100 - (_controller.value * 100.0);
      });
      if (_controller.value == 1 && widget.repeat != x) {
        x++;
        _controller.value = 0;
        _controller.forward();
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
      child: SizedBox(
        width: 100,
        child: PieChart(
          dataMap: dataMap,
          animationDuration: Duration(milliseconds: 0),
          colorList: [Colors.white, Colors.red],
          legendOptions: const LegendOptions(showLegends: false),
          chartValuesOptions: const ChartValuesOptions(showChartValues: false),
        ),
      ),
    );
  }
}