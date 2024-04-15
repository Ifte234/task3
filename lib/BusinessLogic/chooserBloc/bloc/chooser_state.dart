part of 'chooser_bloc.dart';

@immutable
abstract class ChooserState {
  final int tabIndex;
  ChooserState({required this.tabIndex});
}

final class ChooserInitial extends ChooserState {
  ChooserInitial({required super.tabIndex});
}
