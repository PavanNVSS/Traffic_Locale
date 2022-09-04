class Task {
  final String taskName;
  final String description;
  final DateTime taskTime;
  final bool isDone;

  Task(
    this.taskName,
    this.description,
    this.taskTime,
    this.isDone,
  );
}

List<Task> listTask = [
  Task(
    'Buy Vegetables',
    'Carrot,Cabbage,Potato',
    DateTime(2022, 9, 26, 7, 30),
    false,
  ),
  Task(
    'Meeting Client',
    'Hex Shop',
    DateTime(2022, 9, 26, 10, 00),
    false,
  ),
  Task(
    'Buying snacks',
    '4 snacks , 1 drink',
    DateTime(2022, 9, 26, 12, 30),
    false,
  ),
  Task(
    'Meet friends',
    'Suprabat Restruant',
    DateTime(2022, 9, 26, 15, 30),
    false,
  ),
  Task(
    'buying accessories',
    'pins,cables etc',
    DateTime(2022, 9, 26, 17),
    true,
  ),
  Task(
    'Buying Tickets',
    '',
    DateTime(2022, 9, 26, 17),
    true,
  ),
  
];
