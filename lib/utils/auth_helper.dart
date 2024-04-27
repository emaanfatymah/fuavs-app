// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:drone_app/utils/firebase.dart';
import 'package:drone_app/utils/toasts_dialogs.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AuthHelperFirebase {
  String? userUid;

  Stream<DocumentSnapshot<Map<String, dynamic>>> readItems(
      {required String collectionName}) {
    DocumentReference<Map<String, dynamic>> notesItemCollection =
        firestore.collection(collectionName).doc(userUid);

    return notesItemCollection.snapshots();
  }

  Future<void> updateItem(
      {required String title,
      required String description,
      required String docId,
      required String collectionName}) async {
    DocumentReference documentReferencer =
        firestore.collection(collectionName).doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "description": description,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => debugPrint("Note item updated in the database"))
        .catchError((e) => debugPrint(e));
  }

  Future<void> deleteItem(
      {required String docId, required String collectionName}) async {
    DocumentReference documentReferencer =
        firestore.collection(collectionName).doc(docId);
    await documentReferencer
        .delete()
        .whenComplete(() => debugPrint('Item deleted from the database'))
        .catchError((e) => debugPrint(e));
  }

  static String? getCurrentUserUid() {
    // FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      debugPrint(auth.currentUser?.uid);
      return auth.currentUser?.uid;
    }
    return null;
  }

  static Future<void> signOutAndCacheClear() async {
    logger.d(auth.currentUser);
    try {
      if (auth.currentUser != null) {
        await auth.signOut();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        showSnackBar(msg: 'Email is already in Use');
      } else if (e.code == 'weak-password') {
        showSnackBar(msg: 'Password is weak');
      }
    } catch (e) {
      logger.i('catch sign up : $e');
      showSnackBar(msg: 'Something went wrong');
    }
  }

  static User? getCurrentFireBaseUser() {
    try {
      if (auth.currentUser != null) {
        return auth.currentUser;
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  void deleteFirebaseUser(String email, String password, String collectionName,
      String docId) async {
    try {
      UserCredential? userCredentials = await logInUser(email, password);
      if (userCredentials?.user != null) {
        await deleteItem(docId: docId, collectionName: collectionName);
        await userCredentials?.user?.delete();
        Fluttertoast.showToast(
            msg: 'Deleted Record Sucessfully', backgroundColor: Colors.blue);
      } else {
        Fluttertoast.showToast(
            msg: 'No Record deleted', backgroundColor: Colors.blue);
      }
      // await FirebaseAuth.instance.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        debugPrint(
            'The user must reauthenticate before this operation can be executed.');
      }
    }
  }

  static Future<UserCredential?> logInUser(
      String email, String password) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        debugPrint('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        debugPrint('Wrong password provided for that user.');
      }
      rethrow;
    }
  }

  static Future<UserCredential?> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        debugPrint('Email is already in Use');
      } else if (e.code == 'weak-password') {
        debugPrint('Password is weak');
      }

      rethrow;
    }
  }

  dynamic authenticaTeUser(String email, String password) async {
// Create a credential
    AuthCredential credential =
        EmailAuthProvider.credential(email: email, password: password);

// Reauthenticate
    await FirebaseAuth.instance.currentUser!
        .reauthenticateWithCredential(credential);
  }
}
