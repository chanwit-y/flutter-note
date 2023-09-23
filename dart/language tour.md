
[<img src="../asset/dart.svg" width="150" />](https://dart.dev/language/variables)

## Language tour


### Variables

```dart
var name = 'Voyager I';
var year = 1977;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
  'tags': ['saturn'],
  'url': '//path/to/saturn.jpg'
};
```

Creating a variable and initializing it:
```dart 

var name = 'Bob';

// Another option is to explicitly declare the type that would be inferred:
String name = 'Bob';
```
If an object isn’t restricted to a single type, specify the Object type (or dynamic if necessary).
```dart
dynamic name = 'Bob';
// or
Object name = 'Bob';
// or
var name;
```

### Null safety

```dart
String? name  // Nullable type. Can be `null` or string.

String name   // Non-nullable type. Cannot be `null` but can be string.

var name2 = name ?? "";
var name2 = name!;
```

### Late variables
The late modifier has two use cases:
- Declaring a non-nullable variable that’s initialized after its declaration.
- Lazily initializing a variable.

```dart
late String description;

void main() {
  description = 'Feijoada!';
  print(description);
}
```

```dart
class ExampleLate {
  late String name;

  ExampleLate() {
    name = "ExampleLate";
  }
}
```

### Final and const
