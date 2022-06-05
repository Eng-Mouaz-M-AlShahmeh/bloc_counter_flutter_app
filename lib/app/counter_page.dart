/* Developed by Eng Mouaz M AlShahmeh */
import 'package:bloc_flutter_app/app/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: const Text('Bloc Counter Example'),
        centerTitle: true,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => context.read<CounterCubit>().decrement(),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColorLight,
                  ),
                  child: Icon(Icons.remove, color: Theme.of(context).primaryColor, size: 50,),
                ),
              ),
              const SizedBox(width: 10,),
              Expanded(
                child: BlocBuilder<CounterCubit, int>(
                  builder: (context, count) => Center(child: Text(
                      '$count',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 100,
                      color: Theme.of(context).cardColor,
                    ),
                  )),
                ),
              ),
              const SizedBox(width: 10,),
              InkWell(
                onTap: () => context.read<CounterCubit>().increment(),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(Icons.add, color: Theme.of(context).primaryColorLight, size: 50,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}