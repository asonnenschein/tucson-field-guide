__author__ = 'Adrian Sonnenschein, 2014'

import ogr

class EditShapefileAttrs(object):
    '''
    This class is used for automated data processing of shapefiles, 
    specifically for use in the tucson-field-guide.  It relies on OGR.
    '''

    def __init__(self, shapefile):
        self.driver = ogr.GetDriverByName('ESRI Shapefile')
        self.data_source = self.driver.Open(shapefile, 1)
        self.layer = self.data_source.GetLayer()

    # Enumerate one field of a shapefile based on another field.  Ideally, the
    # 'query_field' is a shared attribute among features and the 'target_field'
    # will be populated with integer values starting at zero for each group
    def enumerate_by_attrs(self, query_field, target_field, attribute):
        counter = 0
        query = qurey_field + " = '" + attribute + "'"
        self.layer.SetAttributeFilter(query)

        for feature in self.layer:
            feature.SetField(target_field, counter)
            self.layer.SetFeature(feature)
            counter += 1

class QueryPostGIS(object):
    '''
    This class is used for connecting to a postgis database table 
    and querying against it.  It relies on OGR.
    '''

    def __init__(self, host, dbname, user, password):
        self.conn_string = 'PG: host=%s dbname=%s user=%s password=%s' %(host, 
            dbname, user, password)
        self.connect = ogr.Open(self.conn_string)

    def query_for_data(self, table, query_field):
        layer = self.connect.GetLayer(table)
        for feature in layer:
            if feature.GetField(query_field) is not None:
                print feature.GetField(query_field)


# Define some variables and put the code to work!
'''
root_path = '/Users/adrian/Documents/git/tucson-field-guide'
input_file = root_path + '/data/shp/group_block_pima.shp'
groups = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n',
        'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

shapefile = EditShapefileAttrs(input_file)

for group in groups:
    shapefile.enumerate_by_attrs('group', 'color_id' group)
'''

database = QueryPostGIS('localhost', 'osm_tucson', 'adrian', 'password')
database.query_for_data('planet_osm_polygon', 'boundary')