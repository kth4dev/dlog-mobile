part of 'address_bloc.dart';

//intial => switc(type) case regionSelection -> fetchRegion , case twonshipSelection -> fetchTwons
@immutable
sealed class AddressEvent {}


class AddressFetchRegions extends AddressEvent {}
class AddressFetchTownships extends AddressEvent{}
class AddressFetchCityAndVillageTracts extends AddressEvent{}
class AddressFetchVillageAndWards extends AddressEvent{}

class AddressSelectedRegions extends AddressEvent{
  final String search;

  AddressSelectedRegions(this.search);
}

class AddressSelectedTownships extends AddressEvent{
  final String search;
  final String selectedRegionId;

  AddressSelectedTownships(this.search,this.selectedRegionId);
}

class AddressSelectedCityAndVillageTracts extends AddressEvent{
  final String search;
  final String selectedTownshipId;

  AddressSelectedCityAndVillageTracts(this.search,this.selectedTownshipId,);
}

class AddressSelectedVillageAndWards extends AddressEvent{
  final String search;
  final String selectedCityAndVillageTractsId;

  AddressSelectedVillageAndWards(this.search,this.selectedCityAndVillageTractsId);
}

