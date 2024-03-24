import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom_shapes/containers/circular___container.dart';
import 'package:shop/common/widgets/custom_shapes/curved__edges/curved_edges_widget.dart';
import 'package:shop/utilis/constants/colors.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),

        // --If [size.isFinite': is not true.in Stack] error occured -> Read README.md file at [Documentation] section
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              // -- Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: TCircularContainer(
                  margin: const EdgeInsets.all(0),
                  backgroundcolor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCircularContainer(
                  margin: const EdgeInsets.all(0) ,
                  backgroundcolor: TColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
