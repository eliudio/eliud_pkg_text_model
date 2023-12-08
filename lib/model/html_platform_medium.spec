{
  "id": "HtmlPlatformMedium",
  "packageName": "eliud_pkg_text_model",
  "packageFriendlyName": "text",
  "generate": {
    "generateComponent": false,
    "generateRepository": true,
    "generateCache": true,
    "hasPersistentRepository": false,
    "generateFirestoreRepository": false,
    "generateRepositorySingleton": false,
    "generateModel": true,
    "generateEntity": true,
    "generateForm": false,
    "generateList": false,
    "generateDropDownButton": true,
    "generateInternalComponent": false,
    "generateEmbeddedComponent": true
  },
  "fields": [
    {
      "fieldName": "documentID",
      "required": true,
      "displayName": "Document ID",
      "fieldType": "String",
      "group": "componentName",
      "defaultValue": "IDENTIFIER",
      "iconName": "vpn_key",
      "hidden": true
    },
    {
      "fieldName": "htmlReference",
      "displayName": "HtmlReference",
      "fieldType": "String",
      "hidden": true
    },
    {
      "fieldName": "medium",
      "displayName": "Image",
      "fieldType": "PlatformMedium",
      "association": true,
      "group": "image",
      "optional": true
    }
  ],
  "groups": [
    {
        "group": "image",
        "description": "Image"
    }
  ],
  "listFields": {
    "title": "Center(child: StyleRegistry.registry().styleWithApp(app).frontEndStyle().textStyle().text(app, context, value.documentID))"
  },
  "depends": ["eliud_core_main"]
}
