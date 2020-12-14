=begin
#HubDB endpoints

#HubDB is a relational data store that presents data as rows, columns, and cells in a table, much like a spreadsheet. HubDB tables can be added or modified [in the HubSpot CMS](https://knowledge.hubspot.com/cos-general/how-to-edit-hubdb-tables), but you can also use the API endpoints documented here. For more information on HubDB tables and using their data on a HubSpot site, see the [CMS developers site](https://designers.hubspot.com/docs/tools/hubdb). You can also see the [documentation for dynamic pages](https://designers.hubspot.com/docs/tutorials/how-to-build-dynamic-pages-with-hubdb) for more details about the `useForPages` field.  HubDB tables support `draft` and `live` versions and you can publish and unpublish the live version. This allows you to update data in the table, either for testing or to allow for a manual approval process, without affecting any live pages using the existing data. Draft data can be reviewed, pushed to live version, and published by a user working in HubSpot or published via the API. Draft data can also be discarded, allowing users to go back to the live version of the data without disrupting it. If a table is set to be `allowed for public access`, you can access the published version of the table and rows without any authentication.

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'date'

module Hubspot
  module Cms
    module Hubdb
      class HubDbTableV3Input
        # Specifies the key value pairs of the metadata fields with the associated column ids  input
        attr_accessor :dynamic_meta_tags

        # Specifies whether the table can be read by public without authorization input
        attr_accessor :allow_public_api_access

        # Specifies whether the table can be used for creation of dynamic pages input
        attr_accessor :use_for_pages

        # List of columns in the table input
        attr_accessor :columns

        # Name of the table input
        attr_accessor :name

        # Specifies creation of multi-level dynamic pages using child tables input
        attr_accessor :enable_child_table_pages

        # Label of the table input
        attr_accessor :label

        # Specifies whether child tables can be created input
        attr_accessor :allow_child_tables

        # Attribute mapping from ruby-style variable name to JSON key.
        def self.attribute_map
          {
            :'dynamic_meta_tags' => :'dynamicMetaTags',
            :'allow_public_api_access' => :'allowPublicApiAccess',
            :'use_for_pages' => :'useForPages',
            :'columns' => :'columns',
            :'name' => :'name',
            :'enable_child_table_pages' => :'enableChildTablePages',
            :'label' => :'label',
            :'allow_child_tables' => :'allowChildTables'
          }
        end

        # Attribute type mapping.
        def self.openapi_types
          {
            :'dynamic_meta_tags' => :'Hash<String, Integer>',
            :'allow_public_api_access' => :'Boolean',
            :'use_for_pages' => :'Boolean',
            :'columns' => :'Array<ColumnInput>',
            :'name' => :'String',
            :'enable_child_table_pages' => :'Boolean',
            :'label' => :'String',
            :'allow_child_tables' => :'Boolean'
          }
        end

        # List of attributes with nullable: true
        def self.openapi_nullable
          Set.new([
          ])
        end

        # Initializes the object
        # @param [Hash] attributes Model attributes in the form of hash
        def initialize(attributes = {})
          if (!attributes.is_a?(Hash))
            fail ArgumentError, "The input argument (attributes) must be a hash in `Hubspot::Cms::Hubdb::HubDbTableV3Input` initialize method"
          end

          # check to see if the attribute exists and convert string to symbol for hash key
          attributes = attributes.each_with_object({}) { |(k, v), h|
            if (!self.class.attribute_map.key?(k.to_sym))
              fail ArgumentError, "`#{k}` is not a valid attribute in `Hubspot::Cms::Hubdb::HubDbTableV3Input`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
            end
            h[k.to_sym] = v
          }

          if attributes.key?(:'dynamic_meta_tags')
            if (value = attributes[:'dynamic_meta_tags']).is_a?(Hash)
              self.dynamic_meta_tags = value
            end
          end

          if attributes.key?(:'allow_public_api_access')
            self.allow_public_api_access = attributes[:'allow_public_api_access']
          end

          if attributes.key?(:'use_for_pages')
            self.use_for_pages = attributes[:'use_for_pages']
          end

          if attributes.key?(:'columns')
            if (value = attributes[:'columns']).is_a?(Array)
              self.columns = value
            end
          end

          if attributes.key?(:'name')
            self.name = attributes[:'name']
          end

          if attributes.key?(:'enable_child_table_pages')
            self.enable_child_table_pages = attributes[:'enable_child_table_pages']
          end

          if attributes.key?(:'label')
            self.label = attributes[:'label']
          end

          if attributes.key?(:'allow_child_tables')
            self.allow_child_tables = attributes[:'allow_child_tables']
          end
        end

        # Show invalid properties with the reasons. Usually used together with valid?
        # @return Array for valid properties with the reasons
        def list_invalid_properties
          invalid_properties = Array.new
          if @name.nil?
            invalid_properties.push('invalid value for "name", name cannot be nil.')
          end

          if @label.nil?
            invalid_properties.push('invalid value for "label", label cannot be nil.')
          end

          invalid_properties
        end

        # Check to see if the all the properties in the model are valid
        # @return true if the model is valid
        def valid?
          return false if @name.nil?
          return false if @label.nil?
          true
        end

        # Checks equality by comparing each attribute.
        # @param [Object] Object to be compared
        def ==(o)
          return true if self.equal?(o)
          self.class == o.class &&
              dynamic_meta_tags == o.dynamic_meta_tags &&
              allow_public_api_access == o.allow_public_api_access &&
              use_for_pages == o.use_for_pages &&
              columns == o.columns &&
              name == o.name &&
              enable_child_table_pages == o.enable_child_table_pages &&
              label == o.label &&
              allow_child_tables == o.allow_child_tables
        end

        # @see the `==` method
        # @param [Object] Object to be compared
        def eql?(o)
          self == o
        end

        # Calculates hash code according to all attributes.
        # @return [Integer] Hash code
        def hash
          [dynamic_meta_tags, allow_public_api_access, use_for_pages, columns, name, enable_child_table_pages, label, allow_child_tables].hash
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def self.build_from_hash(attributes)
          new.build_from_hash(attributes)
        end

        # Builds the object from hash
        # @param [Hash] attributes Model attributes in the form of hash
        # @return [Object] Returns the model itself
        def build_from_hash(attributes)
          return nil unless attributes.is_a?(Hash)
          self.class.openapi_types.each_pair do |key, type|
            if type =~ /\AArray<(.*)>/i
              # check to ensure the input is an array given that the attribute
              # is documented as an array but the input is not
              if attributes[self.class.attribute_map[key]].is_a?(Array)
                self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
              end
            elsif !attributes[self.class.attribute_map[key]].nil?
              self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
            end # or else data not found in attributes(hash), not an issue as the data can be optional
          end

          self
        end

        # Deserializes the data based on type
        # @param string type Data type
        # @param string value Value to be deserialized
        # @return [Object] Deserialized data
        def _deserialize(type, value)
          case type.to_sym
          when :DateTime
            DateTime.parse(value)
          when :Date
            Date.parse(value)
          when :String
            value.to_s
          when :Integer
            value.to_i
          when :Float
            value.to_f
          when :Boolean
            if value.to_s =~ /\A(true|t|yes|y|1)\z/i
              true
            else
              false
            end
          when :Object
            # generic object (usually a Hash), return directly
            value
          when /\AArray<(?<inner_type>.+)>\z/
            inner_type = Regexp.last_match[:inner_type]
            value.map { |v| _deserialize(inner_type, v) }
          when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
            k_type = Regexp.last_match[:k_type]
            v_type = Regexp.last_match[:v_type]
            {}.tap do |hash|
              value.each do |k, v|
                hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
              end
            end
          else # model
            Hubspot::Cms::Hubdb.const_get(type).build_from_hash(value)
          end
        end

        # Returns the string representation of the object
        # @return [String] String presentation of the object
        def to_s
          to_hash.to_s
        end

        # to_body is an alias to to_hash (backward compatibility)
        # @return [Hash] Returns the object in the form of hash
        def to_body
          to_hash
        end

        # Returns the object in the form of hash
        # @return [Hash] Returns the object in the form of hash
        def to_hash
          hash = {}
          self.class.attribute_map.each_pair do |attr, param|
            value = self.send(attr)
            if value.nil?
              is_nullable = self.class.openapi_nullable.include?(attr)
              next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
            end
            
            hash[param] = _to_hash(value)
          end
          hash
        end

        # Outputs non-array value in the form of hash
        # For object, use to_hash. Otherwise, just return the value
        # @param [Object] value Any valid value
        # @return [Hash] Returns the value in the form of hash
        def _to_hash(value)
          if value.is_a?(Array)
            value.compact.map { |v| _to_hash(v) }
          elsif value.is_a?(Hash)
            {}.tap do |hash|
              value.each { |k, v| hash[k] = _to_hash(v) }
            end
          elsif value.respond_to? :to_hash
            value.to_hash
          else
            value
          end
        end
      end
    end
  end
end
