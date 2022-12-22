library currency_picker;

import 'package:currency_picker/src/currency_list_view.dart';
import 'package:flutter/material.dart';

import 'src/currency.dart';
import 'src/currency_list_bottom_sheet.dart' as currency_list;
import 'src/currency_picker_theme_data.dart';

export 'package:currency_picker/src/currency.dart';
export 'package:currency_picker/src/currency_picker_theme_data.dart';
export 'package:currency_picker/src/currency_service.dart';
export 'package:currency_picker/src/currency_utils.dart';

/// Show currency picker
///
///  `onSelect`: Called when a currency is select. The currency picker passes the new value to the callback (required)
///  `showFlag`: Shows flag for each currency. Default value true (optional).
///  `searchHint`: Option to customize hint of the search TextField (optional).
///  `showCurrencyName`: Option to show/hide the currency name, default value true (optional).
///  `showCurrencyCode`: Option to show/hide the currency code, default value true (optional).
///  `currencyFilter`: Can be used to uses filter the Currency list (optional).
///  `favorite`: The Currencies that will appear at the top of the list (optional).
///  `theme`: can be used to customizing the country list bottom sheet (optional).
///
/// This example demonstrates how to use `showCurrencyPicker`
/// ```dart
/// showCurrencyPicker(
///    context: context,
///    showFlag: true,
///    showCurrencyName: true,
///    showCurrencyCode: true,
///    onSelect: (Currency currency) {
///       print('Select currency: ${currency.name}');
///    },
///    currencyFilter: <String>['EUR', 'GBP', 'USD', 'AUD', 'CAD', 'JPY', 'HKD', 'CHF', 'SEK', 'ILS'],
/// );
/// ```

class CurrencyPicker extends StatefulWidget {
  const CurrencyPicker({ Key? key , required this.onSelect,this.favorite,this.currencyFilter,this.searchHint,this.physics,this.theme,this.showSearchField =true,this.showFlag = true,this.showCurrencyCode= true,this.showCurrencyName=true,}) : super(key: key);
  final ValueChanged<Currency> onSelect;
  final List<String>? favorite;
  final List<String>? currencyFilter;
  final String? searchHint;
  final bool showSearchField;
  final bool showFlag;
  final bool showCurrencyName ;
  final bool showCurrencyCode;
  final ScrollPhysics? physics;
  final CurrencyPickerThemeData? theme;

  @override
  State<CurrencyPicker> createState() => _CurrencyPickerState();
}

class _CurrencyPickerState extends State<CurrencyPicker> {
  

  @override
  Widget build(BuildContext context) {
    return CurrencyListView(onSelect: widget.onSelect);
  }
}
// void showCurrencyPicker({
//   required BuildContext context,
//   required ValueChanged<Currency> onSelect,
//   List<String>? favorite,
//   List<String>? currencyFilter,
//   String? searchHint,
//   bool showSearchField = true,
//   bool showFlag = true,
//   bool showCurrencyName = true,
//   bool showCurrencyCode = true,
//   ScrollPhysics? physics,
//   CurrencyPickerThemeData? theme,
// }) {
//   assert(
//     showCurrencyName || showCurrencyCode,
//     'showCurrencyName and showCurrencyCode cannot be both false',
//   );
//   currency_list.showCurrencyListBottomSheet(
//     context: context,
//     onSelect: onSelect,
//     showSearchField: showSearchField,
//     searchHint: searchHint,
//     showFlag: showFlag,
//     showCurrencyName: showCurrencyName,
//     showCurrencyCode: showCurrencyCode,
//     favorite: favorite,
//     currencyFilter: currencyFilter,
//     theme: theme,
//     physics: physics,
//   );
// }

// @Deprecated(
//   'Use showCurrencyPicker instead. '
//   'This feature was deprecated after v1.0.2.',
// )
// void showCurrencyListBottomSheet({
//   required BuildContext context,
//   required ValueChanged<Currency> onSelect,
// }) {
//   showCurrencyPicker(
//     context: context,
//     onSelect: onSelect,
//   );
// }
