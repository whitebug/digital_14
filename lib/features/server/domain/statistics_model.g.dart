// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatisticsModel _$StatisticsModelFromJson(Map<String, dynamic> json) =>
    StatisticsModel(
      listingCount: json['listingCount'] as int?,
      averagePrice: json['averagePrice'] as int?,
      lowestPriceGoodDeals: json['lowestPriceGoodDeals'] as int?,
      lowestPrice: json['lowestPrice'] as int?,
      highestPrice: json['highestPrice'] as int?,
      visibleListingCount: json['visibleListingCount'] as int?,
      dqBucketCounts: (json['dqBucketCounts'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      medianPrice: json['medianPrice'] as int?,
      lowestSgBasePrice: json['lowestSgBasePrice'] as int?,
      lowestSgBasePriceGoodDeals: json['lowestSgBasePriceGoodDeals'] as int?,
    );

Map<String, dynamic> _$StatisticsModelToJson(StatisticsModel instance) =>
    <String, dynamic>{
      'listingCount': instance.listingCount,
      'averagePrice': instance.averagePrice,
      'lowestPriceGoodDeals': instance.lowestPriceGoodDeals,
      'lowestPrice': instance.lowestPrice,
      'highestPrice': instance.highestPrice,
      'visibleListingCount': instance.visibleListingCount,
      'dqBucketCounts': instance.dqBucketCounts,
      'medianPrice': instance.medianPrice,
      'lowestSgBasePrice': instance.lowestSgBasePrice,
      'lowestSgBasePriceGoodDeals': instance.lowestSgBasePriceGoodDeals,
    };
