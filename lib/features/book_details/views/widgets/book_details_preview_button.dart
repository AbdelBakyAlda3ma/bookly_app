import 'package:flutter/material.dart';

import '../../../../utils/styles.dart';

class BookDetailsPreviewButton extends StatefulWidget {
  const BookDetailsPreviewButton({super.key});

  @override
  State<BookDetailsPreviewButton> createState() =>
      _BookDetailsPreviewButtonState();
}

class _BookDetailsPreviewButtonState extends State<BookDetailsPreviewButton> {
  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 48,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
                color: Colors.white,
              ),
              child: const Align(
                child: Text(
                  '19.22\$',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Material(
              clipBehavior: Clip.antiAlias,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: const Color(
                0xffEF8262,
              ),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.amber,
                child: Container(
                  height: 48,
                  color: Colors.transparent,
                  child: Align(
                    child: Text(
                      'Free preview',
                      textAlign: TextAlign.center,
                      style: Styles.textStyle16.copyWith(
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
