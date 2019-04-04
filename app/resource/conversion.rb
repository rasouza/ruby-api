module Resource
  class Conversion
    include SemanticLogger::Loggable

    def hello
      logger.info('teste')
    end
  end
end
