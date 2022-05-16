{
  "optionsFile": "options.json",
  "options": [],
  "exportToGame": true,
  "supportedTargets": -1,
  "extensionVersion": "0.0.1",
  "packageId": "",
  "productId": "",
  "author": "",
  "date": "2022-04-28T23:04:41.2874079-04:00",
  "license": "",
  "description": "",
  "helpfile": "",
  "iosProps": false,
  "tvosProps": false,
  "androidProps": false,
  "installdir": "",
  "files": [
    {"filename":"libfiledialogs.dll","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[
        {"externalName":"get_open_filename_ext","kind":1,"help":"GetOpenFileName(lpFilter,lpFileName,lpDirName,lpTitle)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"GetOpenFileName","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"get_open_filenames_ext","kind":1,"help":"GetOpenFileNames(lpFilter,lpFileName,lpDirName,lpTitle)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"GetOpenFileNames","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"get_save_filename_ext","kind":1,"help":"GetSaveFileName(lpFilter,lpFileName,lpDirName,lpTitle)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
            1,
            1,
          ],"resourceVersion":"1.0","name":"GetSaveFileName","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"get_directory_alt","kind":1,"help":"GetDirectory(lpCapt,lpRoot)","hidden":false,"returnType":1,"argCount":0,"args":[
            1,
            1,
          ],"resourceVersion":"1.0","name":"GetDirectory","tags":[],"resourceType":"GMExtensionFunction",},
        {"externalName":"ifd_load_fonts","kind":1,"help":"IfdLoadFonts()","hidden":false,"returnType":2,"argCount":0,"args":[],"resourceVersion":"1.0","name":"IfdLoadFonts","tags":[],"resourceType":"GMExtensionFunction",},
      ],"constants":[],"ProxyFiles":[
        {"TargetMask":1,"resourceVersion":"1.0","name":"libfiledialogs.dylib","tags":[],"resourceType":"GMProxyFile",},
        {"TargetMask":7,"resourceVersion":"1.0","name":"libfiledialogs.so","tags":[],"resourceType":"GMProxyFile",},
        {"TargetMask":7,"resourceVersion":"1.0","name":"libfiledialogs_arm64.so","tags":[],"resourceType":"GMProxyFile",},
      ],"copyToTargets":194,"order":[
        {"name":"GetOpenFileName","path":"extensions/libfiledialogs/libfiledialogs.yy",},
        {"name":"GetOpenFileNames","path":"extensions/libfiledialogs/libfiledialogs.yy",},
        {"name":"GetSaveFileName","path":"extensions/libfiledialogs/libfiledialogs.yy",},
        {"name":"GetDirectory","path":"extensions/libfiledialogs/libfiledialogs.yy",},
        {"name":"IfdLoadFonts","path":"extensions/libfiledialogs/libfiledialogs.yy",},
      ],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"sdl2.dll","origname":"","init":"","final":"","kind":1,"uncompress":false,"functions":[],"constants":[],"ProxyFiles":[],"copyToTargets":64,"order":[],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
    {"filename":"libfiledialogs.zip","origname":"","init":"","final":"","kind":4,"uncompress":false,"functions":[],"constants":[],"ProxyFiles":[],"copyToTargets":0,"order":[],"resourceVersion":"1.0","name":"","tags":[],"resourceType":"GMExtensionFile",},
  ],
  "classname": "",
  "tvosclassname": null,
  "tvosdelegatename": null,
  "iosdelegatename": "",
  "androidclassname": "",
  "sourcedir": "",
  "androidsourcedir": "",
  "macsourcedir": "",
  "maccompilerflags": "",
  "tvosmaccompilerflags": "",
  "maclinkerflags": "",
  "tvosmaclinkerflags": "",
  "iosplistinject": "",
  "tvosplistinject": "",
  "androidinject": "",
  "androidmanifestinject": "",
  "androidactivityinject": "",
  "gradleinject": "",
  "androidcodeinjection": "",
  "hasConvertedCodeInjection": true,
  "ioscodeinjection": "",
  "tvoscodeinjection": "",
  "iosSystemFrameworkEntries": [],
  "tvosSystemFrameworkEntries": [],
  "iosThirdPartyFrameworkEntries": [],
  "tvosThirdPartyFrameworkEntries": [],
  "IncludedResources": [],
  "androidPermissions": [],
  "copyToTargets": 194,
  "iosCocoaPods": "",
  "tvosCocoaPods": "",
  "iosCocoaPodDependencies": "",
  "tvosCocoaPodDependencies": "",
  "parent": {
    "name": "Extensions",
    "path": "folders/Extensions.yy",
  },
  "resourceVersion": "1.2",
  "name": "libfiledialogs",
  "tags": [],
  "resourceType": "GMExtension",
}