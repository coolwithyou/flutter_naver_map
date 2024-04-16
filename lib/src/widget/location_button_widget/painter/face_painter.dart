part of flutter_naver_map;

class NFacePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9599900, size.height * 0.4999995);
    path_0.cubicTo(
        size.width * 0.9599900,
        size.height * 0.7540500,
        size.width * 0.7540400,
        size.height * 0.9600000,
        size.width * 0.4999900,
        size.height * 0.9600000);
    path_0.cubicTo(
        size.width * 0.2459395,
        size.height * 0.9600000,
        size.width * 0.03999025,
        size.height * 0.7540500,
        size.width * 0.03999025,
        size.height * 0.4999995);
    path_0.cubicTo(
        size.width * 0.03999025,
        size.height * 0.3602690,
        size.width * 0.1022915,
        size.height * 0.2350905,
        size.width * 0.2006315,
        size.height * 0.1507255);
    path_0.lineTo(size.width * 0.2400275, size.height * 0.1959840);
    path_0.cubicTo(
        size.width * 0.2384770,
        size.height * 0.1973110,
        size.width * 0.2369370,
        size.height * 0.1986495,
        size.width * 0.2354070,
        size.height * 0.2000000);
    path_0.cubicTo(
        size.width * 0.1599115,
        size.height * 0.2666340,
        size.width * 0.1097625,
        size.height * 0.3613215,
        size.width * 0.1012715,
        size.height * 0.4677495);
    path_0.lineTo(size.width * 0.1964900, size.height * 0.4677495);
    path_0.cubicTo(
        size.width * 0.2158200,
        size.height * 0.4677495,
        size.width * 0.2314900,
        size.height * 0.4811810,
        size.width * 0.2314900,
        size.height * 0.4977495);
    path_0.cubicTo(
        size.width * 0.2314900,
        size.height * 0.5143200,
        size.width * 0.2158200,
        size.height * 0.5277500,
        size.width * 0.1964900,
        size.height * 0.5277500);
    path_0.lineTo(size.width * 0.1009380, size.height * 0.5277500);
    path_0.cubicTo(
        size.width * 0.1145090,
        size.height * 0.7258000,
        size.width * 0.2722455,
        size.height * 0.8842300,
        size.width * 0.4699950,
        size.height * 0.8988900);
    path_0.lineTo(size.width * 0.4699950, size.height * 0.8015000);
    path_0.cubicTo(
        size.width * 0.4699950,
        size.height * 0.7821700,
        size.width * 0.4834265,
        size.height * 0.7665000,
        size.width * 0.4999950,
        size.height * 0.7665000);
    path_0.cubicTo(
        size.width * 0.5165650,
        size.height * 0.7665000,
        size.width * 0.5299950,
        size.height * 0.7821700,
        size.width * 0.5299950,
        size.height * 0.8015000);
    path_0.lineTo(size.width * 0.5299950, size.height * 0.8988900);
    path_0.cubicTo(
        size.width * 0.7277400,
        size.height * 0.8842250,
        size.width * 0.8854700,
        size.height * 0.7257950,
        size.width * 0.8990450,
        size.height * 0.5277500);
    path_0.lineTo(size.width * 0.8037500, size.height * 0.5277500);
    path_0.cubicTo(
        size.width * 0.7844200,
        size.height * 0.5277500,
        size.width * 0.7687500,
        size.height * 0.5143200,
        size.width * 0.7687500,
        size.height * 0.4977495);
    path_0.cubicTo(
        size.width * 0.7687500,
        size.height * 0.4811810,
        size.width * 0.7844200,
        size.height * 0.4677495,
        size.width * 0.8037500,
        size.height * 0.4677495);
    path_0.lineTo(size.width * 0.8987100, size.height * 0.4677495);
    path_0.cubicTo(
        size.width * 0.8902200,
        size.height * 0.3613215,
        size.width * 0.8400700,
        size.height * 0.2666340,
        size.width * 0.7645750,
        size.height * 0.2000000);
    path_0.cubicTo(
        size.width * 0.7629550,
        size.height * 0.1985730,
        size.width * 0.7613300,
        size.height * 0.1971590,
        size.width * 0.7596900,
        size.height * 0.1957580);
    path_0.lineTo(size.width * 0.7985000, size.height * 0.1500000);
    path_0.cubicTo(
        size.width * 0.8973300,
        size.height * 0.2343715,
        size.width * 0.9599900,
        size.height * 0.3598680,
        size.width * 0.9599900,
        size.height * 0.4999995);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff0670FF).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff0670FF).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.07500000, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.4033760, size.height * 0.3875000);
    path_2.lineTo(size.width * 0.1623045, size.height * -0.02687500);
    path_2.cubicTo(
        size.width * 0.4259085,
        size.height * -0.1243750,
        size.width * 0.5737000,
        size.height * -0.1243750,
        size.width * 0.8373050,
        size.height * -0.02687500);
    path_2.lineTo(size.width * 0.5962350, size.height * 0.3875000);
    path_2.cubicTo(
        size.width * 0.5209200,
        size.height * 0.3509375,
        size.width * 0.4786915,
        size.height * 0.3509375,
        size.width * 0.4033760,
        size.height * 0.3875000);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.shader = ui.Gradient.linear(
        Offset(size.width * 9.99609 / 20, size.height * -2 / 20),
        Offset(size.width * 10 / 20, size.height * 8 / 20), [
      const Color(0xff086FF9).withOpacity(0),
      const Color(0xff086FFA).withOpacity(0.1921),
      const Color(0xff076FFB).withOpacity(0.323077),
      const Color(0xff0670FF).withOpacity(1),
      const Color(0xff054293).withOpacity(1),
    ], [
      0.175,
      0.425,
      0.585,
      0.975,
      1
    ]);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1648080, size.height * -0.02255345);
    path_3.cubicTo(
        size.width * 0.1634195,
        size.height * -0.02494035,
        size.width * 0.1603590,
        size.height * -0.02574960,
        size.width * 0.1579720,
        size.height * -0.02436100);
    path_3.lineTo(size.width * 0.1558110, size.height * -0.02310385);
    path_3.cubicTo(
        size.width * 0.1534240,
        size.height * -0.02171520,
        size.width * 0.1526150,
        size.height * -0.01865455,
        size.width * 0.1540035,
        size.height * -0.01626770);
    path_3.lineTo(size.width * 0.3937270, size.height * 0.3957900);
    path_3.cubicTo(
        size.width * 0.3963580,
        size.height * 0.4003130,
        size.width * 0.4020310,
        size.height * 0.4020425,
        size.width * 0.4067380,
        size.height * 0.3997575);
    path_3.lineTo(size.width * 0.4088245, size.height * 0.3987445);
    path_3.cubicTo(
        size.width * 0.4457630,
        size.height * 0.3808125,
        size.width * 0.4731510,
        size.height * 0.3725780,
        size.width * 0.4997940,
        size.height * 0.3725780);
    path_3.cubicTo(
        size.width * 0.5264350,
        size.height * 0.3725780,
        size.width * 0.5538250,
        size.height * 0.3808125,
        size.width * 0.5907650,
        size.height * 0.3987445);
    path_3.lineTo(size.width * 0.5928500, size.height * 0.3997575);
    path_3.cubicTo(
        size.width * 0.5975550,
        size.height * 0.4020425,
        size.width * 0.6032300,
        size.height * 0.4003130,
        size.width * 0.6058600,
        size.height * 0.3957900);
    path_3.lineTo(size.width * 0.8455850, size.height * -0.01626770);
    path_3.cubicTo(
        size.width * 0.8469750,
        size.height * -0.01865455,
        size.width * 0.8461650,
        size.height * -0.02171520,
        size.width * 0.8437750,
        size.height * -0.02310385);
    path_3.lineTo(size.width * 0.8416150, size.height * -0.02436100);
    path_3.cubicTo(
        size.width * 0.8392300,
        size.height * -0.02574960,
        size.width * 0.8361700,
        size.height * -0.02494035,
        size.width * 0.8347800,
        size.height * -0.02255345);
    path_3.lineTo(size.width * 0.5962200, size.height * 0.3874995);
    path_3.cubicTo(
        size.width * 0.5209050,
        size.height * 0.3509370,
        size.width * 0.4786805,
        size.height * 0.3509370,
        size.width * 0.4033655,
        size.height * 0.3874995);
    path_3.lineTo(size.width * 0.1648080, size.height * -0.02255345);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.5000000, size.height * 1.104750e-7),
        Offset(size.width * 0.4997940, size.height * 0.4038090), [
      const Color(0xff086FF9).withOpacity(0),
      const Color(0xff086FF9).withOpacity(1)
    ], [
      0,
      1
    ]);
    canvas.drawPath(path_3, paint3Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
