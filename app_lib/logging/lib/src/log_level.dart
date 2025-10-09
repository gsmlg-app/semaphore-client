enum LogLevel {
  verbose(0, 'VERBOSE'),
  debug(1, 'DEBUG'),
  info(2, 'INFO'),
  warning(3, 'WARNING'),
  error(4, 'ERROR'),
  fatal(5, 'FATAL');

  const LogLevel(this.value, this.name);
  final int value;
  final String name;

  bool operator >=(LogLevel other) => value >= other.value;
  bool operator >(LogLevel other) => value > other.value;
  bool operator <=(LogLevel other) => value <= other.value;
  bool operator <(LogLevel other) => value < other.value;
}
