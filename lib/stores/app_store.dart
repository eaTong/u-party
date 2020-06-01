import 'package:uparty/entities/user.dart';
import 'package:uparty/framework/application.dart';
import 'package:uparty/framework/request.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'app_store.g.dart';

// This is the class used by rest of your codebase
class AppStore = _AppStore with _$AppStore;

// The store-class
abstract class _AppStore with Store {
  @observable
  User loginUser;

  @action
  Future<Map> quickLogin(String deviceId , context) async {
    print('aha ...login');
    print(deviceId);
    Map user = await request('/api/pub/quickLogin', data: {'uuid': deviceId});
    print(user);
    if(user!= null){
      loginUser = User.fromJson(user);
      Application.router.navigateTo(context, '/home', replace: true);
    }
    return user;
  }

  @action
  loginByAccount(String account, String password) {}
}
