import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueGrey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Project1:",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.person))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: const [
                Icon(
                  Icons.remove_red_eye,
                  size: 20,
                  color: Colors.grey,
                ),
                Text("10k"),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.star_border,
                  size: 20,
                  color: Colors.grey,
                ),
                Text("60k"),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.timer,
                  size: 20,
                  color: Colors.grey,
                ),
                Text("45H"),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          LinearPercentIndicator(
            width: 200,
            lineHeight: 15,
            animation: true,
            animationDuration: 2000,
            percent: 0.5,
            progressColor: Colors.blueGrey,
            center: const Text("50%"),
            barRadius: const Radius.circular(10),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "See more",
            style: TextStyle(
                color: Colors.blue, fontSize: 19, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
