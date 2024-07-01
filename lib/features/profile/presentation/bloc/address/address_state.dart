part of 'address_bloc.dart';

@immutable
class AddressState {
  final String? selectedRegionId;
  final String? selectedTownshipId;
  final String? selectedCityAndVillageTractsId;
  final String? selectedVillageAndWardsId;
  final AddressSelectionType currentAddressSelectionType;
  final AddressStatus status;

  const AddressState({
    this.selectedRegionId,
    this.selectedTownshipId,
    this.selectedCityAndVillageTractsId,
    this.selectedVillageAndWardsId,
    this.currentAddressSelectionType = AddressSelectionType.regionSelection,
    this.status = const AddressInitial(),
  });

  AddressState copyWith({
    String? selectedRegionId,
    String? selectedTownshipId,
    String? selectedCityAndVillageTractsId,
    String? selectedVillageAndWardsId,
    AddressSelectionType? currentAddressSelectionType,
    AddressStatus? status,
  }) {
    return AddressState(
      selectedRegionId: selectedRegionId ?? this.selectedRegionId,
      selectedTownshipId: selectedTownshipId ?? this.selectedTownshipId,
      selectedCityAndVillageTractsId: selectedCityAndVillageTractsId ?? this.selectedCityAndVillageTractsId,
      selectedVillageAndWardsId: selectedVillageAndWardsId ?? this.selectedVillageAndWardsId,
      currentAddressSelectionType: currentAddressSelectionType ?? this.currentAddressSelectionType,
      status: status ?? this.status,
    );
  }

  AddressState onSelectedRegion(String selectedRegionId) {
    return copyWith(
        selectedRegionId: selectedRegionId,
        currentAddressSelectionType: AddressSelectionType.townshipSelection,
        status: const AddressInitial());
  }

  AddressState onSelectedTownship(String selectedTownshipId) {
    return copyWith(
        selectedTownshipId: selectedTownshipId,
        currentAddressSelectionType: AddressSelectionType.cityAndVillageTracts,
        status: const AddressInitial());
  }

  AddressState onSelectedCityAndVillageTracts(
      String selectedCityAndVillageTractsId) {
    return copyWith(
        selectedCityAndVillageTractsId: selectedCityAndVillageTractsId,
        currentAddressSelectionType: AddressSelectionType.villageAndWards,
        status: const AddressInitial());
  }

  AddressState onSelectedVillageAndWards(String selectedVillageAndWards) {
    return copyWith(
        selectedVillageAndWardsId: selectedVillageAndWards,
        currentAddressSelectionType: currentAddressSelectionType,
        status: const AddressInitial());
  }

  AddressState onChangeStatus(AddressStatus status) {
    return copyWith(status: status);
  }
}

sealed class AddressStatus {
  const AddressStatus();
}

class AddressInitial extends AddressStatus {
  const AddressInitial();
}

class AddressSuccessful extends AddressStatus {
  final AddressVO addresses;

  const AddressSuccessful(this.addresses);
}

class AddressFailed extends AddressStatus {
  final String message;

  const AddressFailed(this.message);
}

class AddressProgress extends AddressStatus{
  const AddressProgress();
}
