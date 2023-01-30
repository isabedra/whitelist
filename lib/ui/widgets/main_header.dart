import 'package:bank_dashboard/responsive.dart';
import 'package:bank_dashboard/ui/shared/colors.dart';
import 'package:bank_dashboard/ui/shared/spacing.dart';
import 'package:bank_dashboard/ui/shared/text_styles.dart';
import 'package:bank_dashboard/views/dashboard/searchfield.dart';
import 'package:bank_dashboard/views/main/main_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../shared/edge_insect.dart';

class MainHeader extends ViewModelWidget<MainViewModel> {
  const MainHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, viewModel) {
    return Row(
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: kBlackColor,
            ),
            onPressed: viewModel.controlMenu,
          ),
        horizontalSpaceSmall,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'UploadFile,',
              style: kBodyRegularTextStyle,
            ),
          ],
        ),

        const Spacer(),




        horizontalSpaceSmall,
        Container(padding: EdgeInsets.all(defaultPadding * 0.75),
    margin: EdgeInsets.symmetric(
    horizontal: defaultPadding / 2),
    decoration: BoxDecoration(color:
    Colors.white,
    borderRadius:
    const BorderRadius.all(Radius.circular(10))
    ),
    child: Icon(FontAwesomeIcons.searchengin),
    ),

      ],
    );
  }
}



