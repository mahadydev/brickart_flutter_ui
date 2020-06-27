import '../widgets/low_res_overlaypopup.dart';
import '../widgets/popup_dialog.dart';
import 'package:flutter/material.dart';

class AllPhotosView extends StatelessWidget {
  const AllPhotosView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffE5E5E5),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            index % 2 == 0
                ? showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: MaterialLocalizations.of(context)
                        .modalBarrierDismissLabel,
                    barrierColor: Colors.black45,
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (BuildContext buildContext,
                        Animation animation, Animation secondaryAnimation) {
                      return LowResolutionPopup();
                    },
                  )
                : showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel: MaterialLocalizations.of(context)
                        .modalBarrierDismissLabel,
                    barrierColor: Colors.black45,
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (BuildContext buildContext,
                        Animation animation, Animation secondaryAnimation) {
                      return PopupDialog();
                    },
                  );
          },
          child: Container(
            child: Image.asset(
              'assets/gridimage/image${index + 1}.png',
            ),
          ),
        ),
        itemCount: 22,
      ),
    );
  }
}
