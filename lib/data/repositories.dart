import 'models/restaurant_data_model.dart';

abstract class AuthRepository {}

abstract class AbRestaurant {
  Future<RestaurantDataModel> getMenu();
}
