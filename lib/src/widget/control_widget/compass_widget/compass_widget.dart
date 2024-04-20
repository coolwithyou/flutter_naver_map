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
    return UnconstrainedBox(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: () => {
          setState(() {
            isZeroDegree = !isZeroDegree;
          })
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1000),
                  color: Colors.white,
                  border: Border.all(
                    width: 0.64,
                    color: Colors.black.withOpacity(0.064),
                    strokeAlign: BorderSide.strokeAlignOutside,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 1.6),
                      blurRadius: 2.4,
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: CustomPaint(
                  painter: isZeroDegree ? NCompassPainter() : null,
                  size: const Size(40, 40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
