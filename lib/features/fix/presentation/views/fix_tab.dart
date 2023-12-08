
import 'package:assignment_test/features/fix/presentation/views/widgets/fix_tab_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/fix_provider.dart';

class FixTab extends StatelessWidget {
  const FixTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FixProvider(),
      builder: (context,_)=>const FixTabBody(),
    );
  }
}
