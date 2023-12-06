import 'package:bloc/bloc.dart';
import '../../../../../core/toast/toast.dart';
import '../../../../../core/usecase/use_case.dart';
import '../../../domain/usecases/list_of_item_use_case.dart';
import '../../../domain/usecases/litem_details_use_case.dart';
import '../../../domain/usecases/login_use_case.dart';
part 'potato_state.dart';

class PotatoCubit extends Cubit<PotatoState> {
  final LoginUseCase loginUseCase;
  final ItemDetailsUseCase itemDetailsUseCase;
  final ListItemUseCase listItemUseCase;

  PotatoCubit(
       this.loginUseCase,
       this.itemDetailsUseCase,
      this.listItemUseCase)
      : super(PotatoInitial());

  void login({required UserData userData, required context}) async {
    emit(LoadingLoginState());
    final result = await loginUseCase(
        UserData(userName: userData.userName, password: userData.password));
    result.fold((l) {
      AppToast.errorBar(message: 'Please Try Again');
      emit(ErrorLoginState());
    }, (r) async {
      // ///////////////
      print('Error ${r}');

      AppToast.successBar(message: 'Login successfully');

      emit(SuccessLoginState());
    });
  }

  void getListItems(NoParameter parameter) async {
    emit(ListItemLoadingState());
    final result = await listItemUseCase(parameter);
    result.fold((l) {
      emit(ErrorListItemLoadingState());
    }, (r) async {
      print('Error ${r}');
      emit(SuccessListItemLoadingState());
    });
  }

  void getItemDetails(ParameterId parameter) async {
    emit(ItemDetailsLoadingState());
    final result = await itemDetailsUseCase(parameter);
    result.fold((l) {
      emit(ErrorItemDetailsState());
    }, (r) async {
      print('Error ${r}');
      emit(SuccessItemDetailsState());
    });
  }

   int? counter;

  increaseCounter() {
    counter = counter! + 1;
    emit(IncreaseState());
  }
}
