import 'package:daisy/core/extension/context_extension.dart';
import 'package:daisy/ui/util/manager/assets.dart';
import 'package:daisy/ui/widget/gap/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part '_placeholder/_empty_avatar.dart';
part '_placeholder/_empty_list.dart';
part '_placeholder/_empty_page.dart';

class Empty extends StatelessWidget {
  factory Empty.avatar({SizeEnum? size}) => Empty._(EmptyAvatar(size: size));
  factory Empty.page({required String message, Color? color}) =>
      Empty._(EmptyPage(message: message, color: color));
  factory Empty.list(EmptyListParam param) => Empty._(_EmptyList(param));
  const Empty._(this.child);
  final Widget child;

  @override
  Widget build(BuildContext context) => child;
}
