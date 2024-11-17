import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lotus_food/core/configs/assets/app_vectors.dart';

import '../../../common/helper/navigator/app_navigator.dart';
import '../../search/pages/search.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16
      ),
      child: TextField(
        readOnly: true,
        onTap: (){
          AppNavigator.push(context, const SearchPage());
        },
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(12),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50)
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(16),
            child: SvgPicture.asset(
              AppVectors.search,
              fit: BoxFit.fill,
              height: 16,
              width: 16,
            ),
          ),
          hintText: 'search',
        ),
      ),
    );
  }
}