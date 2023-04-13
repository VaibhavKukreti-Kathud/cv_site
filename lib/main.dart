import 'screens/contact_me_screen.dart';
import 'screens/reach_me_out_screen.dart';
import 'ui_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().apply(
          displayColor: Colors.white,
          bodyColor: Colors.white,
        ),
        iconTheme: IconThemeData(color: Colors.white),
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(),
    ).animate().fadeIn();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool ishovering = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBGColor,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: ScrollTransformView(
                  children: [
                    ScrollTransformItem(builder: (scrollOffset) {
                      double opacity = scrollOffset * 0.02;
                      return Container(
                        child: AnimatedOpacity(
                          opacity: 1 - (opacity > 1 ? 1 : opacity),
                          duration: Duration(milliseconds: 100),
                          child: Transform.translate(
                            offset: Offset(-scrollOffset * 4, scrollOffset),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 100),
                                    const Text(
                                      'Hi there!',
                                      style: TextStyle(fontSize: 32),
                                    ),
                                    SizedBox(height: 50),
                                    AnimatedOpacity(
                                      opacity: 1,
                                      duration:
                                          const Duration(milliseconds: 500),
                                      child: DefaultTextStyle(
                                        style: TextStyle(
                                            fontSize: 60,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                        child: Row(
                                          children: [
                                            Text('I am '),
                                            Text(
                                              'Vaibhav',
                                              style: TextStyle(
                                                  fontSize: 70,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red),
                                            ).animate().fade().blurXY(
                                                begin: 100,
                                                end: 0,
                                                delay:
                                                    Duration(milliseconds: 200),
                                                curve: Curves.easeOutCubic,
                                                duration: Duration(
                                                    milliseconds: 1300)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 13),
                                    const Text(
                                      'An application developer and UI/UX Designer.',
                                      style: TextStyle(
                                          fontSize: 35, color: Colors.white70),
                                    ),
                                    const Text(
                                      'Fluent in Dart, Flutter and Figma.',
                                      style: TextStyle(
                                          fontSize: 35, color: Colors.white70),
                                    ),
                                    const SizedBox(height: 50),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            const Text(
                                              'Swipe down',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      179, 255, 0, 0)),
                                            ),
                                            const SizedBox(width: 4),
                                            Icon(
                                              LineAwesomeIcons.angle_down,
                                              size: 15,
                                              color: Colors.red,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                    ScrollTransformItem(builder: (scrollOffset) {
                      return SizedBox(
                        height: MediaQuery.of(context).size.height * 2.5,
                        child: AnimatedContainer(
                          color: Colors.black,
                          duration: Duration(milliseconds: 300),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                transform: Matrix4.identity()
                                  ..scale(3)
                                  ..translate(-45, scrollOffset * 0.08),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 32.0),
                                  child: Text(
                                    'My Work',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 65),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      //   MyWorkIllustration(
                                      //     asset: 'assets/insta.png',
                                      //     toPage: Container(),
                                      //     themeColor: Colors.pinkAccent,
                                      //     showShadow: scrollOffset >
                                      //         MediaQuery.of(context).size.height *
                                      //             0.6,
                                      //   ),
                                      //   MyWorkIllustration(
                                      //     asset: 'assets/whatsapp.png',
                                      //     toPage: Container(),
                                      //     themeColor: Colors.greenAccent,
                                      //     showShadow: scrollOffset >
                                      //         MediaQuery.of(context).size.height *
                                      //             0.6,
                                      //   ),
                                      // MyWorkIllustration(
                                      //   asset: 'assets/insta.png',
                                      //   toPage: Container(),
                                      //   themeColor: Colors.pinkAccent,
                                      //   showShadow: scrollOffset >
                                      //       MediaQuery.of(context).size.height *
                                      //           0.6,
                                      // ),
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.easeOut,
                                        height: ((0) + scrollOffset * 0.62)
                                            .clamp(
                                                0,
                                                MediaQuery.of(context)
                                                    .size
                                                    .height),
                                        child: InkWell(
                                          onTap: () {
                                            print('clicked');
                                          },
                                          onHover: (value) {
                                            setState(() {
                                              ishovering = value;
                                            });
                                          },
                                          child: Stack(
                                            children: [
                                              LocationListItem(
                                                imageUrl: 'assets/whatsapp.png',
                                                borderRadius:
                                                    (scrollOffset * 0.019)
                                                        .clamp(0, 40),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      AnimatedContainer(
                                        duration: Duration(milliseconds: 200),
                                        curve: Curves.easeOut,
                                        height: ((-MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    2) +
                                                scrollOffset * 0.62 -
                                                50)
                                            .clamp(
                                                0,
                                                MediaQuery.of(context)
                                                    .size
                                                    .height),
                                        child: LocationListItem(
                                          imageUrl: 'assets/insta.png',
                                          borderRadius: (scrollOffset * 0.012)
                                              .clamp(0, 40),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    ScrollTransformItem(builder: (scrollOffset) {
                      return ContactMeWidget();
                    }),
                    ScrollTransformItem(builder: (scrollOffset) {
                      return ReachMeOutWidget();
                    }),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LocationListItem extends StatefulWidget {
  LocationListItem({
    super.key,
    required this.imageUrl,
    required this.borderRadius,
  });

  final String imageUrl;
  final double borderRadius;

  @override
  State<LocationListItem> createState() => _LocationListItemState();
}

class _LocationListItemState extends State<LocationListItem> {
  final GlobalKey _backgroundImageKey = GlobalKey();

  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (bool value) {
        setState(() {
          isHovering = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
        child: AspectRatio(
          aspectRatio: 18 / 9,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: Stack(
              children: [
                _buildParallaxBackground(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Flow(
      delegate: ParallaxFlowDelegate(
        scrollable: Scrollable.of(context),
        listItemContext: context,
        backgroundImageKey: _backgroundImageKey,
      ),
      children: [
        Image.asset(
          widget.imageUrl,
          key: _backgroundImageKey,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
        listItemBox.size.centerLeft(Offset.zero),
        ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
        (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
      0,
      transform:
          Transform.translate(offset: Offset(0.0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

class Parallax extends SingleChildRenderObjectWidget {
  const Parallax({
    super.key,
    required Widget background,
  }) : super(child: background);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderParallax(scrollable: Scrollable.of(context));
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderParallax renderObject) {
    renderObject.scrollable = Scrollable.of(context);
  }
}

class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

class RenderParallax extends RenderBox
    with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  RenderParallax({
    required ScrollableState scrollable,
  }) : _scrollable = scrollable;

  ScrollableState _scrollable;

  ScrollableState get scrollable => _scrollable;

  set scrollable(ScrollableState value) {
    if (value != _scrollable) {
      if (attached) {
        _scrollable.position.removeListener(markNeedsLayout);
      }
      _scrollable = value;
      if (attached) {
        _scrollable.position.addListener(markNeedsLayout);
      }
    }
  }

  @override
  void attach(covariant PipelineOwner owner) {
    super.attach(owner);
    _scrollable.position.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    _scrollable.position.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ParallaxParentData) {
      child.parentData = ParallaxParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.biggest;

    // Force the background to take up all available width
    // and then scale its height based on the image's aspect ratio.
    final background = child!;
    final backgroundImageConstraints =
        BoxConstraints.tightFor(width: size.width);
    background.layout(backgroundImageConstraints, parentUsesSize: true);

    // Set the background's local offset, which is zero.
    (background.parentData as ParallaxParentData).offset = Offset.zero;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // Get the size of the scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;

    // Calculate the global position of this list item.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final backgroundOffset =
        localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);

    // Determine the percent position of this list item within the
    // scrollable area.
    final scrollFraction =
        (backgroundOffset.dy / viewportDimension).clamp(0, 1);

    // Calculate the vertical alignment of the background
    // based on the scroll percent.
    final verticalAlignment = Alignment(0.0, scrollFraction * 2 - 1);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final background = child!;
    final backgroundSize = background.size;
    final listItemSize = size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    // Paint the background.
    context.paintChild(
        background,
        (background.parentData as ParallaxParentData).offset +
            offset +
            Offset(0.0, childRect.top));
  }
}
