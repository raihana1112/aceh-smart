//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

<<<<<<< Updated upstream
import cloud_firestore
import firebase_auth
import firebase_core
=======
import geolocator_apple
>>>>>>> Stashed changes
import path_provider_foundation
import url_launcher_macos

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
<<<<<<< Updated upstream
  FLTFirebaseFirestorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseFirestorePlugin"))
  FLTFirebaseAuthPlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseAuthPlugin"))
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))
=======
  GeolocatorPlugin.register(with: registry.registrar(forPlugin: "GeolocatorPlugin"))
>>>>>>> Stashed changes
  PathProviderPlugin.register(with: registry.registrar(forPlugin: "PathProviderPlugin"))
  UrlLauncherPlugin.register(with: registry.registrar(forPlugin: "UrlLauncherPlugin"))
}
