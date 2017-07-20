FROM openjdk:8
run apt-get update
run apt-get install -y git-core maven
git clone https://github.com/geomesa/geomesa-tutorials.git
cd geomesa-tutorials
cd geomesa-quickstart-hbase
mvn clean install
java -cp geomesa-quickstart-hbase/target/geomesa-quickstart-hbase-$VERSION.jar \
  com.example.geomesa.hbase.HBaseQuickStart --bigtable_table_name geomesa
