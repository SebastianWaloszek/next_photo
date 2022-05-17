import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:next_photo/src/di/injector.dart';

/// A provider for a [B] type bloc or cubit that is injected.
class InjectedBlocProvider<B extends BlocBase<Object>> extends BlocProvider<B> {
  /// Creates an injected bloc provider.
  InjectedBlocProvider({
    Key? key,
    bool lazy = false,
    void Function(B)? onCreate,
    Widget? child,
  }) : super(
          key: key,
          create: (context) {
            final bloc = getIt<B>();
            onCreate?.call(bloc);
            return bloc;
          },
          lazy: lazy,
          child: child,
        );

  /// Creates an injected bloc provider for passed through instances.
  InjectedBlocProvider.value({
    Key? key,
    Widget? child,
  }) : super.value(
          key: key,
          value: getIt<B>(),
          child: child,
        );
}
