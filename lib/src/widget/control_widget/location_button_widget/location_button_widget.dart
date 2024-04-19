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
    return GestureDetector(
      onTap: () => {
        setState(() {
          isFacing = !isFacing;
        })
      },
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Row(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: CustomPaint(
                  painter: isFacing ? NFollowPainter() : NFacePainter(),
                  size: const Size(50, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
