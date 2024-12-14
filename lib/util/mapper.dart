/// Mapper class to map entity to dto
abstract class Mapper<E, T> {
  T mapToDto(E? entity);
}
