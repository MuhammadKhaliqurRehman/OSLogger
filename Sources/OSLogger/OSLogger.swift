import OSLog

public final class OSLogger {

    // MARK: - Properties
    public lazy var shared: OSLogger = {
        return OSLogger()
    }()
    private var logger: Logger
    private var description: String {
        return Date().ISO8601Format()
    }

    // MARK: - Initialization
    private init() {
        self.logger = Logger()
    }

    //MARK: - Public Methods
    public func log(_ message: String) {
        logger.log("[LOG] - [\(self.description)] - \(message)")
    }

    public func trace(_ message: String) {
        logger.log("[TRACE] - [\(self.description)] - \(message)")
    }

    public func debug(_ message: String) {
        logger.log("[DEBUG] - [\(self.description)] - \(message)")
    }

    public func info(_ message: String) {
        logger.log("[INFO] - [\(self.description)] - \(message)")
    }

    public func notice(_ message: String) {
        logger.log("[NOTICE] - [\(self.description)] - \(message)")
    }

    public func warning(_ message: String) {
        logger.log("[WARNING] - [\(self.description)] - \(message)")
    }

    public func error(_ message: String) {
        logger.log("[ERROR] - [\(self.description)] - \(message)")
    }

    public func critical(_ message: String) {
        logger.log("[CRITICAL] - [\(self.description)] - \(message)")
    }

    public func fault(_ message: String) {
        logger.log("[FAULT] - [\(self.description)] - \(message)")
    }
}

