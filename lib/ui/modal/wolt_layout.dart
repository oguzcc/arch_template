import 'package:daisy/core/extension/context_extension.dart';
import 'package:daisy/core/extension/string_extension.dart';
import 'package:daisy/localization/locale_keys/locale_keys.g.dart';
import 'package:daisy/ui/util/size/app_padding.dart';
import 'package:daisy/ui/widget/button/button.dart';
import 'package:daisy/ui/widget/gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

final pageIndexNotifier = ValueNotifier<int>(0);

class WoltLayout {
  static void backToFirstPage() => pageIndexNotifier.value = 0;

  // ignore: avoid_setters_without_getters
  static set goToPage(int index) => pageIndexNotifier.value = index;

  static void backToFirstPageAndPop(BuildContext context) {
    backToFirstPage();
    Navigator.of(context).pop();
  }

  static WoltModalSheetPage woltPage(
    BuildContext context, {
    required String title,
    required Widget child,
    String? buttonTitle,
    Widget? heroImage,
    VoidCallback? onLeadingPressed,
    VoidCallback? onTrailingPressed,
    VoidCallback? onButtonPressed,
    Color? onButtonColor,
    bool? isLeading = false,
    bool? cancelButton,
  }) {
    final woltBackground = Theme.of(context).scaffoldBackgroundColor;
    return WoltModalSheetPage(
      backgroundColor: woltBackground,
      sabGradientColor: woltBackground,
      surfaceTintColor: woltBackground,
      isTopBarLayerAlwaysVisible: true,
      heroImage: heroImage,
      topBarTitle: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (onLeadingPressed != null || (isLeading ?? false))
            Align(
              alignment: Alignment.centerLeft,
              child: Button.iconBack(
                onPressed: () {
                  onLeadingPressed?.call();
                  backToFirstPage();
                },
              ),
            ),
          const Spacer(),
          Text(
            title.overflow(32),
            style: context.text.bodyMedium,
          ),
          const Spacer(),
          /*   Button.iconClose(onPressed: () {
            onTrailingPressed?.call();
            backToFirstPage();
            context.pop();
          }) */
        ],
      ),
      child: IntrinsicHeight(
        child: Padding(
          padding: AppPadding.baseScaffold,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Align(alignment: Alignment.topCenter, child: child),
              ),
              if (onButtonPressed != null) ...[
                const Gap.xl(),
                Button.elevated(
                  label: buttonTitle ?? LocaleKeys.common_done.t,
                  onPressed: () {
                    onButtonPressed.call();
                    backToFirstPage();
                  },
                ),
              ],
              if (cancelButton ?? false) ...[
                const Gap.sm(),
                Button.outlined(
                  label: LocaleKeys.common_cancel.t,
                  onPressed: () {
                    backToFirstPage();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
