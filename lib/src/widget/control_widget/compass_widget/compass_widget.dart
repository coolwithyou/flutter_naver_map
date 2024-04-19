part of flutter_naver_map;

class CompassWidget extends StatefulWidget {
  const CompassWidget({super.key});

  @override
  State<CompassWidget> createState() => _CompassWidgetState();
}

class _CompassWidgetState extends State<CompassWidget> {
  bool isZeroDegree = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        setState(() {
          isZeroDegree = !isZeroDegree;
        })
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: CustomPaint(
                  painter: isZeroDegree ? NCompassPainter() : null,
                  size: const Size(30, 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
