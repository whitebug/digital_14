// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistics_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatisticsModel _$StatisticsModelFromJson(Map<String, dynamic> json) =>
    StatisticsModel(
      listingCount: json['listing_count'] as int?,
      averagePrice: json['average_price'] as int?,
      lowestPriceGoodDeals: json['lowest_price_good_deals'] as int?,
      lowestPrice: json['lowest_price'] as int?,
      highestPrice: json['highest_price'] as int?,
      visibleListingCount: json['visible_listing_count'] as int?,
      dqBucketCounts: (json['dq_bucket_counts'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      medianPrice: json['median_price'] as int?,
      lowestSgBasePrice: json['lowest_sg_base_price'] as int?,
      lowestSgBasePriceGoodDeals:
          json['lowest_sg_base_price_good_deals'] as int?,
    );

Map<String, dynamic> _$StatisticsModelToJson(StatisticsModel instance) =>
    <String, dynamic>{
      'listing_count': instance.listingCount,
      'average_price': instance.averagePrice,
      'lowest_price_good_deals': instance.lowestPriceGoodDeals,
      'lowest_price': instance.lowestPrice,
      'highest_price': instance.highestPrice,
      'visible_listing_count': instance.visibleListingCount,
      'dq_bucket_counts': instance.dqBucketCounts,
      'median_price': instance.medianPrice,
      'lowest_sg_base_price': instance.lowestSgBasePrice,
      'lowest_sg_base_price_good_deals': instance.lowestSgBasePriceGoodDeals,
    };
