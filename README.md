# Project of Automated Planned 

Master 2 miashs course in computer science \
Mathis Ruffieux - 2022

Sokoban documentation:
http://pddl4j.imag.fr/repository/exercices/sokoban.html

Sokoban source-code:
https://github.com/fiorinoh/sokoban

### Summary 

- I) Installation manual
- II) User's manual
- III) PDDL explanations 

### I) Installation manual

- Install pddl from https://github.com/pellierd/pddl4j (use the devel branch)
- Install Maven from https://maven.apache.org/download.cgi 

Then from the root of the project run the command:
```
mvn install:install-file 
    -Dfile=<path-to-file-pddl4j-4.0.0.jar> \
    -DgroupId=fr.uga \
    -DartifactId=pddl4j \
    -Dversion=4.0.0 \
    -Dpackaging=jar \
    -DgeneratePom=true
```

Work with maven: 
- mvn clean
- mvn compile
- mvn test
- mvn package

Run the project with:

```
java --add-opens java.base/java.lang=ALL-UNNAMED \
-server -Xms2048m -Xmx2048m \
-cp "$(mvn dependency:build-classpath -Dmdep.outputFile=/dev/stdout -q):target/test-classes/:target/classes" \
sokoban.SokobanMain
```
or (after mvn package):

```
java --add-opens java.base/java.lang=ALL-UNNAMED \
-server -Xms2048m -Xmx2048m \
-cp target/sokoban-1.0-SNAPSHOT-jar-with-dependencies.jar \
sokoban.SokobanMain
```

See planning solutions at http://localhost:8888/test.html

### II) User's manual

A list of 30 levels is located in the "config" directory of this project. 

Open the SokobanMain.java file located in src/main/java/sokoban/ 
and choose a level at line 10:
```gameRunner.setTestCase("[LEVEL]");```

Here an example for the level 1:
```gameRunner.setTestCase("test1.json");```


In the console, run the pddl corresponding to the associated level 
with the following command:

```
java -cp [YOUR PATH]/pddl4j-4.0.0.jar \
    fr.uga.pddl4j.planners.statespace.FF \
    [DOMAIN] \
    [PROBLEM]
```
The pddl [DOMAIN] and [PROBLEM] are located in:
``src\main\pddl\ ``

Here an example to solve the level 1 from the root of the project:

```
java -cp [YOUR PATH]/pddl4j-4.0.0.jar \
    fr.uga.pddl4j.planners.statespace.FF \
    "src\main\pddl\domainSokoban.pddl" \
    "src\main\pddl\test1.pddl"
```
Then open the Agent.java class located in:
``src\main\java\sokoban\ `` 
and paste the solution plan (from the console) in the variable "planSolution" at line 18

To recompile and run the program, use again the following commands:
- mvn compile
- mvn package

See the new planning solution at:
http://localhost:8888/test.html

### III) PDDL explanations 

Agent class is located in:
``src\main\java\sokoban\ ``

The Agent class will read the solution plan generated with PDDL and translate it into a String representing the actions:
- U is up,
- D is down,
- L is left and
- R is right.

PDDL files are located in:
``src\main\pddl\ ``

There is only one type in the domain, the block type. 
Each square of the field is represented by a block and can be either empty, 
with a box, with the guard, otherwise it is a wall.

The possible actions are:
Move in the 4 directions (up down left right) or push a block of type box 
in one of these directions. The guard moves with the box when he pushes it, 
but cannot pull it.

To solve a level, the boxes must be located on specific squares of the field.





