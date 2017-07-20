FROM openjdk:8
run apt-get update
run apt-get install -y maven
run git clone https://github.com/geomesa/geomesa-tutorials.git
run cd geomesa-tutorials/geomesa-quickstart-hbase && mvn clean install && java -cp geomesa-quickstart-hbase/target/geomesa-quickstart-hbase-$VERSION.jar \
  com.example.geomesa.hbase.HBaseQuickStart --bigtable_table_name geomesa
