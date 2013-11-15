# require 'mdb_tools'
  
class SimpleMdb::MDB
  include SimpleMdb::MDBTools
  
  attr_reader :mdb_file, :prefix, :exclude, :tables
  
  def initialize(mdb_file, options = {})
    @mdb_file = check_file(mdb_file)
    @prefix = options[:prefix] || ''
    @exclude, @include = options[:exclude], options[:include]
    @export_syntax = options[:sql_syntax] || 'mysql'
    @tables = mdb_tables(@mdb_file, :exclude => @exclude, :include => @include)
  end
  
  # consumer of poor, weak MDBTools.faked_count
  def count(table_name, attribute)
    SimpleMdb::MDBTools.faked_count(@mdb_file, table_name, attribute)
  end
  
  def columns(table_name)
    SimpleMdb::MDBTools.describe_table(@mdb_file, table_name).map do |column|
      SimpleMdb::Column.new_from_describe(column)
    end
  end
  
  def column_names(table_name)
    SimpleMdb::MDBTools.field_names_for(@mdb_file, table_name)
  end
end
  
