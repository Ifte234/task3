import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chooser_event.dart';
part 'chooser_state.dart';

class ChooserBloc extends Bloc<ChooserEvent, ChooserState> {
  ChooserBloc() : super(ChooserInitial(tabIndex: 0)) {
    on<ChooserEvent>((event, emit) {
      
      if (event is TabChange) {
        print('Event of tanindex' + event.tabindex.toString());

        emit(ChooserInitial(tabIndex: event.tabindex));
      }
    });
  }
}
