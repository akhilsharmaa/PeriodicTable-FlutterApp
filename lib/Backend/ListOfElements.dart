import 'package:periodic_table/Backend/ElementDetailConstructor.dart';

class ListOfElements{

  void main(){
    getElementSymbol(2);
  }

String  getElementSymbol(int elementNumber) {
    return elementList[elementNumber].elementNameSymbol;
}

String  getElementFullName(int elementNumber) {
    return elementList[elementNumber].elementFullName;
}

int  getElementNumber(int elementNumber) {
    return elementList[elementNumber].elementNumber;
}


  List elementList = [

    ElementDetailConstructor(0, "X", "Nothing"),
    ElementDetailConstructor(1, "H", "Hydrogen"),
    ElementDetailConstructor(2, "He", "Helium"),
    ElementDetailConstructor(3, "Li", "Lithium"),
    ElementDetailConstructor(4, "Be", "Beryllium"),
    ElementDetailConstructor(5, "B", "Boron"),
    ElementDetailConstructor(6, "C", "Carbon"),
    ElementDetailConstructor(7, "N", "Nitrogen"),
    ElementDetailConstructor(8, "O", "Oxygen"),
    ElementDetailConstructor(9, "F", "Fluorine"),
    ElementDetailConstructor(10, "Ne", "Neon"),
    ElementDetailConstructor(11, "Na", "Sodium"),
    ElementDetailConstructor(12, "Mg", "Magnesium"),
    ElementDetailConstructor(13, "Al", "Aluminum"),
    ElementDetailConstructor(14, "Si", "Silicon"),
    ElementDetailConstructor(15, "P", "Phosphorus"),
    ElementDetailConstructor(16, "S", "Sulfur"),
    ElementDetailConstructor(17, "Cl", "Chlorine"),
    ElementDetailConstructor(18, "Ar", "Argon"),
    ElementDetailConstructor(19, "K", "Potassium"),
    ElementDetailConstructor(20, "Ca", "Calcium"),


    ElementDetailConstructor(21, "Sc", "Scandium"),
    ElementDetailConstructor(22, "Ti", "Titanium"),
    ElementDetailConstructor(23, "V", "Vanadium"),
    ElementDetailConstructor(24, "Cr", "Chromium"),
    ElementDetailConstructor(25, "Mn", "Manganese"),
    ElementDetailConstructor(26, "Fe", "Iron"),
    ElementDetailConstructor(27, "Co", "Cobalt "),
    ElementDetailConstructor(28, "Ni", "Nickel"),
    ElementDetailConstructor(29, "Cu", "Copper"),
    ElementDetailConstructor(30, "Zn", "Zinc"),
    ElementDetailConstructor(31, "Ga", "Gallium"),
    ElementDetailConstructor(32, "Ge", "Germanium"),
    ElementDetailConstructor(33, "As", "Arsenic"),
    ElementDetailConstructor(34, "Se", "Selenium"),
    ElementDetailConstructor(35, "Br", "Bromine"),
    ElementDetailConstructor(36, "Kr", "Krypton"),
    ElementDetailConstructor(37, "Rb", "Rubidium"),
    ElementDetailConstructor(38, "Sr", "Strontium"),
    ElementDetailConstructor(39, "Y", "Yttrium"),
    ElementDetailConstructor(40, "Zr", "Zirconium"),


    ElementDetailConstructor(41, "Nb", "Niobium"),
    ElementDetailConstructor(42, "Mo", "Molybdenum"),
    ElementDetailConstructor(43, "Tc", "Technetium"),
    ElementDetailConstructor(44, "Ru", "Ruthenium"),
    ElementDetailConstructor(45, "Rh", "Rhodium"),
    ElementDetailConstructor(46, "Pd", "Palladium"),
    ElementDetailConstructor(47, "Ag", "Silver"),
    ElementDetailConstructor(48, "Cd", "Cadmium"),
    ElementDetailConstructor(49, "In", "Indium"),
    ElementDetailConstructor(50, "Sn", "Tin"),
    ElementDetailConstructor(51, "Sb", "Antimony"),
    ElementDetailConstructor(52, "Te", "Tellurium"),
    ElementDetailConstructor(53, "I", "Iodine"),
    ElementDetailConstructor(54, "Xe", "Xenon"),
    ElementDetailConstructor(55, "Cs" , "Cesium"),
    ElementDetailConstructor(56, "Ba" , "Barium"),
    ElementDetailConstructor(57, "Ba" , "Barium"),
    ElementDetailConstructor(58, "Ba" , "Barium"),
    ElementDetailConstructor(59, "Ba" , "Barium"),
    ElementDetailConstructor(60, "Nd", "Neodymium"),

    ElementDetailConstructor(61, "Pm", "Promethium"),
    ElementDetailConstructor(62, "Sm", "Samarium"),
    ElementDetailConstructor(63, "Eu", "Europium"),
    ElementDetailConstructor(64, "Gd", "Gadolinium"),
    ElementDetailConstructor(65, "Tb", "Terbium"),
    ElementDetailConstructor(66, "Dy", "Dysprosium"),
    ElementDetailConstructor(67, "Ho", "Holmium"),
    ElementDetailConstructor(68, "Er", "Erbium"),
    ElementDetailConstructor(69, "Tm", "Thulium"),
    ElementDetailConstructor(70, "Yb", "Ytterbium"),
    ElementDetailConstructor(71, "Lu", "Lutetium"),

    ElementDetailConstructor(72, "Hf", "Hafnium"),
    ElementDetailConstructor(73, "Ta", "Tantalum"),
    ElementDetailConstructor(74, "W", "Tungsten"),
    ElementDetailConstructor(75, "Re", "Rhenium"),
    ElementDetailConstructor(76, "Os", "Osmium"),
    ElementDetailConstructor(77, "Ir", "Iridium"),
    ElementDetailConstructor(78, "Pt", "Platinum"),
    ElementDetailConstructor(79, "Au", "Gold"),
    ElementDetailConstructor(80, "Hg", "Mercury"),
    ElementDetailConstructor(81, "Tl", "Thallium"),
    ElementDetailConstructor(82, "Pb", "Lead"),
    ElementDetailConstructor(83, "Bi", "Bismuth"),
    ElementDetailConstructor(84, "Po", "Polonium"),
    ElementDetailConstructor(85, "At", "Astatine"),
    ElementDetailConstructor(86, "Rn", "Radon"),
    ElementDetailConstructor(87, "Fr", "Francium"),
    ElementDetailConstructor(88, "Ra", "Radium"),
    ElementDetailConstructor(89, "Ac", "Actinium"),


    ElementDetailConstructor(90, "Th", "Thorium"),
    ElementDetailConstructor(91, "Pa", "Protactinium"),
    ElementDetailConstructor(92, "U", "Uranium"),
    ElementDetailConstructor(93, "Np", "Neptunium"),
    ElementDetailConstructor(94, "Pu", "Plutonium"),
    ElementDetailConstructor(95, "Am", "Americium"),
    ElementDetailConstructor(96, "Cm", "Curium"),
    ElementDetailConstructor(97, "Bk", "Berkelium"),
    ElementDetailConstructor(98, "Cf", "Californium"),
    ElementDetailConstructor(99, "Es", "Einsteinium"),
    ElementDetailConstructor(100, "Fm", "Fermium"),
    ElementDetailConstructor(101, "Md", "Mendelevium"),
    ElementDetailConstructor(102, "No	", "Nobelium"),
    ElementDetailConstructor(103, "Lr", "Lawrencium"),

    ElementDetailConstructor(104, "Rf", "Ratherfordium"),
    ElementDetailConstructor(105, "Db", "Dubnium"),
    ElementDetailConstructor(106, "Sg", "Dubnium"),
    ElementDetailConstructor(107, "Bh", "Bohium"),
    ElementDetailConstructor(108, "Mt", "Meitnerium"),
    ElementDetailConstructor(109, "Uun", "Ununnillium"),
    ElementDetailConstructor(110, "Uun", "Unununbium"),
    ElementDetailConstructor(111, "Rf", "Ununbium"),
    ElementDetailConstructor(112, "Db", "Dubnium"),

    ElementDetailConstructor(113, "", ""),
    ElementDetailConstructor(114, "Uuq", "Ununquadium"),
    ElementDetailConstructor(115, "", ""),
    ElementDetailConstructor(116, "Uuh", "Ununhexium"),
    ElementDetailConstructor(117, "", ""),
    ElementDetailConstructor(118, "", ""),

  ];
}