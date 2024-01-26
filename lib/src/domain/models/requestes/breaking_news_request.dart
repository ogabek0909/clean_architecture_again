import 'package:news_again/src/utils/constants/nums.dart';
import 'package:news_again/src/utils/constants/strings.dart';

class BreakingNewsRequest {
  final String apiKey;
  final String country;
  final String category;
  final int page;
  final int pageSize;

  BreakingNewsRequest({
    this.apiKey = defaultApiKey,
    this.category = 'general',
    this.country = 'uz',
    this.page = 1,
    this.pageSize = defaultPageSize,
  });
}
