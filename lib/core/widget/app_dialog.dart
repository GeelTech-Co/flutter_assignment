import 'package:flutter/material.dart';

class AppDialogs {
  static Future<void> showLoadingDialog({
    required BuildContext context,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.75,
          height: 300,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text('Loading ...'),
            ],
          ),
        ),
      ),
    );
  }

  static Future<void> showErrorDialog({
    required BuildContext context,
    required String errorMassage,
    required Function() onTapRetry,
  }) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.white,
        content: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.75,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(errorMassage),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: onTapRetry,
                    child: const Text('Retry'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
