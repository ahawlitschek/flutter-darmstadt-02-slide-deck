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
        const SizedBox(height: 32),
        Row(
          children: [
            const SizedBox(width: 24),
            Expanded(
              child: Placeholder(fallbackHeight: 200),
            ),
            const SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('34%', style: kValueTextStyle),
                Text('MUSCLE', style: kLabelTextStyle),
                const SizedBox(height: 24),
                Text('24%', style: kValueTextStyle),
                Text('ADIPOSE TISSUE', style: kLabelTextStyle),
                const SizedBox(height: 24),
                Text('60%', style: kValueTextStyle),
                Text('WATER', style: kLabelTextStyle),
              ],
            ),
            const SizedBox(width: 24),
          ],
        ),
        const SizedBox(height: 24),
        Spacer(),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kNutritionGreenDark,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24), topRight: Radius.circular(24)),
          ),
          padding:
          const EdgeInsets.only(left: 16, top: 24, right: 16, bottom: 24),
        ),
      ],
    );
  }
}
