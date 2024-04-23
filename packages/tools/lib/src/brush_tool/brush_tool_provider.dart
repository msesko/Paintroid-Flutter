// Package imports:
import 'package:command/command_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:tools/tools.dart';

part 'brush_tool_provider.g.dart';

@riverpod
BrushTool brushTool(BrushToolRef ref) {
  return BrushTool(
    paint: ref.watch(brushToolStateProvider.select((state) => state.paint)),
    commandManager: ref.watch(commandManagerProvider),
    commandFactory: ref.watch(commandFactoryProvider),
    graphicFactory: ref.watch(graphicFactoryProvider),
  );
}
