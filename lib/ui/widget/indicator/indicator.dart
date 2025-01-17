import 'package:daisy/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

part '_indicator/_indicator_line.dart';
part '_indicator/_indicator_progress.dart';

class Indicator extends StatelessWidget {
  factory Indicator.progressCircle() =>
      const Indicator._(_IndicatorProgressCircle());
  factory Indicator.progressLinear() =>
      const Indicator._(_IndicatorProgressLinear());
  factory Indicator.line() => const Indicator._(_IndicatorLine());
  const Indicator._(this.child);
  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}
