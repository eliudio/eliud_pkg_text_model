/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/internal_component.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:eliud_core_main/apis/registryapi/component/component_constructor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eliud_core_helpers/query/query_tools.dart';

import 'package:eliud_core_helpers/tools/has_fab.dart';

import 'package:eliud_pkg_text_model/model/html_with_platform_medium_list_bloc.dart';
import 'package:eliud_pkg_text_model/model/html_with_platform_medium_list.dart';
import 'package:eliud_pkg_text_model/model/html_with_platform_medium_dropdown_button.dart';
import 'package:eliud_pkg_text_model/model/html_with_platform_medium_list_event.dart';

import 'package:eliud_pkg_text_model/model/abstract_repository_singleton.dart';
import 'package:eliud_core_main/model/model_export.dart';

class ListComponentFactory implements ComponentConstructor {
  @override
  Widget? createNew(
      {Key? key,
      required AppModel app,
      required String id,
      int? privilegeLevel,
      Map<String, dynamic>? parameters}) {
    return ListComponent(app: app, componentId: id);
  }

  @override
  dynamic getModel({required AppModel app, required String id}) {
    return null;
  }
}

typedef DropdownButtonChanged = Function(String? value, int? privilegeLevel);

class DropdownButtonComponentFactory implements ComponentDropDown {
  @override
  dynamic getModel({required AppModel app, required String id}) {
    return null;
  }

  @override
  bool supports(String id) {
    if (id == "htmlWithPlatformMediums") return true;
    return false;
  }

  @override
  Widget createNew(
      {Key? key,
      required AppModel app,
      required String id,
      int? privilegeLevel,
      Map<String, dynamic>? parameters,
      String? value,
      DropdownButtonChanged? trigger,
      bool? optional}) {
    if (id == "htmlWithPlatformMediums") {
      return DropdownButtonComponent(
          app: app,
          componentId: id,
          value: value,
          privilegeLevel: privilegeLevel,
          trigger: trigger,
          optional: optional);
    }

    return Text("Id $id not found");
  }
}

class ListComponent extends StatelessWidget with HasFab {
  final AppModel app;
  final String? componentId;
  final Widget? widget;
  final int? privilegeLevel;

  @override
  Widget? fab(BuildContext context) {
    if ((widget != null) && (widget is HasFab)) {
      HasFab hasFab = widget as HasFab;
      return hasFab.fab(context);
    }
    return null;
  }

  ListComponent({required this.app, this.privilegeLevel, this.componentId})
      : widget = getWidget(componentId, app);

  @override
  Widget build(BuildContext context) {
    if (componentId == 'htmlWithPlatformMediums') {
      return _htmlWithPlatformMediumBuild(context);
    }
    return Text('Component with componentId == $componentId not found');
  }

  static Widget getWidget(String? componentId, AppModel app) {
    if (componentId == 'htmlWithPlatformMediums') {
      return HtmlWithPlatformMediumListWidget(app: app);
    }
    return Container();
  }

  Widget _htmlWithPlatformMediumBuild(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HtmlWithPlatformMediumListBloc>(
          create: (context) => HtmlWithPlatformMediumListBloc(
            eliudQuery: EliudQuery(theConditions: [
              EliudQueryCondition('conditions.privilegeLevelRequired',
                  isEqualTo: privilegeLevel ?? 0),
              EliudQueryCondition('appId', isEqualTo: app.documentID),
            ]),
            htmlWithPlatformMediumRepository:
                htmlWithPlatformMediumRepository(appId: app.documentID)!,
          )..add(LoadHtmlWithPlatformMediumList()),
        )
      ],
      child: widget!,
    );
  }
}

typedef Changed = Function(String? value, int? privilegeLevel);

class DropdownButtonComponent extends StatelessWidget {
  final AppModel app;
  final String? componentId;
  final String? value;
  final Changed? trigger;
  final bool? optional;
  final int? privilegeLevel;

  DropdownButtonComponent(
      {required this.app,
      this.componentId,
      this.privilegeLevel,
      this.value,
      this.trigger,
      this.optional});

  @override
  Widget build(BuildContext context) {
    if (componentId == 'htmlWithPlatformMediums') {
      return _htmlWithPlatformMediumBuild(context);
    }
    return Text('Component with componentId == $componentId not found');
  }

  Widget _htmlWithPlatformMediumBuild(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HtmlWithPlatformMediumListBloc>(
          create: (context) => HtmlWithPlatformMediumListBloc(
            eliudQuery: EliudQuery(theConditions: [
              EliudQueryCondition('conditions.privilegeLevelRequired',
                  isEqualTo: privilegeLevel ?? 0),
              EliudQueryCondition('appId', isEqualTo: app.documentID),
            ]),
            htmlWithPlatformMediumRepository:
                htmlWithPlatformMediumRepository(appId: app.documentID)!,
          )..add(LoadHtmlWithPlatformMediumList()),
        )
      ],
      child: HtmlWithPlatformMediumDropdownButtonWidget(
          app: app,
          value: value,
          privilegeLevel: privilegeLevel,
          trigger: trigger,
          optional: optional),
    );
  }
}