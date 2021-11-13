import 'package:eventy_app/services/home.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:eventy_app/controllers/profile/Profile_controller.dart';
import 'package:eventy_app/models/event.dart' show Event, Category, User;

// import 'package:eventy_app/models/Category.dart';
// import 'package:eventy_app/services/Home%20Service.dart';
import 'package:eventy_app/util/app_state.dart';

class HomeViewController extends GetxController {
  final homeService = HomeService();

  List<Category> _categories = <Category>[];

  List<Event> _eventList = <Event>[];

  List<Event> _eventsListFilter = <Event>[];

// User? user =User();

  int catId = 4;

  var likes = 0.obs;
  final appState = Rx<AppState>(AppState.LOADING);

  increment() => likes++;

  List<Category> get categories => _categories;

  List<Event> get allEvents => _eventList;

  List<Event> get eventsListFilter => _eventsListFilter;


  Future<List<Category>?> getCategoryList() async {
    try {
      homeService.getCategories().then((value) {
        // _categories.clear();

        _categories = value!.map((dynamic element) => Category.fromJson(element)).toList();
      });
    } catch (e) {
      Logger().d(e);
    }
    update();

    return categories;
  }

  Future<List<Event>?> getEventsListWithFilter(int catId) async {
    Logger().d("getEventsListWithFilter ");
    Get.put<ProfileController>(ProfileController());

    appState.value = AppState.LOADING;
    try {
      await homeService.getEventsWithFilter(catId).then((value) {
        _eventsListFilter.clear();
        _eventsListFilter = value!.map((element) => Event.fromJson(element)).toList();
        _eventsListFilter.forEach((Event element) {
          // Logger().d("${element.eventImages!.length}");
        });
        Logger().d("FILTER LIST ${eventsListFilter.length}");
        // var imageList = _eventsListFilter!.map((e) => e.eventImages!.map((e) => e!.url)).toList();
        // Logger().d(imageList.runtimeType);
        // if(_Events!.map((e) => e.eventImages!.length) == null){
        // Logger().d('Hi ${eventImages!.length.toString()}');
        // }
      });
      appState.value = AppState.DONE;
      update();
    } catch (e) {
      Logger().d(e);
    }

    return eventsListFilter;
  }

  Future<List<Event>?> getAllEvents() async {
    Logger().d("getAllEvents ");

    appState.value = AppState.LOADING;
    try {
      await homeService.getAllEvents().then((value) {
        _eventList.clear();

        _eventList = value!.map((element) => Event.fromJson(element)).toList();
        _eventList.forEach((Event element) {
          // Logger().d("${element.eventImages!.length}");
        });
        Logger().d("getAllEvents LIST ${_eventList.length}");
        // var imageList = _eventsListFilter!.map((e) => e.eventImages!.map((e) => e!.url)).toList();
        // Logger().d(imageList.runtimeType);
        // if(_Events!.map((e) => e.eventImages!.length) == null){
        // Logger().d('Hi ${eventImages!.length.toString()}');
        // }
      });
      appState.value = AppState.DONE;
      update();
    } catch (e) {
      Logger().d(e);
    }

    return _eventList;
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();

    // user = await Get.find<LoginController>().getLoggedInUserObject();

    await getCategoryList();
    await getEventsListWithFilter(catId);
    await getAllEvents();

    appState.value = AppState.DONE;
  }
}
