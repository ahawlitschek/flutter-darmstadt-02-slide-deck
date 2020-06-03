class NutritionAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const SizedBox(width: 24),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 200);
}
