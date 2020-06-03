class NutritionBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kNutritionGreenDark,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: kNutritionGreen,
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
      ),
    );
  }
}
