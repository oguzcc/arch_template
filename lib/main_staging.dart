import 'package:daisy/core/config/api_options.dart';
import 'package:daisy/core/config/app_flavor.dart';
import 'package:daisy/main.dart' as runner;

Future<void> main() async {
  AppFlavor(apiOptions: ApiOption.staging());
  await runner.main();
}
