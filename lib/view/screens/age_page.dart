import 'package:fit_body/view/widgets/age_tile_widget.dart';
import 'package:flutter/material.dart';

class AgePage extends StatefulWidget {
  const AgePage({Key? key}) : super(key: key);

  @override
  _AgePageState createState() => _AgePageState();
}

class _AgePageState extends State<AgePage> {
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(122, 49, 46, 46),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 1,
                  child: Center(
                    child: Text(
                      "How old are you?",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Center(
                  child: Text(
                      "There is a big correlation between your age and your fat percentage.",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1),
                ),
              ),
              Expanded(
                  flex: 5, child: ageScrollWidget(controller: _controller)),
              Expanded(flex: 1, child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}

class ageScrollWidget extends StatelessWidget {
  const ageScrollWidget({
    Key? key,
    required FixedExtentScrollController controller,
  })  : _controller = controller,
        super(key: key);

  final FixedExtentScrollController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: ListWheelScrollView.useDelegate(
        controller: _controller,
        itemExtent: 55,
        useMagnifier: true,
        perspective: 0.005,
        diameterRatio: 1.8,
        magnification: 1.4,
        physics: FixedExtentScrollPhysics(),
        onSelectedItemChanged: (value) {},
        childDelegate: ListWheelChildBuilderDelegate(
          childCount: 81,
          builder: (context, index) {
            return AgeTileWidget(
              age: index,
            );
          },
        ),
      ),
    );
  }
}
