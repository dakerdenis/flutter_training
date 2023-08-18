import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expense_tracker/models/expense.dart';

final formatter = DateFormat.yMd();

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
  DateTime? _selectedDate;
  Category _selectedCategory = Category.leisure;

  @override
  void dispose() {
    _titleController.dispose();
    _priceCOntroller.dispose();
    super.dispose();
  }

  void _presentDatePicker() async {
    //!added async awai coudn't be used inside widget build, as it future value
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    //! AWAIT tells flutter that it'll be available in future
    final pickedDate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    //! This line will work only after  AWAIT
    setState(() {
      _selectedDate = pickedDate;
    });
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
          Row(children: [
            Expanded(
              child: TextField(
                controller: _priceCOntroller,
                maxLength: 10,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  prefixText: '\$',
                  label: Text('Price'),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(_selectedDate == null
                      ? 'No date selected'
                      : formatter.format(_selectedDate!)),
//! Exclamation mark tells Flutter that value that could be null, will never be a null
                  IconButton(
                    onPressed: _presentDatePicker,
                    icon: const Icon(
                      Icons.calendar_month,
                    ),
                  )
                ],
              ),
            )
          ]),
          Row(
            children: [
              DropdownButton(
                  value: _selectedCategory,
                  items: Category.values
                      .map(
                        (category) => DropdownMenuItem(
                          value: category,
                          child: Text(category.name.toUpperCase()),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value == null) {
                      return;
                    }
                    setState(() {
                      _selectedCategory = value;
                    });
                  }),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  //removes overlay from the screen
                },
                child: const Text('reset'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // ignore: avoid_print
                  print(_titleController.text);
                  // ignore: avoid_print
                  print(_priceCOntroller.text);
                },
                child: const Text('Save Expense'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
