// Package imports:

// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:paintroid/core/commands/command_factory/command_factory_provider.dart';
import 'package:paintroid/core/commands/command_manager/command_manager_provider.dart';
import 'package:paintroid/core/enums/tool_types.dart';
import 'package:paintroid/core/providers/state/tools/brush/brush_tool_state_provider.dart';
import 'package:paintroid/core/tools/implementation/hand_tool.dart';

part 'hand_tool_provider.g.dart';

@riverpod
HandTool handTool(HandToolRef ref) {
  return HandTool(
    paint: ref.watch(brushToolStateProvider.select((state) => state.paint)),
    commandManager: ref.watch(commandManagerProvider),
    commandFactory: ref.watch(commandFactoryProvider),
    type: ToolType.HAND,
  );
}
