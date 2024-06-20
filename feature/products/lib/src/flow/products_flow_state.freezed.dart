// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsFlowState {
  List<Product> get products => throw _privateConstructorUsedError;
  Product? get selectedProduct => throw _privateConstructorUsedError;
  bool get showComments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductsFlowStateCopyWith<ProductsFlowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsFlowStateCopyWith<$Res> {
  factory $ProductsFlowStateCopyWith(
          ProductsFlowState value, $Res Function(ProductsFlowState) then) =
      _$ProductsFlowStateCopyWithImpl<$Res, ProductsFlowState>;
  @useResult
  $Res call(
      {List<Product> products, Product? selectedProduct, bool showComments});
}

/// @nodoc
class _$ProductsFlowStateCopyWithImpl<$Res, $Val extends ProductsFlowState>
    implements $ProductsFlowStateCopyWith<$Res> {
  _$ProductsFlowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? selectedProduct = freezed,
    Object? showComments = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
      showComments: null == showComments
          ? _value.showComments
          : showComments // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsFlowStateImplCopyWith<$Res>
    implements $ProductsFlowStateCopyWith<$Res> {
  factory _$$ProductsFlowStateImplCopyWith(_$ProductsFlowStateImpl value,
          $Res Function(_$ProductsFlowStateImpl) then) =
      __$$ProductsFlowStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> products, Product? selectedProduct, bool showComments});
}

/// @nodoc
class __$$ProductsFlowStateImplCopyWithImpl<$Res>
    extends _$ProductsFlowStateCopyWithImpl<$Res, _$ProductsFlowStateImpl>
    implements _$$ProductsFlowStateImplCopyWith<$Res> {
  __$$ProductsFlowStateImplCopyWithImpl(_$ProductsFlowStateImpl _value,
      $Res Function(_$ProductsFlowStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? selectedProduct = freezed,
    Object? showComments = null,
  }) {
    return _then(_$ProductsFlowStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      selectedProduct: freezed == selectedProduct
          ? _value.selectedProduct
          : selectedProduct // ignore: cast_nullable_to_non_nullable
              as Product?,
      showComments: null == showComments
          ? _value.showComments
          : showComments // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductsFlowStateImpl implements _ProductsFlowState {
  const _$ProductsFlowStateImpl(
      {final List<Product> products = const [],
      this.selectedProduct,
      this.showComments = false})
      : _products = products;

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final Product? selectedProduct;
  @override
  @JsonKey()
  final bool showComments;

  @override
  String toString() {
    return 'ProductsFlowState(products: $products, selectedProduct: $selectedProduct, showComments: $showComments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFlowStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.selectedProduct, selectedProduct) ||
                other.selectedProduct == selectedProduct) &&
            (identical(other.showComments, showComments) ||
                other.showComments == showComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      selectedProduct,
      showComments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFlowStateImplCopyWith<_$ProductsFlowStateImpl> get copyWith =>
      __$$ProductsFlowStateImplCopyWithImpl<_$ProductsFlowStateImpl>(
          this, _$identity);
}

abstract class _ProductsFlowState implements ProductsFlowState {
  const factory _ProductsFlowState(
      {final List<Product> products,
      final Product? selectedProduct,
      final bool showComments}) = _$ProductsFlowStateImpl;

  @override
  List<Product> get products;
  @override
  Product? get selectedProduct;
  @override
  bool get showComments;
  @override
  @JsonKey(ignore: true)
  _$$ProductsFlowStateImplCopyWith<_$ProductsFlowStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
