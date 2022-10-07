
export JAVA_HOME := `jenv javahome`

# Compile the project.
build:
    mvn compile

# Package the project into a JAR.
package:
    mvn package

# Run tests.
test:
    mvn test

# Generate a test coverage report.
report:
    mvn test jacoco:report
    open target/site/jacoco/index.html

# Run mutation tests.
test-mut:
    mvn test org.pitest:pitest-maven:mutationCoverage
alias mut := test-mut

# Clean package artifacts.
clean:
    mvn clean

