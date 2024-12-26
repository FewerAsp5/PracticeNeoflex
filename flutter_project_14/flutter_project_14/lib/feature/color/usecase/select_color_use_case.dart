import 'package:dartz/dartz.dart';
import 'package:flutter_project_14/core/failure/failure.dart';
import 'package:flutter_project_14/core/use_case/use_case.dart';
import 'package:flutter_project_14/feature/color/domain/entity/color_entity.dart';
import 'package:flutter_project_14/feature/color/domain/repository/color_repository.dart';

class SelectColorUseCase extends UseCase<ColorEntity, ColorEntity>{
  final ColorRepository colorRepository;

  SelectColorUseCase({required this.colorRepository});
  @override
  Future<Either<Failure, ColorEntity>> call(ColorEntity params) {
    return colorRepository.write(params);
  }

}