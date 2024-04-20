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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: InkWell(
          onTap: () => {
            setState(() {
              isFacing = !isFacing;
            })
          },
          child: Container(
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: CustomPaint(
                painter: isFacing ? NFollowPainter() : NFacePainter(),
                size: const Size(24, 24),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
