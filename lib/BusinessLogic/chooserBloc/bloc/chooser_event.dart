part of 'chooser_bloc.dart';

@immutable
abstract class ChooserEvent {

}

  class TabChange extends ChooserEvent{
    final int tabindex;
    TabChange({required this.tabindex});
  }