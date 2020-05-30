# flutter_test_demos
Study flutter with desmo

![Layout-Challenge-Specs.png](https://ws1.sinaimg.cn/mw690/80ceb2dbgy1gf5jmazmcxj215m1gf76s.jpg)


``` flutter
class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                height: 200.0,
                color: Colors.amber[600],
                child: Text('Container 1'),
              ),
              SizedBox(
                width: 30,),
              Container(
                height: 100.0,
                color: Colors.blue,
                child: Text('Container 2'),
              ),
              Container(
                height: 100.0,
                color: Colors.red,
                child: Text('Container 3'),
              ),
            ],
          ),
        ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.ac_unit),
            onPressed: () {
            log('test');
           },
          )
      ),
    );
  }
}
```