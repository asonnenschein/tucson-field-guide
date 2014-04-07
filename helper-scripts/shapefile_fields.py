import ogr

root_path = '/Users/adrian/Documents/git/tucson-field-guide'
input_file = root_path + '/data/shp/group_block_pima.shp'


class EditShapefileAttrs(object):

	def __init__(self, shapefile):
		self.driver = ogr.GetDriverByName('ESRI Shapefile')
		self.data_source = self.driver.Open(shapefile, 1)
		self.layer = self.data_source.GetLayer()

	def filter_by_attrs(self, field, attribute):
		query = field + " = '" + attribute + "'"
		self.layer.SetAttributeFilter(query)
#		length = len([i for i in self.layer])
		
		for feature in self.layer:
			print feature.GetField('group')


a = EditShapefileAttrs(input_file)
a.filter_by_attrs('group', 'z')



#for feature in layer:
#	print feature.GetField('group')
#	if feature.GetField('group') is None:
#		feature.SetField('group', 'l')
#		layer.SetFeature(feature)