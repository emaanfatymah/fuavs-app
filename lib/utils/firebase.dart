import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drone_app/firebase_options.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:logger/logger.dart';

final Future<FirebaseApp> initialization = Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

Logger logger = Logger();
FirebaseFirestore firestore = FirebaseFirestore.instance;
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseStorage storage = FirebaseStorage.instance;
// const storagePrefs = FlutterSecureStorage();
FirebaseAnalytics analytics = FirebaseAnalytics.instance;