import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:daisy/core/bloc/conn/conn_cubit.dart';
import 'package:daisy/core/bloc/lang/lang_cubit.dart';
import 'package:daisy/feature/auth/cubit/auth_cubit.dart';
import 'package:daisy/feature/home/cubit/tag_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider<StateStreamableSource<Object?>>> provider() {
  return <BlocProvider>[
    BlocProvider<ConnCubit>(
      create: (context) => ConnCubit(connectivity: Connectivity())..listen(),
    ),

    /// Auth Cubit
    BlocProvider<AuthCubit>(create: (context) => AuthCubit(context.read())),

    /// Lang Cubit
    BlocProvider<LangCubit>(create: (context) => LangCubit()),

    /// Tag Cubit
    BlocProvider<TagCubit>(create: (context) => TagCubit()),

    /// User Cubit
  ];
}
