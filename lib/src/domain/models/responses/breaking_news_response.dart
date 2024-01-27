// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:equatable/equatable.dart';

import 'package:news_again/src/domain/models/article.dart';

class BreakingNewsResponse extends Equatable {
  final String? status;
  final int? totalResults;
  final List<Article> articles;
  const BreakingNewsResponse({
    this.status,
    this.totalResults,
    required this.articles,
  });
  

  factory BreakingNewsResponse.fromMap(Map<String, dynamic> map) {
    return BreakingNewsResponse(
      status: map['status'] != null ? map['status'] as String : null,
      totalResults: map['totalResults'] != null ? map['totalResults'] as int : null,
      articles: List<Article>.from((map['articles'] as List<int>).map<Article>((x) => Article.fromMap(x as Map<String,dynamic>),),),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [status, totalResults, articles];
}
