import "package:flutter/material.dart";

class NCompassPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.5000000);
    path_0.cubicTo(size.width, size.height * 0.7761421, size.width * 0.7761421,
        size.height, size.width * 0.5000000, size.height);
    path_0.cubicTo(size.width * 0.2238576, size.height, 0,
        size.height * 0.7761421, 0, size.height * 0.5000000);
    path_0.cubicTo(0, size.height * 0.2238576, size.width * 0.2238576, 0,
        size.width * 0.5000000, 0);
    path_0.cubicTo(size.width * 0.7761421, 0, size.width,
        size.height * 0.2238576, size.width, size.height * 0.5000000);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.4276316, size.height * 0.1710526);
    path_1.lineTo(size.width * 0.4276316, size.height * 0.05263158);
    path_1.lineTo(size.width * 0.4605263, size.height * 0.05263158);
    path_1.lineTo(size.width * 0.5197368, size.height * 0.1184211);
    path_1.lineTo(size.width * 0.5197368, size.height * 0.05263158);
    path_1.lineTo(size.width * 0.5526316, size.height * 0.05263158);
    path_1.lineTo(size.width * 0.5526316, size.height * 0.1710526);
    path_1.lineTo(size.width * 0.5197368, size.height * 0.1710526);
    path_1.lineTo(size.width * 0.4605263, size.height * 0.1052632);
    path_1.lineTo(size.width * 0.4605263, size.height * 0.1710526);
    path_1.lineTo(size.width * 0.4276316, size.height * 0.1710526);
    path_1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xff444444).withOpacity(1.0);
    canvas.drawPath(path_1, paint1Fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.07236842, size.height * 0.4736842);
    path_2.lineTo(size.width * 0.1250000, size.height * 0.4736842);
    path_2.lineTo(size.width * 0.1250000, size.height * 0.5263158);
    path_2.lineTo(size.width * 0.07236842, size.height * 0.5263158);
    path_2.lineTo(size.width * 0.07236842, size.height * 0.4736842);
    path_2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path_2, paint2Fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.8750000, size.height * 0.4736842);
    path_3.lineTo(size.width * 0.9276316, size.height * 0.4736842);
    path_3.lineTo(size.width * 0.9276316, size.height * 0.5263158);
    path_3.lineTo(size.width * 0.8750000, size.height * 0.5263158);
    path_3.lineTo(size.width * 0.8750000, size.height * 0.4736842);
    path_3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path_3, paint3Fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4736842, size.height * 0.8750000);
    path_4.lineTo(size.width * 0.5263158, size.height * 0.8750000);
    path_4.lineTo(size.width * 0.5263158, size.height * 0.9276316);
    path_4.lineTo(size.width * 0.4736842, size.height * 0.9276316);
    path_4.lineTo(size.width * 0.4736842, size.height * 0.8750000);
    path_4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xff666666).withOpacity(1.0);
    canvas.drawPath(path_4, paint4Fill);

    Paint paint5Stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01315789;
    paint5Stroke.color = const Color(0xffB6B6B6).withOpacity(1.0);
    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.2894737, paint5Stroke);

    // Paint paint5Fill = Paint()..style = PaintingStyle.stroke;
    // paint5Fill.color = const Color(0xff000000).withOpacity(1.0);

    canvas.drawCircle(Offset(size.width * 0.5000000, size.height * 0.5000000),
        size.width * 0.2894737, paint5Stroke);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.4975763, size.height * 0.7113947);
    path_6.lineTo(size.width * 0.4078947, size.height * 0.5000000);
    path_6.lineTo(size.width * 0.5921053, size.height * 0.5000000);
    path_6.lineTo(size.width * 0.5024237, size.height * 0.7113947);
    path_6.cubicTo(
        size.width * 0.5015158,
        size.height * 0.7135342,
        size.width * 0.4984842,
        size.height * 0.7135342,
        size.width * 0.4975763,
        size.height * 0.7113947);
    path_6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffC9C9C9).withOpacity(1.0);
    canvas.drawPath(path_6, paint6Fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.4975763, size.height * 0.2886053);
    path_7.lineTo(size.width * 0.4078947, size.height * 0.5000000);
    path_7.lineTo(size.width * 0.5921053, size.height * 0.5000000);
    path_7.lineTo(size.width * 0.5024237, size.height * 0.2886053);
    path_7.cubicTo(
        size.width * 0.5015158,
        size.height * 0.2864658,
        size.width * 0.4984842,
        size.height * 0.2864658,
        size.width * 0.4975763,
        size.height * 0.2886053);
    path_7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xffEB2739).withOpacity(1.0);
    canvas.drawPath(path_7, paint7Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
