#!/usr/bin/perl
use warnings FATAL => 'all';

use DBI;
use strict;

my $driver   = "Pg";
my $database = "testdb";
my $dsn = "DBI:$driver:dbname=$database;host=127.0.0.1;port=5432";
my $userid = "postgres";
my $password = "";
my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 })
    or die $DBI::errstr;
print "Opened database successfully\n";

my $stmt = qq(SELECT id, name, address, salary  from COMPANY;);
my $sth = $dbh->prepare( $stmt );
my $rv = $sth->execute() or die $DBI::errstr;
if($rv < 0){
    print $DBI::errstr;
}
while(my @row = $sth->fetchrow_array()) {
    print "ID = ". $row[0] . "\n";
    print "NAME = ". $row[1] ."\n";
    print "ADDRESS = ". $row[2] ."\n";
    print "SALARY =  ". $row[3] ."\n\n";
}
print "Operation done successfully\n";
$dbh->disconnect();
