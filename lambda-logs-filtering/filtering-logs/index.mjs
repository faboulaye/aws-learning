export const handler = async () => {
    console.debug("DEBUG: This is a debug message.");
    console.log("INFO: This is an informational message.");
    console.warn("WARN: This is a warning message.");
    console.error("ERROR: This is an error message.");

    return {
        statusCode: 200,
        body: JSON.stringify({ message: "Hello from Lambda!" }),
    };
};