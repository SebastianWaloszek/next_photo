import 'package:injectable/injectable.dart';
import 'package:next_blog/src/base/domain/entities/result.dart';
import 'package:next_blog/src/base/domain/use_cases/use_case.dart';
import 'package:next_blog/src/features/albums/domain/entities/photo.dart';
import 'package:next_blog/src/features/albums/domain/repositories/photo_repository.dart';

/// A use case for getting all available photos.
@LazySingleton()
class GetAllPhotos extends AsyncUseCaseWithoutParams<List<Photo>> {
  /// Creates the use case.
  GetAllPhotos({
    required PhotoRepository repository,
  }) : _repository = repository;

  final PhotoRepository _repository;

  @override
  Future<Result<List<Photo>>> call() {
    return _repository.getAllPhotos();
  }
}
