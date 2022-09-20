import 'package:digital_14/assets/colors/colors.dart';
import 'package:digital_14/assets/strings/search_app_bar_widget_strings.dart';
import 'package:digital_14/assets/typography/app_typography.dart';
import 'package:digital_14/features/events/screens/search_screen/widgets/search_app_bar_widget/search_app_bar_widget_model.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';

/// App bar with search field widget.
class SearchAppBarWidget extends ElementaryWidget<ISearchAppBarWidgetModel> {
  /// Create an instance [SearchAppBarWidget].
  const SearchAppBarWidget({
    Key? key,
    WidgetModelFactory wmFactory = searchAppBarWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(ISearchAppBarWidgetModel wm) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Flexible(
          child: SizedBox(
            height: 40,
            child: TextFormField(
              controller: wm.searchFieldController,
              style: AppTypography.body.copyWith(color: white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: white,
                ),
                suffixIcon: ValueListenableBuilder<bool>(
                  valueListenable: wm.showCancelButton,
                  builder: (BuildContext context, bool data, Widget? child) {
                    if (data) {
                      return IconButton(
                        onPressed: wm.onCancelPressed,
                        icon: const Icon(Icons.cancel, color: white),
                      );
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: textFieldBackground,
                    width: 0.0,
                  ),
                ),
                filled: true,
                fillColor: textFieldBackground,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 10,
                ),
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: wm.onCancelPressed,
          child: Text(
            SearchAppBarWidgetStrings.cancel,
            style: AppTypography.title.copyWith(color: white),
          ),
        ),
      ],
    );
  }
}
