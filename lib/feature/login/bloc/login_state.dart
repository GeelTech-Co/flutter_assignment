part of 'login_cubit.dart';

class LoginState extends Equatable {
  const LoginState({
    this.isObscurePassword = false,
    this.errorMassage = '',
    this.getDataStatus = GetDataStatus.init,
    this.name,
  });
  final bool isObscurePassword;
  final GetDataStatus getDataStatus;
  final String errorMassage;
  final String? name;
  LoginState copyWith({
    bool? isObscurePassword,
    GetDataStatus? getDataStatus,
    String? errorMassage,
    String? name,
  }) =>
      LoginState(
        isObscurePassword: isObscurePassword ?? this.isObscurePassword,
        getDataStatus: getDataStatus ?? this.getDataStatus,
        errorMassage: errorMassage ?? this.errorMassage,
        name: name ?? this.name,
      );
  @override
  List<Object> get props => [
        isObscurePassword,
        getDataStatus,
        errorMassage,
      ];
}
