import 'package:eventy_app/controllers/auth/signin_controller.dart';
import 'package:eventy_app/models/event.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:eventy_app/services/profile.dart';

class ProfileController extends GetxController {
  final profileService = ProfileService();

  List<Event> eventList = <Event>[];
  List<Comment> commentList = <Comment>[];

  // int userId = 4;
  User? user = User();

  Future<List<Event>?> getEventsListForUser() async {
    Logger().d("getEventsListForUser ");
    user = await Get.find<LoginController>().getLoggedInUserObject();

    var userId = user!.id!;
    Logger().d(userId.toString());

    try {
      await profileService.getEventsForUser(userId).then((value) {
        eventList.clear();

        eventList = value!.map((element) => Event.fromJson(element)).toList();
        eventList.forEach((Event element) {
          // Logger().d("${element.title}");
        });
        // Logger().d("FILTER LIST ${_Events.length}");
      });
    } catch (e) {
      Logger().d(e);
    }
    update();

    return eventList;
  }

  Future deleteEvent(int eventId) async {
    Logger().d("deleteEvent ");

    try {
      await profileService.deleteEvent(eventId).then((value) {
        eventList.removeWhere((element) => element.id == eventId);
        Logger().d(eventList);
        update();

        var a = Event.fromJson(value);
        Logger().d(a);
      });
    } catch (e) {
      Logger().d(e);
    }
    update();

    return eventList;
  }

  // Future<List<Comment>?> getCommentsForUser(int userId) async {
  //   Logger().d("getCommentsForUser ");
  //   userId = user!.id!;
  //   Logger().d(user!.id);
  //
  //   try {
  //     await profileService.getCommentsForUser(userId).then((value) {
  //       commentList.clear();
  //
  //       commentList = value!.map((element) => Comment.fromJson(element)).toList();
  //       commentList.forEach((Comment element) {
  //         Logger().d(" hi : ${element.commentText!}");
  //       });
  //       // Logger().d("FILTER LIST ${_Events.length}");
  //     });
  //   } catch (e) {
  //     Logger().d(e);
  //   }
  //   update();
  //
  //   return commentList;
  // }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await getEventsListForUser();
    // await getCommentsForUser(userId);
  }
}
