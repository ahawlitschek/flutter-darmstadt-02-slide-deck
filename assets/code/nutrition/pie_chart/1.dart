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
              child: CustomPaint(
                painter: NutritionPieChartPainter(0.5),
                child: Container(
                  constraints: BoxConstraints(minHeight: 232),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Your Weight',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        '56kg',
                        style: TextStyle(
                          color: kNutritionGreen,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Statistics',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: kNutritionGreen,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Row(
                      children: [
                        Text('Week', style: TextStyle(color: Colors.white)),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 16,
                          color: Colors.white54,
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NutritionDataBar(
                    upperPercentage: 0.3,
                    lowerPercentage: 0.4,
                    upperColor: kNutritionRed,
                    lowerColor: kNutritionYellow,
                    label: Text('Mo', style: TextStyle(color: Colors.white38)),
                  ),
                  NutritionDataBar(
                    upperPercentage: 0.5,
                    lowerPercentage: 0.5,
                    upperColor: kNutritionYellow,
                    lowerColor: kNutritionRed,
                    label: Text('Tu', style: TextStyle(color: Colors.white38)),
                  ),
                  NutritionDataBar(
                    upperPercentage: 0.2,
                    lowerPercentage: 0.3,
                    upperColor: kNutritionYellow,
                    lowerColor: kNutritionRed,
                    label: Text('We', style: TextStyle(color: Colors.white38)),
                  ),
                  NutritionDataBar(
                    upperPercentage: 0.7,
                    lowerPercentage: 0.8,
                    upperColor: kNutritionRed,
                    lowerColor: kNutritionYellow,
                    label: Text('Th', style: TextStyle(color: Colors.white38)),
                  ),
                  NutritionDataBar(
                    upperPercentage: 0.3,
                    lowerPercentage: 0.3,
                    upperColor: kNutritionRed,
                    lowerColor: kNutritionYellow,
                    label: Text('Fr', style: TextStyle(color: Colors.white38)),
                  ),
                  NutritionDataBar(
                    upperPercentage: 0.2,
                    lowerPercentage: 0.5,
                    upperColor: kNutritionYellow,
                    lowerColor: kNutritionRed,
                    label: Text('Sa', style: TextStyle(color: Colors.white38)),
                  ),
                  NutritionDataBar(
                    upperPercentage: 0.5,
                    lowerPercentage: 0.5,
                    upperColor: kNutritionYellow,
                    lowerColor: kNutritionRed,
                    label: Text('Su', style: TextStyle(color: Colors.white38)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
