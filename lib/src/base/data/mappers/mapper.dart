/// The interface for mapping one class to another.
abstract class Mapper<I, O> {
  /// Maps an input to an output type.
  O call(I input);
}
