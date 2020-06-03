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
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
