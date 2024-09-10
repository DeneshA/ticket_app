import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'bottom_nav_provider.g.dart';
@riverpod
class BottomNavBarNotifier extends _$BottomNavBarNotifier{
//Note : Every time you made a change on your provider run
// the "dart run " or "flutter pub run build_runner build"
  @override
  int build(){
    return 0;
  }

  void onItemTapped(int index){
    state = index;
    // the reactive variable are automatically stored in the state variables
    // compairing with getX with riverpod
    // states == selelectedIndex.vale

  }
}