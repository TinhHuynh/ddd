import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/utils/getit_utils.dart';
import '../../application/cubit/{{name.snakeCase()}}_cubit.dart';
import '../widgets/{{name.snakeCase()}}_body.dart';

class Ct{{name.pascalCase()}}Page extends StatelessWidget {
  const Ct{{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> getIt<Ct{{name.pascalCase()}}Cubit>(),
      child: Scaffold(
        appBar: AppBar(),
        body: const Ct{{name.pascalCase()}}Body(),
      ),
    );
  }
}
