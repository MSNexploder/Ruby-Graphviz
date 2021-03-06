class GraphViz
  class Types
    class Common
      def initialize( data )
        @data = check(data)
      end
      
      def output
        return @data
      end
      
      def source
        return @data
      end
    end
    
    Dir.glob( File.dirname( File.expand_path(__FILE__) )+"/types/*" ).each do |f|
      autoload File.basename(f).gsub(File.extname(f), "").split( "_" ).map{|n| n.capitalize }.join.to_sym, f
    end
  end
end

#x = :EscString
#GraphViz::Types.const_get(x).new( "toto" )

