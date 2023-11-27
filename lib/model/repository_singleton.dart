/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/repository_singleton.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'abstract_repository_singleton.dart';
import 'package:eliud_core_main/tools/main_abstract_repository_singleton.dart';
import 'dart:collection';
import '../model/html_with_platform_medium_firestore.dart';
import '../model/html_with_platform_medium_repository.dart';
import '../model/html_with_platform_medium_cache.dart';

class RepositorySingleton extends AbstractRepositorySingleton {
  final _htmlWithPlatformMediumRepository =
      HashMap<String, HtmlWithPlatformMediumRepository>();

  @override
  HtmlWithPlatformMediumRepository? htmlWithPlatformMediumRepository(
      String? appId) {
    if ((appId != null) && (_htmlWithPlatformMediumRepository[appId] == null)) {
      _htmlWithPlatformMediumRepository[appId] = HtmlWithPlatformMediumCache(
          HtmlWithPlatformMediumFirestore(
              () => appRepository()!
                  .getSubCollection(appId, 'htmlwithplatformmedium'),
              appId));
    }
    return _htmlWithPlatformMediumRepository[appId];
  }
}
