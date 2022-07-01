import 'package:blink_to_live/modules/signin/signin_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../../shared/components/components.dart';
import '../../verification/verify_screen.dart';
import 'Register_states.dart';
class SignUpCubit extends Cubit<SignUpCubitStates> {
  SignUpCubit() : super((SignUpInitialCubitState()));
  static SignUpCubit get(context) => BlocProvider.of(context);
 GoogleSignIn _googleSignIn=GoogleSignIn(scopes: ['email']);
 GoogleSignInAccount ?_currentUser;
  void signUpWithMobile(String fullNumber,context)async
  {
    emit(SignUpLoadingCubitState());
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: fullNumber,
      verificationCompleted:
          (PhoneAuthCredential credential) {},
      verificationFailed: (FirebaseAuthException e) {},
      codeSent: (String verificationId, int? resendToken) {
        emit(SignUpSuccessfulCubitState());
        navigateTo(
            context,
            VerifyScreen(
              verificationId: verificationId,
              resendToken: resendToken!,
              phoneNumber: fullNumber,
            ));
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    ).catchError((error){
      emit(SignUpErrorCubitState());

    });
  }
  void signUpWithFaceBook()
  {
    emit(SignUpLoadingFacebookCubitState());

  FacebookAuth.instance.login(permissions: [
      'public_profile',
      'email'
    ]).then((value) {
    emit(SignUpSuccessfulFacebookCubitState());
  })
      .catchError((error){
    emit(SignUpErrorFacebookCubitState());

  });
  }
   void saveGoogleCurrentUer()
   {
     _googleSignIn.onCurrentUserChanged.listen((account) {
       emit(SignUpGoogleChangeCurrentUserCubitState());
       _currentUser=account;
     });
     _googleSignIn.signInSilently();
   }

   void signUpWithGoogle(context)
   {
     emit(SignUpGoogleLoadingCubitState());
     _googleSignIn.signIn()
         .then((value) {
       ScaffoldMessenger.of(context).showSnackBar(snackBarShow('You have successfully logged in${value?.email}'));
       emit(SignUpGoogleSuccessfulCubitState());
     })
         .catchError((error){
       emit(SignUpGoogleErrorCubitState());

     });
   }
}
