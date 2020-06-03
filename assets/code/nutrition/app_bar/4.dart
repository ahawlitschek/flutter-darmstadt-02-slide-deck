class NutritionAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          const SizedBox(width: 24),
          Chip(
            avatar: CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage('assets/img/iren.jpg'),
            ),
            backgroundColor: kNutritionYellow,
            label: Text(
              'Hi, Iren',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 200);
}
