import 'package:bloc/bloc.dart';
import '../../../../../core/app_const/app_const.dart';
import '../../../../../core/toast/toast.dart';
import '../../../../../core/usecase/use_case.dart';
import '../../../domain/entities/item_details_entite.dart';
import '../../../domain/entities/item_entite.dart';
import '../../../domain/usecases/list_of_item_use_case.dart';
import '../../../domain/usecases/litem_details_use_case.dart';
import '../../../domain/usecases/login_use_case.dart';
part 'potato_state.dart';

class PotatoCubit extends Cubit<PotatoState> {
  final LoginUseCase loginUseCase;
  final ItemDetailsUseCase itemDetailsUseCase;
  final ListItemUseCase listItemUseCase;

  PotatoCubit(this.loginUseCase, this.itemDetailsUseCase, this.listItemUseCase)
      : super(PotatoInitial());

  ItemDetails? itemDetails;
  ItemData? item;
  num? weight;
  void login({required UserData userData, required context}) async {
    emit(LoadingLoginState());
    final result = await loginUseCase(
        UserData(userName: userData.userName, password: userData.password));
    result.fold((l) {
      AppToast.errorBar(message: 'Please Try Again');
      emit(ErrorLoginState());
    }, (r) async {
      print('loged in ${r}');
      AppToast.successBar(message: 'Login successfully');

      emit(SuccessLoginState());
    });
  }

  void getListItems() async {
    emit(ListItemLoadingState());
    final result = await listItemUseCase(NoParameter());
    result.fold((l) {
      print('Data list is ${l}');
      emit(ErrorListItemLoadingState());
    }, (r) async {
      item = r;
      emit(SuccessListItemLoadingState());
    });
  }

  void getItemDetails({required ItemParameter parameter}) async {
    emit(ItemDetailsLoadingState());
    final result = await itemDetailsUseCase(parameter);
    result.fold((l) {
      emit(ErrorItemDetailsState());
    }, (r) async {
      itemDetails = r;
      print('Item Details ${r}');
      emit(SuccessItemDetailsState());
    });
  }

  int counter = 0;

  increaseCounter() {
    counter++;
    emit(IncreaseState());
  }

  getIIdealWeight() {
    weight = AppConst.getIdealWeight(180, 23, true);
    emit(IdealWightState());
  }

  bool isObscure = false;
  void changeObscure() {
    isObscure != isObscure;
    emit(ObscureState());
  }
}
