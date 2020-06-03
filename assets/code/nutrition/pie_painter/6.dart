class NutritionPieChartPainter extends CustomPainter {
  final double percentage;

  NutritionPieChartPainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final paintPie = Paint()
      ..color = kNutritionRed.withOpacity(0.25)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 16;

    final startAngle = -5 * pi / 4;
    final fullSweepAngle = 6 * pi / 4;
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - 24;
    final percentageSweepAngle = fullSweepAngle * percentage;

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        fullSweepAngle, false, paintPie);

    paintPie.color = kNutritionRed;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startAngle,
        percentageSweepAngle, false, paintPie);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
