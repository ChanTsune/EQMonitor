// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earthquake_early.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EarthquakeEarly _$EarthquakeEarlyFromJson(Map<String, dynamic> json) {
  return _EarthquakeEarly.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeEarly {
  String get id => throw _privateConstructorUsedError;
  int? get depth => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get magnitude => throw _privateConstructorUsedError;
  JmaForecastIntensity? get maxIntensity => throw _privateConstructorUsedError;
  bool get maxIntensityIsEarly => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get originTime => throw _privateConstructorUsedError;
  OriginTimePrecision get originTimePrecision =>
      throw _privateConstructorUsedError;

  /// Serializes this EarthquakeEarly to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeEarly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeEarlyCopyWith<EarthquakeEarly> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeEarlyCopyWith<$Res> {
  factory $EarthquakeEarlyCopyWith(
          EarthquakeEarly value, $Res Function(EarthquakeEarly) then) =
      _$EarthquakeEarlyCopyWithImpl<$Res, EarthquakeEarly>;
  @useResult
  $Res call(
      {String id,
      int? depth,
      double? latitude,
      double? longitude,
      double? magnitude,
      JmaForecastIntensity? maxIntensity,
      bool maxIntensityIsEarly,
      String name,
      DateTime originTime,
      OriginTimePrecision originTimePrecision});
}

/// @nodoc
class _$EarthquakeEarlyCopyWithImpl<$Res, $Val extends EarthquakeEarly>
    implements $EarthquakeEarlyCopyWith<$Res> {
  _$EarthquakeEarlyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeEarly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? depth = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? magnitude = freezed,
    Object? maxIntensity = freezed,
    Object? maxIntensityIsEarly = null,
    Object? name = null,
    Object? originTime = null,
    Object? originTimePrecision = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as double?,
      maxIntensity: freezed == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity?,
      maxIntensityIsEarly: null == maxIntensityIsEarly
          ? _value.maxIntensityIsEarly
          : maxIntensityIsEarly // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originTime: null == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originTimePrecision: null == originTimePrecision
          ? _value.originTimePrecision
          : originTimePrecision // ignore: cast_nullable_to_non_nullable
              as OriginTimePrecision,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeEarlyImplCopyWith<$Res>
    implements $EarthquakeEarlyCopyWith<$Res> {
  factory _$$EarthquakeEarlyImplCopyWith(_$EarthquakeEarlyImpl value,
          $Res Function(_$EarthquakeEarlyImpl) then) =
      __$$EarthquakeEarlyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int? depth,
      double? latitude,
      double? longitude,
      double? magnitude,
      JmaForecastIntensity? maxIntensity,
      bool maxIntensityIsEarly,
      String name,
      DateTime originTime,
      OriginTimePrecision originTimePrecision});
}

