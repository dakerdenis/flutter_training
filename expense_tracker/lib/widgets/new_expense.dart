import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  // var _enteredTitle = '';
//
  // void _saveTitleInput(String inputValue) {
  //   _enteredTitle = inputValue;
  // }

//dispose like initstate and build is part of a statefulwidget's lifecycle
// It's called auto by flutter when the widget it's state are about to be destroyed
//removed from the UI

  //only "state" classes can implement this dispose method (StatelessWidget can't)
  // That's why you should use a StatefulWidget here
  //should dispose all textediting controller
  final _titleController = TextEditingController();
  final _priceCOntroller = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _priceCOntroller.dispose();
    super.dispose();
  }

  void resetData(){

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          TextField(
            controller: _priceCOntroller,
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Price'),
            ),
          ),
          Row(
            children: [
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print(_titleController.text);
                  // ignore: avoid_print
                  print(_priceCOntroller.text);
                },
                child: const Text('Save Expense'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  _titleController.clear();
                  _priceCOntroller.clear();
                },
                child: const Text('reset'),
              )
            ],
          )
        ],
      ),
    );
  }
}
