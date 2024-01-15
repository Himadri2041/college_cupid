import 'package:college_cupid/shared/colors.dart';
import 'package:college_cupid/shared/styles.dart';
import 'package:college_cupid/widgets/profile/interests/display_interests.dart';
import 'package:flutter/material.dart';

class SelectInterestsScreen extends StatefulWidget {
  const SelectInterestsScreen({super.key});

  static String id = '/selectInterests';

  @override
  State<SelectInterestsScreen> createState() => _SelectInterestsScreenState();
}

class _SelectInterestsScreenState extends State<SelectInterestsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: const PreferredSize(
            preferredSize: Size.fromHeight(1), child: Divider()),
        systemOverlayStyle: CupidStyles.statusBarStyle,
        foregroundColor: CupidColors.titleColor,
        backgroundColor: Colors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text("Select Interests",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: CupidColors.titleColor,
        child: const Icon(Icons.check, color: Colors.white,),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                "Select a few of your interests and let everyone know what you’re passionate about.",
                style: CupidStyles.lightTextStyle,
              ),
            ),
            SizedBox(height: 20),
            DisplayInterests(),
          ],
        ),
      ),
    );
  }
}
