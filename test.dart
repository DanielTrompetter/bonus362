class Button
{
  String title;
  int width, height, radius, fontsize, padding;

  Button(this.title, {required this.width, required this.height, required this.radius, required this.fontsize, required this.padding});
}

void main()
{
  Button b = Button(
    "In den Warenkorb", 
    width: 96,
    height: 32,
    radius: 4,
    fontsize: 14,
    padding: 8
  );
}