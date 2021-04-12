import 'package:bloc_test/bloc_test.dart';
import 'package:counter_bloc/cubit/counter_cubit.dart';
import 'package:test/test.dart';

void main() {
  group('Counter Cubit', () {
    CounterCubit counterCubit;
    setUp(() {
      counterCubit = CounterCubit();
    });
    tearDown(() {
      counterCubit.close();
    });
    test('Test whether the initial value of counter is 0', () {
      expect(counterCubit.state, CounterState(counter: 0));
    });
    blocTest(
      'The cubit should emit a CounterState(counterValue = 1) wasIncremented = true when cubit.increment is called',
      build: () => counterCubit,
      act: (cubit) => cubit.increment(),
      expect: () => [CounterState(counter: 1, isIncremented: true)],
    );
    blocTest(
      'The cubit should emit a CounterState(counterValue = -1) wasIncremented = false when cubit.decrement is called',
      build: () => counterCubit,
      act: (cubit) => cubit.decrement(),
      expect: () => [CounterState(counter: -1, isIncremented: false)],
    );
  });
}
