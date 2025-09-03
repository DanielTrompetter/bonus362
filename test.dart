// Bonus 2
class Button
{
  String title;
  int width, height, radius, fontsize, padding;

  Button(this.title, {required this.width, required this.height, required this.radius, required this.fontsize, required this.padding});
}

// Bonus 3/4/5
class Rectangle
{
  double width, height;

  Rectangle(this.width, this.height);

  double Perimeter()
  {
    return 2*width+2*height;
  }

  double Area()
  {
    return width*height;
  }

  // Bonus 5
  void Scale(double scaleValue)
  {
    width *= scaleValue;
    height *= scaleValue;
  }

  void ShowPerimeterAndArea()
  {
    print("Ein Rechteck der Breite ${width.toStringAsFixed(2)} cm und Höhe ${height.toStringAsFixed(2)} cm hat einen Umfang von ${Perimeter().toStringAsFixed(2)} cm und eine Fläche von ${Area().toStringAsFixed(2)} cm².");
  }
}

// Bonus 6
class Author
{
  String name;
  int YearOfBirth;

  Author(this.name, this.YearOfBirth);
}

class Book
{
  String title;
  int pages;
  Author author;

  Book(this.title, this.pages, this.author);

  void PrintInfo()
  {
    print("Das Buch '$title' hat $pages Seiten und stammt von ${author.name}.");
  }
}

void main()
{
  // bonus 3
  Button b = Button(
    "In den Warenkorb", 
    width: 96,
    height: 32,
    radius: 4,
    fontsize: 14,
    padding: 8
  );

  // Bonus 4
  Rectangle rect = Rectangle(200, 100);
  rect.ShowPerimeterAndArea();

  rect.width = 80;
  rect.ShowPerimeterAndArea();

  // Bonus 5
  rect.Scale(0.5);
  rect.ShowPerimeterAndArea();
  rect.Scale(8.3);
  rect.ShowPerimeterAndArea();

  // Bonus 6
  Author author1 = Author("Jan Biernacki", 2021);
  Book book1 = Book("Kleiner Leitfaden: Wie verwirrt man alte Coder?", 1337, author1);
  book1.PrintInfo();
}