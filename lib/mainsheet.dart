import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  const MyList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Expanded(
          child: CustomContainer(
            Customheight: h / 20,
            Customcolor: Colors.green,
          ),
        ),
        Expanded(
          child: Row(children: [
            Expanded(
              flex: 1,
              child: CustomContainer(
                Customcolor: Colors.blue,
                Customheight: h / 10,
              ),
            ),
            Expanded(
              flex: 3,
              child: CustomContainer(
                Customheight: h / 10,
                Customcolor: Colors.red,
              ),
            ),
          ]),
        ),
        Expanded(
            flex: 5,
            child: CustomContainer(
              Customcolor: Colors.purple,
              Customheight: h / 3,
            )),
        Expanded(
            flex: 1,
            child: CustomContainer(
              Customcolor: Colors.blue,
              Customheight: h / 10,
            )),
        Expanded(
            flex: 5,
            child: CustomContainer(
              Customcolor: Colors.purple,
              Customheight: h / 4,
            )),
        Row(
          children: [
            Expanded(
                child: CustomContainer(
              Customcolor: Colors.green,
              Customheight: h / 5,
              Customwidth: w / 2,
            )),
            Expanded(
              child: Column(
                children: [
                  CustomContainer(
                    Customcolor: Colors.blue,
                    Customheight: h / 18,
                    Customwidth: w / 2,
                  ),
                  CustomContainer(
                    Customcolor: Colors.red,
                    Customheight: h / 5,
                    Customwidth: w / 2,
                  ),
                ],
              ),
            ),
          ],
        ),
        Expanded(
          child: CustomContainer(
            Customcolor: Colors.green,
            Customwidth: w,
            Customheight: h / 7,
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: CustomContainer(
                  Customcolor: Colors.green,
                  Customheight: h / 2,
                  Customwidth: w / 2,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    CustomContainer(
                      Customcolor: Colors.blue,
                      Customheight: h / 10,
                      Customwidth: w / 2,
                    ),
                    CustomContainer(
                      Customcolor: Colors.red,
                      Customheight: h / 2.55,
                      Customwidth: w / 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: CustomContainer(
            Customcolor: Colors.purple,
            Customheight: h / 5,
            Customwidth: w,
          ),
        ),
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {Key? key,
      required this.Customcolor,
      this.Customheight,
      this.Customwidth})
      : super(key: key);
  final Customcolor;
  final double? Customheight;
  final double? Customwidth;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          height: Customheight,
          width: Customwidth,
          decoration: BoxDecoration(
            color: Customcolor,
            borderRadius: BorderRadius.circular(8),
          ),
        ));
  }
}
