part of flutter_naver_map;

class LocationButtonWidget extends StatefulWidget {
  const LocationButtonWidget({super.key});

  @override
  State<LocationButtonWidget> createState() => _LocationButtonWidgetState();
}

class _LocationButtonWidgetState extends State<LocationButtonWidget> {
  bool isFacing = false;

  @override
  Widget build(BuildContext context) {
    return UnconstrainedBox(
      alignment: Alignment.bottomLeft,
      child: GestureDetector(
        onTap: () => {
          setState(() {
            isFacing = !isFacing;
          })
        },
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: CustomPaint(
              painter: isFacing ? NFollowPainter() : NFacePainter(),
              size: const Size(40, 40),
            ),
          ),
        ),
      ),
    );
  }
}
