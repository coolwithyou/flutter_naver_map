part of flutter_naver_map;

class NFollowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4999900, size.height * 0.9600000);
    path_0.cubicTo(
        size.width * 0.7540400,
        size.height * 0.9600000,
        size.width * 0.9599900,
        size.height * 0.7540500,
        size.width * 0.9599900,
        size.height * 0.4999995);
    path_0.cubicTo(
        size.width * 0.9599900,
        size.height * 0.2459485,
        size.width * 0.7540400,
        size.height * 0.03999940,
        size.width * 0.4999900,
        size.height * 0.03999940);
    path_0.cubicTo(
        size.width * 0.2459395,
        size.height * 0.03999940,
        size.width * 0.03999025,
        size.height * 0.2459485,
        size.width * 0.03999025,
        size.height * 0.4999995);
    path_0.cubicTo(
        size.width * 0.03999025,
        size.height * 0.7540500,
        size.width * 0.2459395,
        size.height * 0.9600000,
        size.width * 0.4999900,
        size.height * 0.9600000);
    path_0.close();
    path_0.moveTo(size.width * 0.4699950, size.height * 0.8015000);
    path_0.lineTo(size.width * 0.4699950, size.height * 0.8988900);
    path_0.cubicTo(
        size.width * 0.2722455,
        size.height * 0.8842300,
        size.width * 0.1145090,
        size.height * 0.7258000,
        size.width * 0.1009380,
        size.height * 0.5277500);
    path_0.lineTo(size.width * 0.1964900, size.height * 0.5277500);
    path_0.cubicTo(
        size.width * 0.2158200,
        size.height * 0.5277500,
        size.width * 0.2314900,
        size.height * 0.5143200,
        size.width * 0.2314900,
        size.height * 0.4977495);
    path_0.cubicTo(
        size.width * 0.2314900,
        size.height * 0.4811810,
        size.width * 0.2158200,
        size.height * 0.4677495,
        size.width * 0.1964900,
        size.height * 0.4677495);
    path_0.lineTo(size.width * 0.1012715, size.height * 0.4677495);
    path_0.cubicTo(
        size.width * 0.1169040,
        size.height * 0.2718035,
        size.width * 0.2737455,
        size.height * 0.1156560,
        size.width * 0.4699950,
        size.height * 0.1011070);
    path_0.lineTo(size.width * 0.4699950, size.height * 0.1940010);
    path_0.cubicTo(
        size.width * 0.4699950,
        size.height * 0.2133310,
        size.width * 0.4834265,
        size.height * 0.2290010,
        size.width * 0.4999950,
        size.height * 0.2290010);
    path_0.cubicTo(
        size.width * 0.5165650,
        size.height * 0.2290010,
        size.width * 0.5299950,
        size.height * 0.2133310,
        size.width * 0.5299950,
        size.height * 0.1940010);
    path_0.lineTo(size.width * 0.5299950, size.height * 0.1011080);
    path_0.cubicTo(
        size.width * 0.7262400,
        size.height * 0.1156610,
        size.width * 0.8830750,
        size.height * 0.2718065,
        size.width * 0.8987100,
        size.height * 0.4677495);
    path_0.lineTo(size.width * 0.8037500, size.height * 0.4677495);
    path_0.cubicTo(
        size.width * 0.7844200,
        size.height * 0.4677495,
        size.width * 0.7687500,
        size.height * 0.4811810,
        size.width * 0.7687500,
        size.height * 0.4977495);
    path_0.cubicTo(
        size.width * 0.7687500,
        size.height * 0.5143200,
        size.width * 0.7844200,
        size.height * 0.5277500,
        size.width * 0.8037500,
        size.height * 0.5277500);
    path_0.lineTo(size.width * 0.8990450, size.height * 0.5277500);
    path_0.cubicTo(
        size.width * 0.8854700,
        size.height * 0.7257950,
        size.width * 0.7277400,
        size.height * 0.8842250,
        size.width * 0.5299950,
        size.height * 0.8988900);
    path_0.lineTo(size.width * 0.5299950, size.height * 0.8015000);
    path_0.cubicTo(
        size.width * 0.5299950,
        size.height * 0.7821700,
        size.width * 0.5165650,
        size.height * 0.7665000,
        size.width * 0.4999950,
        size.height * 0.7665000);
    path_0.cubicTo(
        size.width * 0.4834265,
        size.height * 0.7665000,
        size.width * 0.4699950,
        size.height * 0.7821700,
        size.width * 0.4699950,
        size.height * 0.8015000);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff5C5C5C).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff5C5C5C).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.07500000, paint1Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
