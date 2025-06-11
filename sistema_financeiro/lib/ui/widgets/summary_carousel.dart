import 'package:flutter/material.dart';

class SummaryCarousel extends StatefulWidget {
  final double totalIncome;
  final double totalExpense;

  const SummaryCarousel(
      {super.key, required this.totalIncome, required this.totalExpense});

  @override
  State<SummaryCarousel> createState() => _SummaryCarouselState();
}

class _SummaryCarouselState extends State<SummaryCarousel>
    with SingleTickerProviderStateMixin {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _scaleAnimation = Tween<double>(begin: 0.9, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AnimatedBuilder(
          animation: _scaleAnimation, 
          builder: (context, child){
            return Transform.scale(scale: _scaleAnimation.value, child: child);
            
          },
          child: SizedBox(
            height: 240,
            child: PageView.builder(
              controller: PageController(),
            ),
          )
          )
      ],
    );
  }
}
