import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primarySwatch: Colors.blue),
  home: HomePage(),
));

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class City{
  int id;
  String name;

  City(this.id, this.name);

  static List<City> getCity(){
    return [
      City(1, "Noida"),
      City(2, "Delhi"),
      City(3, "Gurgaon"),
      City(4, "Chandigarh"),
      City(5, "Lucknow"),
      City(6, "Ahmedabad"),
      City(7, "Jaipur"),
      City(8, "Mumbai"),
    ];
  }
}

class Micromarket{
  int id;
  String name;

  Micromarket(this.id, this.name);

  static List<Micromarket> getMicromarket(){
    return [
      Micromarket(1, "North Campus"),
      Micromarket(2, "South Campus"),
      Micromarket(3, "Laxmi Nagar"),
    ];
  }
}

class HomePageState extends State<HomePage>{
  List<City> cities = City.getCity();
  List<Micromarket> microMarket = Micromarket.getMicromarket();

  List<DropdownMenuItem<City>> dropDownItemsCity;
  // List<DropdownMenuItem<Micromarket>> dropDownItemsMicromarket;

  City selectedCity;
  // Micromarket selectedMicroMarket;

  @override
  void initState() {
    super.initState();
    dropDownItemsCity = buildDropDownItemCity(cities);
    selectedCity = dropDownItemsCity[0].value;
  }

  List<DropdownMenuItem<City>> buildDropDownItemCity(List<City> cities){
    List<DropdownMenuItem<City>> items = List();
    for(City city in cities){
      items.add(DropdownMenuItem(
        value: city,
        child: Text(city.name),
      ));
    }
    return items;
  }

  onChangeDropDownItems(City chosenCity){
    setState(() {
      selectedCity = chosenCity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Main Page", style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ), 
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              children: <Widget>[
                Text("City"),
                SizedBox(height: 20),
                DropdownButton(
                  value: selectedCity,
                  items: dropDownItemsCity,
                  onChanged: onChangeDropDownItems,
                ),
                Text("Selected City: " + selectedCity.name),
                SizedBox(height: 20),
                Text("Micro Market"),
                
              ],
            ),
          ),
        ]
      ),
    );
  }
}