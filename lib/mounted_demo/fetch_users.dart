import 'package:flutter/material.dart';

class FetchUsers extends StatefulWidget {
  const FetchUsers({super.key});

  @override
  State<FetchUsers> createState() => _FetchUsersState();
}

class _FetchUsersState extends State<FetchUsers> {
  bool _isLoading = false;
  List<Map<String, String>> _userList = [];

  Future<List<Map<String, String>>> fakeAPICall() async {
    await Future.delayed(const Duration(seconds: 4));
    return [
      {'name': 'Sriram'},
      {'name': 'Raj'},
      {'name': 'Jai'},
    ];
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    setState(() {
      _isLoading = true;
    });
    _userList = await fakeAPICall();

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemBuilder: (context, index) {
                Map<String, String> userData = _userList[index];
                return ListTile(
                  title: Text('${userData['name']}'),
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: _userList.length),
    );
  }
}
