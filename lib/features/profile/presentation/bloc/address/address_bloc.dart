import 'package:dlog/core/resource/datastate/data_state.dart';
import 'package:dlog/data/models/dto/address/address_dto.dart';
import 'package:dlog/features/profile/data/enum/address/address_selection_type.dart';
import 'package:dlog/features/profile/data/model/address/city_and_village_tracts.dart';
import 'package:dlog/features/profile/data/model/address/township.dart';
import 'package:dlog/features/profile/domain/usecase/city_and_village_tracts.dart';
import 'package:dlog/features/profile/domain/usecase/region.dart';
import 'package:dlog/features/profile/domain/usecase/township.dart';
import 'package:dlog/features/profile/domain/usecase/village_and_wards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'address_event.dart';
part 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  RegionUseCase region;
  TownshipUseCase township;
  CityAndVillageTractsUseCase cityAndVillageTracts;
  VillageAndWardsUseCase villageAndWards;
  AddressBloc(
    this.region,
    this.township,
    this.cityAndVillageTracts,
    this.villageAndWards,
  ) : super(const AddressState()) {
    on<AddressSelectedRegions>(_onSelectedRegion);
    on<AddressSelectedTownships>(_onSelectedTownship);
    on<AddressSelectedCityAndVillageTracts>(_onSelectedCityAndVillageTracts);
    on<AddressSelectedVillageAndWards>(_onSelectedVillageAndWards);
  }

  ///region
  Future<void> _onSelectedRegion(
    AddressSelectedRegions event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.onChangeStatus(const AddressProgress()));
    final response = await region.call(
      params: event.search,
    );
    switch (response) {
      case DataSuccess():
        try {
          emit(state.onChangeStatus(AddressSuccessful(AddressVO(
            regions:
          ))));
        } catch (e) {
          emit(state.onChangeStatus(const AddressFailed("Failed to load region")));
        }
        break;
      case DataFailed():
        emit(state.onChangeStatus(AddressFailed(response.message)));
    }
  }

  ///township
  Future<void> _onSelectedTownship(
    AddressSelectedTownships event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.onChangeStatus(const AddressProgress()));
    final response = await township.call(
      params: GetTownshipParams(
        search: event.search,
        regionId: event.selectedRegionId,
      ),
    );
    switch (response) {
      case DataSuccess():
        try {
          emit(state.onChangeStatus(const AddressSuccessful()));
        } catch (e) {
          emit(state.onChangeStatus(const AddressFailed("Failed to load township")));
        }
        break;
      case DataFailed():
        emit(state.onChangeStatus(AddressFailed(response.message)));
    }
  }

 /// city and village tracts
  Future<void> _onSelectedCityAndVillageTracts(
    AddressSelectedCityAndVillageTracts event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.onChangeStatus(const AddressProgress()));
    final response = await cityAndVillageTracts.call(
      params: GetCityAndVillageTractsParams(
        search: event.search,
        townshipId: event.selectedTownshipId,
      ),
    );
    switch (response) {
      case DataSuccess():
        try {
          emit(state.onChangeStatus(const AddressSuccessful()));
        } catch (e) {
          emit(state.onChangeStatus(const AddressFailed("Failed to load city and village tracts")));
        }
        break;
      case DataFailed():
        emit(state.onChangeStatus(AddressFailed(response.message)));
    }
  }

  ///village and wards
  Future<void> _onSelectedVillageAndWards(
    AddressSelectedVillageAndWards event,
    Emitter<AddressState> emit,
  ) async {
    emit(state.onChangeStatus(const AddressProgress()));
  }
}