/// @nodoc
class __$$EarthquakeEarlyImplCopyWithImpl<$Res>
    extends _$EarthquakeEarlyCopyWithImpl<$Res, _$EarthquakeEarlyImpl>
    implements _$$EarthquakeEarlyImplCopyWith<$Res> {
  __$$EarthquakeEarlyImplCopyWithImpl(
      _$EarthquakeEarlyImpl _value, $Res Function(_$EarthquakeEarlyImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeEarly
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? depth = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? magnitude = freezed,
    Object? maxIntensity = freezed,
    Object? maxIntensityIsEarly = null,
    Object? name = null,
    Object? originTime = null,
    Object? originTimePrecision = null,
  }) {
    return _then(_$EarthquakeEarlyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as int?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as double?,
      maxIntensity: freezed == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity?,
      maxIntensityIsEarly: null == maxIntensityIsEarly
          ? _value.maxIntensityIsEarly
          : maxIntensityIsEarly // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      originTime: null == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originTimePrecision: null == originTimePrecision
          ? _value.originTimePrecision
          : originTimePrecision // ignore: cast_nullable_to_non_nullable
              as OriginTimePrecision,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeEarlyImpl implements _EarthquakeEarly {
  const _$EarthquakeEarlyImpl(
      {required this.id,
      required this.depth,
      required this.latitude,
      required this.longitude,
      required this.magnitude,
      required this.maxIntensity,
      required this.maxIntensityIsEarly,
      required this.name,
      required this.originTime,
      required this.originTimePrecision});

  factory _$EarthquakeEarlyImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeEarlyImplFromJson(json);

  @override
  final String id;
  @override
  final int? depth;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? magnitude;
  @override
  final JmaForecastIntensity? maxIntensity;
  @override
  final bool maxIntensityIsEarly;
  @override
  final String name;
  @override
  final DateTime originTime;
  @override
  final OriginTimePrecision originTimePrecision;

  @override
  String toString() {
    return 'EarthquakeEarly(id: $id, depth: $depth, latitude: $latitude, longitude: $longitude, magnitude: $magnitude, maxIntensity: $maxIntensity, maxIntensityIsEarly: $maxIntensityIsEarly, name: $name, originTime: $originTime, originTimePrecision: $originTimePrecision)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeEarlyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.magnitude, magnitude) ||
                other.magnitude == magnitude) &&
            (identical(other.maxIntensity, maxIntensity) ||
                other.maxIntensity == maxIntensity) &&
            (identical(other.maxIntensityIsEarly, maxIntensityIsEarly) ||
                other.maxIntensityIsEarly == maxIntensityIsEarly) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.originTime, originTime) ||
                other.originTime == originTime) &&
            (identical(other.originTimePrecision, originTimePrecision) ||
                other.originTimePrecision == originTimePrecision));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      depth,
      latitude,
      longitude,
      magnitude,
      maxIntensity,
      maxIntensityIsEarly,
      name,
      originTime,
      originTimePrecision);

  /// Create a copy of EarthquakeEarly
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeEarlyImplCopyWith<_$EarthquakeEarlyImpl> get copyWith =>
      __$$EarthquakeEarlyImplCopyWithImpl<_$EarthquakeEarlyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeEarlyImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeEarly implements EarthquakeEarly {
  const factory _EarthquakeEarly(
          {required final String id,
          required final int? depth,
          required final double? latitude,
          required final double? longitude,
          required final double? magnitude,
          required final JmaForecastIntensity? maxIntensity,
          required final bool maxIntensityIsEarly,
          required final String name,
          required final DateTime originTime,
          required final OriginTimePrecision originTimePrecision}) =
      _$EarthquakeEarlyImpl;

  factory _EarthquakeEarly.fromJson(Map<String, dynamic> json) =
      _$EarthquakeEarlyImpl.fromJson;

  @override
  String get id;
  @override
  int? get depth;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get magnitude;
  @override
  JmaForecastIntensity? get maxIntensity;
  @override
  bool get maxIntensityIsEarly;
  @override
  String get name;
  @override
  DateTime get originTime;
  @override
  OriginTimePrecision get originTimePrecision;

  /// Create a copy of EarthquakeEarly
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeEarlyImplCopyWith<_$EarthquakeEarlyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarthquakeEarlyEvent _$EarthquakeEarlyEventFromJson(Map<String, dynamic> json) {
  return _EarthquakeEarlyEvent.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeEarlyEvent {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  double? get depth => throw _privateConstructorUsedError;
  double? get magnitude => throw _privateConstructorUsedError;
  DateTime get originTime => throw _privateConstructorUsedError;
  OriginTimePrecision get originTimePrecision =>
      throw _privateConstructorUsedError;
  JmaForecastIntensity? get maxIntensity => throw _privateConstructorUsedError;
  bool get maxIntensityIsEarly => throw _privateConstructorUsedError;
  List<EarthquakeEarlyRegion> get regions => throw _privateConstructorUsedError;
  List<EarthquakeEarlyCity> get cities => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeEarlyEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeEarlyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeEarlyEventCopyWith<EarthquakeEarlyEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeEarlyEventCopyWith<$Res> {
  factory $EarthquakeEarlyEventCopyWith(EarthquakeEarlyEvent value,
          $Res Function(EarthquakeEarlyEvent) then) =
      _$EarthquakeEarlyEventCopyWithImpl<$Res, EarthquakeEarlyEvent>;
  @useResult
  $Res call(
      {String id,
      String name,
      double? lat,
      double? lon,
      double? depth,
      double? magnitude,
      DateTime originTime,
      OriginTimePrecision originTimePrecision,
      JmaForecastIntensity? maxIntensity,
      bool maxIntensityIsEarly,
      List<EarthquakeEarlyRegion> regions,
      List<EarthquakeEarlyCity> cities});
}

/// @nodoc
class _$EarthquakeEarlyEventCopyWithImpl<$Res,
        $Val extends EarthquakeEarlyEvent>
    implements $EarthquakeEarlyEventCopyWith<$Res> {
  _$EarthquakeEarlyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeEarlyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? depth = freezed,
    Object? magnitude = freezed,
    Object? originTime = null,
    Object? originTimePrecision = null,
    Object? maxIntensity = freezed,
    Object? maxIntensityIsEarly = null,
    Object? regions = null,
    Object? cities = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as double?,
      originTime: null == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originTimePrecision: null == originTimePrecision
          ? _value.originTimePrecision
          : originTimePrecision // ignore: cast_nullable_to_non_nullable
              as OriginTimePrecision,
      maxIntensity: freezed == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity?,
      maxIntensityIsEarly: null == maxIntensityIsEarly
          ? _value.maxIntensityIsEarly
          : maxIntensityIsEarly // ignore: cast_nullable_to_non_nullable
              as bool,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeEarlyRegion>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeEarlyCity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeEarlyEventImplCopyWith<$Res>
    implements $EarthquakeEarlyEventCopyWith<$Res> {
  factory _$$EarthquakeEarlyEventImplCopyWith(_$EarthquakeEarlyEventImpl value,
          $Res Function(_$EarthquakeEarlyEventImpl) then) =
      __$$EarthquakeEarlyEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      double? lat,
      double? lon,
      double? depth,
      double? magnitude,
      DateTime originTime,
      OriginTimePrecision originTimePrecision,
      JmaForecastIntensity? maxIntensity,
      bool maxIntensityIsEarly,
      List<EarthquakeEarlyRegion> regions,
      List<EarthquakeEarlyCity> cities});
}

/// @nodoc
class __$$EarthquakeEarlyEventImplCopyWithImpl<$Res>
    extends _$EarthquakeEarlyEventCopyWithImpl<$Res, _$EarthquakeEarlyEventImpl>
    implements _$$EarthquakeEarlyEventImplCopyWith<$Res> {
  __$$EarthquakeEarlyEventImplCopyWithImpl(_$EarthquakeEarlyEventImpl _value,
      $Res Function(_$EarthquakeEarlyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeEarlyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? depth = freezed,
    Object? magnitude = freezed,
    Object? originTime = null,
    Object? originTimePrecision = null,
    Object? maxIntensity = freezed,
    Object? maxIntensityIsEarly = null,
    Object? regions = null,
    Object? cities = null,
  }) {
    return _then(_$EarthquakeEarlyEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double?,
      magnitude: freezed == magnitude
          ? _value.magnitude
          : magnitude // ignore: cast_nullable_to_non_nullable
              as double?,
      originTime: null == originTime
          ? _value.originTime
          : originTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      originTimePrecision: null == originTimePrecision
          ? _value.originTimePrecision
          : originTimePrecision // ignore: cast_nullable_to_non_nullable
              as OriginTimePrecision,
      maxIntensity: freezed == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity?,
      maxIntensityIsEarly: null == maxIntensityIsEarly
          ? _value.maxIntensityIsEarly
          : maxIntensityIsEarly // ignore: cast_nullable_to_non_nullable
              as bool,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeEarlyRegion>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeEarlyCity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeEarlyEventImpl implements _EarthquakeEarlyEvent {
  const _$EarthquakeEarlyEventImpl(
      {required this.id,
      required this.name,
      required this.lat,
      required this.lon,
      required this.depth,
      required this.magnitude,
      required this.originTime,
      required this.originTimePrecision,
      required this.maxIntensity,
      required this.maxIntensityIsEarly,
      required final List<EarthquakeEarlyRegion> regions,
      required final List<EarthquakeEarlyCity> cities})
      : _regions = regions,
        _cities = cities;

  factory _$EarthquakeEarlyEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeEarlyEventImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double? lat;
  @override
  final double? lon;
  @override
  final double? depth;
  @override
  final double? magnitude;
  @override
  final DateTime originTime;
  @override
  final OriginTimePrecision originTimePrecision;
  @override
  final JmaForecastIntensity? maxIntensity;
  @override
  final bool maxIntensityIsEarly;
  final List<EarthquakeEarlyRegion> _regions;
  @override
  List<EarthquakeEarlyRegion> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  final List<EarthquakeEarlyCity> _cities;
  @override
  List<EarthquakeEarlyCity> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'EarthquakeEarlyEvent(id: $id, name: $name, lat: $lat, lon: $lon, depth: $depth, magnitude: $magnitude, originTime: $originTime, originTimePrecision: $originTimePrecision, maxIntensity: $maxIntensity, maxIntensityIsEarly: $maxIntensityIsEarly, regions: $regions, cities: $cities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeEarlyEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.magnitude, magnitude) ||
                other.magnitude == magnitude) &&
            (identical(other.originTime, originTime) ||
                other.originTime == originTime) &&
            (identical(other.originTimePrecision, originTimePrecision) ||
                other.originTimePrecision == originTimePrecision) &&
            (identical(other.maxIntensity, maxIntensity) ||
                other.maxIntensity == maxIntensity) &&
            (identical(other.maxIntensityIsEarly, maxIntensityIsEarly) ||
                other.maxIntensityIsEarly == maxIntensityIsEarly) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      lat,
      lon,
      depth,
      magnitude,
      originTime,
      originTimePrecision,
      maxIntensity,
      maxIntensityIsEarly,
      const DeepCollectionEquality().hash(_regions),
      const DeepCollectionEquality().hash(_cities));

  /// Create a copy of EarthquakeEarlyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeEarlyEventImplCopyWith<_$EarthquakeEarlyEventImpl>
      get copyWith =>
          __$$EarthquakeEarlyEventImplCopyWithImpl<_$EarthquakeEarlyEventImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeEarlyEventImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeEarlyEvent implements EarthquakeEarlyEvent {
  const factory _EarthquakeEarlyEvent(
          {required final String id,
          required final String name,
          required final double? lat,
          required final double? lon,
          required final double? depth,
          required final double? magnitude,
          required final DateTime originTime,
          required final OriginTimePrecision originTimePrecision,
          required final JmaForecastIntensity? maxIntensity,
          required final bool maxIntensityIsEarly,
          required final List<EarthquakeEarlyRegion> regions,
          required final List<EarthquakeEarlyCity> cities}) =
      _$EarthquakeEarlyEventImpl;

  factory _EarthquakeEarlyEvent.fromJson(Map<String, dynamic> json) =
      _$EarthquakeEarlyEventImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double? get lat;
  @override
  double? get lon;
  @override
  double? get depth;
  @override
  double? get magnitude;
  @override
  DateTime get originTime;
  @override
  OriginTimePrecision get originTimePrecision;
  @override
  JmaForecastIntensity? get maxIntensity;
  @override
  bool get maxIntensityIsEarly;
  @override
  List<EarthquakeEarlyRegion> get regions;
  @override
  List<EarthquakeEarlyCity> get cities;

  /// Create a copy of EarthquakeEarlyEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeEarlyEventImplCopyWith<_$EarthquakeEarlyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EarthquakeEarlyRegion _$EarthquakeEarlyRegionFromJson(
    Map<String, dynamic> json) {
  return _EarthquakeEarlyRegion.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeEarlyRegion {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  JmaForecastIntensity get maxIntensity => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeEarlyRegion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeEarlyRegion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeEarlyRegionCopyWith<EarthquakeEarlyRegion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeEarlyRegionCopyWith<$Res> {
  factory $EarthquakeEarlyRegionCopyWith(EarthquakeEarlyRegion value,
          $Res Function(EarthquakeEarlyRegion) then) =
      _$EarthquakeEarlyRegionCopyWithImpl<$Res, EarthquakeEarlyRegion>;
  @useResult
  $Res call({String name, String code, JmaForecastIntensity maxIntensity});
}

/// @nodoc
class _$EarthquakeEarlyRegionCopyWithImpl<$Res,
        $Val extends EarthquakeEarlyRegion>
    implements $EarthquakeEarlyRegionCopyWith<$Res> {
  _$EarthquakeEarlyRegionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeEarlyRegion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? maxIntensity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      maxIntensity: null == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeEarlyRegionImplCopyWith<$Res>
    implements $EarthquakeEarlyRegionCopyWith<$Res> {
  factory _$$EarthquakeEarlyRegionImplCopyWith(
          _$EarthquakeEarlyRegionImpl value,
          $Res Function(_$EarthquakeEarlyRegionImpl) then) =
      __$$EarthquakeEarlyRegionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String code, JmaForecastIntensity maxIntensity});
}

/// @nodoc
class __$$EarthquakeEarlyRegionImplCopyWithImpl<$Res>
    extends _$EarthquakeEarlyRegionCopyWithImpl<$Res,
        _$EarthquakeEarlyRegionImpl>
    implements _$$EarthquakeEarlyRegionImplCopyWith<$Res> {
  __$$EarthquakeEarlyRegionImplCopyWithImpl(_$EarthquakeEarlyRegionImpl _value,
      $Res Function(_$EarthquakeEarlyRegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeEarlyRegion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = null,
    Object? maxIntensity = null,
  }) {
    return _then(_$EarthquakeEarlyRegionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      maxIntensity: null == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeEarlyRegionImpl implements _EarthquakeEarlyRegion {
  const _$EarthquakeEarlyRegionImpl(
      {required this.name, required this.code, required this.maxIntensity});

  factory _$EarthquakeEarlyRegionImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeEarlyRegionImplFromJson(json);

  @override
  final String name;
  @override
  final String code;
  @override
  final JmaForecastIntensity maxIntensity;

  @override
  String toString() {
    return 'EarthquakeEarlyRegion(name: $name, code: $code, maxIntensity: $maxIntensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeEarlyRegionImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.maxIntensity, maxIntensity) ||
                other.maxIntensity == maxIntensity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, maxIntensity);

  /// Create a copy of EarthquakeEarlyRegion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeEarlyRegionImplCopyWith<_$EarthquakeEarlyRegionImpl>
      get copyWith => __$$EarthquakeEarlyRegionImplCopyWithImpl<
          _$EarthquakeEarlyRegionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeEarlyRegionImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeEarlyRegion implements EarthquakeEarlyRegion {
  const factory _EarthquakeEarlyRegion(
          {required final String name,
          required final String code,
          required final JmaForecastIntensity maxIntensity}) =
      _$EarthquakeEarlyRegionImpl;

  factory _EarthquakeEarlyRegion.fromJson(Map<String, dynamic> json) =
      _$EarthquakeEarlyRegionImpl.fromJson;

  @override
  String get name;
  @override
  String get code;
  @override
  JmaForecastIntensity get maxIntensity;

  /// Create a copy of EarthquakeEarlyRegion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeEarlyRegionImplCopyWith<_$EarthquakeEarlyRegionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EarthquakeEarlyCity _$EarthquakeEarlyCityFromJson(Map<String, dynamic> json) {
  return _EarthquakeEarlyCity.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeEarlyCity {
  String get name => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  JmaForecastIntensity get maxIntensity => throw _privateConstructorUsedError;
  List<EarthquakeEarlyObservationPoint> get observationPoints =>
      throw _privateConstructorUsedError;

  /// Serializes this EarthquakeEarlyCity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeEarlyCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeEarlyCityCopyWith<EarthquakeEarlyCity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeEarlyCityCopyWith<$Res> {
  factory $EarthquakeEarlyCityCopyWith(
          EarthquakeEarlyCity value, $Res Function(EarthquakeEarlyCity) then) =
      _$EarthquakeEarlyCityCopyWithImpl<$Res, EarthquakeEarlyCity>;
  @useResult
  $Res call(
      {String name,
      String? code,
      JmaForecastIntensity maxIntensity,
      List<EarthquakeEarlyObservationPoint> observationPoints});
}

/// @nodoc
class _$EarthquakeEarlyCityCopyWithImpl<$Res, $Val extends EarthquakeEarlyCity>
    implements $EarthquakeEarlyCityCopyWith<$Res> {
  _$EarthquakeEarlyCityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeEarlyCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = freezed,
    Object? maxIntensity = null,
    Object? observationPoints = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      maxIntensity: null == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
      observationPoints: null == observationPoints
          ? _value.observationPoints
          : observationPoints // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeEarlyObservationPoint>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeEarlyCityImplCopyWith<$Res>
    implements $EarthquakeEarlyCityCopyWith<$Res> {
  factory _$$EarthquakeEarlyCityImplCopyWith(_$EarthquakeEarlyCityImpl value,
          $Res Function(_$EarthquakeEarlyCityImpl) then) =
      __$$EarthquakeEarlyCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? code,
      JmaForecastIntensity maxIntensity,
      List<EarthquakeEarlyObservationPoint> observationPoints});
}

/// @nodoc
class __$$EarthquakeEarlyCityImplCopyWithImpl<$Res>
    extends _$EarthquakeEarlyCityCopyWithImpl<$Res, _$EarthquakeEarlyCityImpl>
    implements _$$EarthquakeEarlyCityImplCopyWith<$Res> {
  __$$EarthquakeEarlyCityImplCopyWithImpl(_$EarthquakeEarlyCityImpl _value,
      $Res Function(_$EarthquakeEarlyCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeEarlyCity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? code = freezed,
    Object? maxIntensity = null,
    Object? observationPoints = null,
  }) {
    return _then(_$EarthquakeEarlyCityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      maxIntensity: null == maxIntensity
          ? _value.maxIntensity
          : maxIntensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
      observationPoints: null == observationPoints
          ? _value._observationPoints
          : observationPoints // ignore: cast_nullable_to_non_nullable
              as List<EarthquakeEarlyObservationPoint>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeEarlyCityImpl implements _EarthquakeEarlyCity {
  const _$EarthquakeEarlyCityImpl(
      {required this.name,
      required this.code,
      required this.maxIntensity,
      required final List<EarthquakeEarlyObservationPoint> observationPoints})
      : _observationPoints = observationPoints;

  factory _$EarthquakeEarlyCityImpl.fromJson(Map<String, dynamic> json) =>
      _$$EarthquakeEarlyCityImplFromJson(json);

  @override
  final String name;
  @override
  final String? code;
  @override
  final JmaForecastIntensity maxIntensity;
  final List<EarthquakeEarlyObservationPoint> _observationPoints;
  @override
  List<EarthquakeEarlyObservationPoint> get observationPoints {
    if (_observationPoints is EqualUnmodifiableListView)
      return _observationPoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_observationPoints);
  }

  @override
  String toString() {
    return 'EarthquakeEarlyCity(name: $name, code: $code, maxIntensity: $maxIntensity, observationPoints: $observationPoints)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeEarlyCityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.maxIntensity, maxIntensity) ||
                other.maxIntensity == maxIntensity) &&
            const DeepCollectionEquality()
                .equals(other._observationPoints, _observationPoints));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, code, maxIntensity,
      const DeepCollectionEquality().hash(_observationPoints));

  /// Create a copy of EarthquakeEarlyCity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeEarlyCityImplCopyWith<_$EarthquakeEarlyCityImpl> get copyWith =>
      __$$EarthquakeEarlyCityImplCopyWithImpl<_$EarthquakeEarlyCityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeEarlyCityImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeEarlyCity implements EarthquakeEarlyCity {
  const factory _EarthquakeEarlyCity(
      {required final String name,
      required final String? code,
      required final JmaForecastIntensity maxIntensity,
      required final List<EarthquakeEarlyObservationPoint>
          observationPoints}) = _$EarthquakeEarlyCityImpl;

  factory _EarthquakeEarlyCity.fromJson(Map<String, dynamic> json) =
      _$EarthquakeEarlyCityImpl.fromJson;

  @override
  String get name;
  @override
  String? get code;
  @override
  JmaForecastIntensity get maxIntensity;
  @override
  List<EarthquakeEarlyObservationPoint> get observationPoints;

  /// Create a copy of EarthquakeEarlyCity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeEarlyCityImplCopyWith<_$EarthquakeEarlyCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EarthquakeEarlyObservationPoint _$EarthquakeEarlyObservationPointFromJson(
    Map<String, dynamic> json) {
  return _EarthquakeEarlyObservationPoint.fromJson(json);
}

/// @nodoc
mixin _$EarthquakeEarlyObservationPoint {
  String get name => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lon => throw _privateConstructorUsedError;
  JmaForecastIntensity get intensity => throw _privateConstructorUsedError;

  /// Serializes this EarthquakeEarlyObservationPoint to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EarthquakeEarlyObservationPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EarthquakeEarlyObservationPointCopyWith<EarthquakeEarlyObservationPoint>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarthquakeEarlyObservationPointCopyWith<$Res> {
  factory $EarthquakeEarlyObservationPointCopyWith(
          EarthquakeEarlyObservationPoint value,
          $Res Function(EarthquakeEarlyObservationPoint) then) =
      _$EarthquakeEarlyObservationPointCopyWithImpl<$Res,
          EarthquakeEarlyObservationPoint>;
  @useResult
  $Res call(
      {String name, double lat, double lon, JmaForecastIntensity intensity});
}

/// @nodoc
class _$EarthquakeEarlyObservationPointCopyWithImpl<$Res,
        $Val extends EarthquakeEarlyObservationPoint>
    implements $EarthquakeEarlyObservationPointCopyWith<$Res> {
  _$EarthquakeEarlyObservationPointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EarthquakeEarlyObservationPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
    Object? intensity = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EarthquakeEarlyObservationPointImplCopyWith<$Res>
    implements $EarthquakeEarlyObservationPointCopyWith<$Res> {
  factory _$$EarthquakeEarlyObservationPointImplCopyWith(
          _$EarthquakeEarlyObservationPointImpl value,
          $Res Function(_$EarthquakeEarlyObservationPointImpl) then) =
      __$$EarthquakeEarlyObservationPointImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, double lat, double lon, JmaForecastIntensity intensity});
}

/// @nodoc
class __$$EarthquakeEarlyObservationPointImplCopyWithImpl<$Res>
    extends _$EarthquakeEarlyObservationPointCopyWithImpl<$Res,
        _$EarthquakeEarlyObservationPointImpl>
    implements _$$EarthquakeEarlyObservationPointImplCopyWith<$Res> {
  __$$EarthquakeEarlyObservationPointImplCopyWithImpl(
      _$EarthquakeEarlyObservationPointImpl _value,
      $Res Function(_$EarthquakeEarlyObservationPointImpl) _then)
      : super(_value, _then);

  /// Create a copy of EarthquakeEarlyObservationPoint
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
    Object? intensity = null,
  }) {
    return _then(_$EarthquakeEarlyObservationPointImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as JmaForecastIntensity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EarthquakeEarlyObservationPointImpl
    implements _EarthquakeEarlyObservationPoint {
  const _$EarthquakeEarlyObservationPointImpl(
      {required this.name,
      required this.lat,
      required this.lon,
      required this.intensity});

  factory _$EarthquakeEarlyObservationPointImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EarthquakeEarlyObservationPointImplFromJson(json);

  @override
  final String name;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final JmaForecastIntensity intensity;

  @override
  String toString() {
    return 'EarthquakeEarlyObservationPoint(name: $name, lat: $lat, lon: $lon, intensity: $intensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EarthquakeEarlyObservationPointImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, lat, lon, intensity);

  /// Create a copy of EarthquakeEarlyObservationPoint
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EarthquakeEarlyObservationPointImplCopyWith<
          _$EarthquakeEarlyObservationPointImpl>
      get copyWith => __$$EarthquakeEarlyObservationPointImplCopyWithImpl<
          _$EarthquakeEarlyObservationPointImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EarthquakeEarlyObservationPointImplToJson(
      this,
    );
  }
}

abstract class _EarthquakeEarlyObservationPoint
    implements EarthquakeEarlyObservationPoint {
  const factory _EarthquakeEarlyObservationPoint(
          {required final String name,
          required final double lat,
          required final double lon,
          required final JmaForecastIntensity intensity}) =
      _$EarthquakeEarlyObservationPointImpl;

  factory _EarthquakeEarlyObservationPoint.fromJson(Map<String, dynamic> json) =
      _$EarthquakeEarlyObservationPointImpl.fromJson;

  @override
  String get name;
  @override
  double get lat;
  @override
  double get lon;
  @override
  JmaForecastIntensity get intensity;

  /// Create a copy of EarthquakeEarlyObservationPoint
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EarthquakeEarlyObservationPointImplCopyWith<
          _$EarthquakeEarlyObservationPointImpl>
      get copyWith => throw _privateConstructorUsedError;
}
