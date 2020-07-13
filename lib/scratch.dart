import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Res = await task2();
  task3(task2Res);
}

void task1() {
  String result = 'tsk1 data';
  print('Tsk1 completed');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);
  // sleep(threeSeconds);

  String result;
  await Future.delayed(threeSeconds, () {
    result = 'tsk2 data';
    print('Tsk2 completed');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'tsk3 data';
  print('Tsk3 completed with $task2Data');
}
