import 'package:flutter/material.dart';
import 'package:music_app/pages/selected_plan_page.dart';
import 'package:music_app/widgets/appbar_custom_widget.dart';
import 'package:music_app/widgets/banner_plan_widget.dart';

class ChoosePlanPage extends StatelessWidget {
  const ChoosePlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarCustom(context, 'Choose Your Plan'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            bannerPlan(
              context: context,
              title: 'Free',
              subtitle: 'Your current plan',
              feature1: 'Limited access to the music library.',
              feature2: 'Limited download options.',
              feature3: 'Ad-supported listening.',
              feature4: 'Standard audio quality.',
              button: false,
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            bannerPlan(
              context: context,
              title: '\$9.99',
              price: 'Month',
              subtitle: 'Go Pro & Get More Benefits',
              feature1: 'Cross-device syncing of playlists.',
              feature2: 'Unlimited downloads.',
              feature3: 'High-quality audio streaming.',
              feature4: 'Unlimited podcast access.',
              button: true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedPlanPage(),
                    ));
              },
            ),
            const SizedBox(
              height: 20,
            ),
            bannerPlan(
              context: context,
              title: '\$99.99',
              price: 'Year',
              subtitle: 'Go Pro & Get More Benefits',
              feature1: 'All features of the monthly plan.',
              feature2: 'Priority customer support.',
              feature3: 'Early access.',
              feature4: 'Significant cost saving.',
              button: true,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SelectedPlanPage(),
                    ));
              },
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
