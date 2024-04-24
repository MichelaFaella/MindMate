import 'package:fluttertoast/fluttertoast.dart';
import 'package:mind_mate/pages/utilities/colorsNew.dart';

toastInfo([String msg = ""]) {
  return Fluttertoast.showToast(msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 2,
      backgroundColor: colorsNew.purpleNew,
      fontSize: 16,

  );
}