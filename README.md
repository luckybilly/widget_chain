# widget_chain

Get rid of the nested hell with shiny extensions, now! 

Chain programming, not widget nesting constructors.

```dart
Container buildItem(String name) {
  return Icon(Icons.phone)
    .addNeighbor(Text(name))
    .intoRow(crossAxisAlignment: CrossAxisAlignment.center,)
    .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),);
}
```

## Story

If you've ever written anything like this:

```dart
/// do you love nested hell?
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'),),
      body: Container(
        child: Offstage(
          offstage: false,
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text("amy"),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone),
                    Text("billy"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

to resolve nested hell, maybe you will extract an build method, then it looks like:

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'),),
      body: Container(
        child: Offstage(
          offstage: false,
          child: ListView(
            children: <Widget>[
              buildItem("amy"),
              buildItem("billy"),
            ],
          ),
        ),
      ),
    );
  }

  Container buildItem(String name) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.phone),
          Text(name),
        ],
      ),
    );
  }
}
```

use widget_chain can replace constructors by a `intoXxx()` function calling.

codes will looks like:

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'),),
      body: Container(
        child: Offstage(
          offstage: false,
          child: ListView(
            children: <Widget>[
              buildItem("amy"),
              buildItem("billy"),
            ],
          ),
        ),
      ),
    );
  }

  Container buildItem(String name) {
    return Icon(Icons.phone)
        .addNeighbor(Text(name))  //the widget(Icon) add a neighbor (Text) and returns a List<Widget>
        .intoRow(crossAxisAlignment: CrossAxisAlignment.center,) // make the List<Widget> as the children of Row, and then returns the Row widget
        .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),) // make the Row as the child of Container, and then returns the Container widget
        ;  
  }
}
```
<details>
<summary>Click to show more...</summary>

or like this:

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'),),
      body: Container(
        child: Offstage(
          offstage: false,
          child: ListView(
            children: WidgetChain
              .addNeighbor(buildItem("amy"),)
              .addNeighbor(buildItem("billy"),),
          ),
        ),
      ),
    );
  }

  Container buildItem(String name) {
    return Icon(Icons.phone)
        .addNeighbor(Text(name))
        .intoRow(crossAxisAlignment: CrossAxisAlignment.center,)
        .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),);
  }
}
```

or like this:

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'),),
      body: Container(
        child: Offstage(
          offstage: false,
          child: WidgetChain
            .addNeighbor(buildItem("amy"),)
            .addNeighbor(buildItem("billy"),)
            .intoListView(),
        ),
      ),
    );
  }

  Container buildItem(String name) {
    return Icon(Icons.phone)
        .addNeighbor(Text(name))
        .intoRow(crossAxisAlignment: CrossAxisAlignment.center,)
        .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),);
  }
}
```

or like this:

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo'),),
      body: Container(
        child: WidgetChain
           .addNeighbor(buildItem("amy"),)
           .addNeighbor(buildItem("billy"),)
           .intoListView()
           .intoOffstage(offstage: false,),
      ),
    );
  }

  Container buildItem(String name) {
    return Icon(Icons.phone)
        .addNeighbor(Text(name))
        .intoRow(crossAxisAlignment: CrossAxisAlignment.center,)
        .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),);
  }
}
```

</details>

or like this:

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Demo'),),
        body: WidgetChain
              .addNeighbor(buildItem("amy"),)
              .addNeighbor(buildItem("billy"),)
              .intoListView()
              .intoOffstage(offstage: false)
              .intoContainer()
    );
  }

  Container buildItem(String name) {
    return Icon(Icons.phone)
        .addNeighbor(Text(name))
        .intoRow(crossAxisAlignment: CrossAxisAlignment.center,)
        .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),);
  }
}
```

use `buildAllAsWidget` extension of `List<T>`, it looks like this:

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = ["amy", "billy"]
            .buildAllAsWidget((name) =>
              Icon(Icons.phone)
              .addNeighbor(Text(name))
              .intoRow(crossAxisAlignment: CrossAxisAlignment.center,)
              .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),)
            );
    return Scaffold(
        appBar: AppBar(title: Text('Demo'),),
        body: list.intoListView()
            .intoOffstage(offstage: false)
            .intoContainer()
    );
  }
}
```

```dart
class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Demo'),),
        body: ["amy", "billy"]
            .buildAllAsWidget((name) =>
              Icon(Icons.phone)
              .addNeighbor(Text(name))
              .intoRow(crossAxisAlignment: CrossAxisAlignment.center,)
              .intoContainer(color: Colors.white, padding: EdgeInsets.all(20),)
            )
            .intoListView()
            .intoOffstage(offstage: false)
            .intoContainer()
    );
  }
}
```


## Getting Started

```yaml
dependencies:
  widget_chain: ^0.1.0
```

## Usage

```dart
import 'package:widget_chain/widget_chain.dart';
```
for `Widget`:

```dart
return widgetA.intoBbb(parmas);
```
equivalent as:

```dart
return Bbb(
  params,
  child: widgetA,
);
```

for `List<Widget>`:

```dart
return widgetListC.intoDdd(parmas);
```
equivalent as:

```dart
return Ddd(
  params,
  children: widgetListC,
);
```


