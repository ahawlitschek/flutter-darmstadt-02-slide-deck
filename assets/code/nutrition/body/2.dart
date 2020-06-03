class NutritionBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.only(left: 24),
          alignment: Alignment.topLeft,
          child: Text(
            'Smart Scales',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 32,
                fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
