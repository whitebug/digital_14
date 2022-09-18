import 'package:json_annotation/json_annotation.dart';

part 'statistics_model.g.dart';

@JsonSerializable()
class StatisticsModel {
  @JsonKey(name: 'listing_count')
  int? listingCount;
  @JsonKey(name: 'average_price')
  int? averagePrice;
  @JsonKey(name: 'lowest_price_good_deals')
  int? lowestPriceGoodDeals;
  @JsonKey(name: 'lowest_price')
  int? lowestPrice;
  @JsonKey(name: 'highest_price')
  int? highestPrice;
  @JsonKey(name: 'visible_listing_count')
  int? visibleListingCount;
  @JsonKey(name: 'dq_bucket_counts')
  List<int>? dqBucketCounts;
  @JsonKey(name: 'median_price')
  int? medianPrice;
  @JsonKey(name: 'lowest_sg_base_price')
  int? lowestSgBasePrice;
  @JsonKey(name: 'lowest_sg_base_price_good_deals')
  int? lowestSgBasePriceGoodDeals;

  StatisticsModel({
    this.listingCount,
    this.averagePrice,
    this.lowestPriceGoodDeals,
    this.lowestPrice,
    this.highestPrice,
    this.visibleListingCount,
    this.dqBucketCounts,
    this.medianPrice,
    this.lowestSgBasePrice,
    this.lowestSgBasePriceGoodDeals,
  });

  factory StatisticsModel.fromJson(Map<String, dynamic> json) =>
      _$StatisticsModelFromJson(json);

  Map<String, dynamic> toJson() => _$StatisticsModelToJson(this);
}
