/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/component_registry.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import '../model/internal_component.dart';
import 'package:eliud_core_main/apis/registryapi/component/component_spec.dart';
import 'abstract_repository_singleton.dart';
import 'package:eliud_core_main/apis/registryapi/component/component_constructor.dart';
import 'package:eliud_core_main/apis/apis.dart';

import 'html_with_platform_medium_component_selector.dart';

/* 
 * Component registry contains a list of components
 */
class ComponentRegistry {
  /* 
   * Initialise the component registry
   */
  init(
    ComponentConstructor htmlWithPlatformMediumComponentConstructorDefault,
    ComponentEditorConstructor htmlWithPlatformMediumComponentEditorConstructor,
  ) {
    Apis.apis().getRegistryApi().addInternalComponents('eliud_pkg_text_model', [
      "htmlWithPlatformMediums",
    ]);

    Apis.apis().getRegistryApi().addDropDownSupporter(
        "htmlWithPlatformMediums", DropdownButtonComponentFactory());
    Apis.apis().getRegistryApi().register(
        componentName: "htmlWithPlatformMediums",
        componentConstructor:
            htmlWithPlatformMediumComponentConstructorDefault);
    Apis.apis()
        .getRegistryApi()
        .addComponentSpec('eliud_pkg_text_model', 'text', [
      ComponentSpec(
          'htmlWithPlatformMediums',
          htmlWithPlatformMediumComponentConstructorDefault,
          HtmlWithPlatformMediumComponentSelector(),
          htmlWithPlatformMediumComponentEditorConstructor,
          ({String? appId}) => htmlWithPlatformMediumRepository(appId: appId)!),
    ]);
    Apis.apis().getRegistryApi().registerRetrieveRepository(
        'eliud_pkg_text_model',
        'htmlWithPlatformMediums',
        ({String? appId}) => htmlWithPlatformMediumRepository(appId: appId)!);
  }
}
