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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home, color: Colors.white),
            Icon(Icons.blur_circular, color: Colors.white),
            Icon(Icons.flash_on, color: Colors.white),
            Icon(Icons.settings, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
