import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../ui/shared/edge_insect.dart';


class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
          hintText: "Search",
          fillColor: Colors.white38,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius:
              const BorderRadius.all(Radius.circular(10))
          ),
          suffixIcon: InkWell(
            onTap: (){},
            child: Container (
              padding: EdgeInsets.all(defaultPadding * 0.75),
              margin: EdgeInsets.symmetric(
                  horizontal: defaultPadding / 2),
              decoration: BoxDecoration(color:Colors.black,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(10))
              ),
              child: Icon(FontAwesomeIcons.searchengin),
            ),
          ),
        )
    );
  }
}
