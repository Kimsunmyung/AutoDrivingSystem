# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from gps_c94_m8p/gps_data.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class gps_data(genpy.Message):
  _md5sum = "0e79e5fcae5f58ad42f8ae61b301f630"
  _type = "gps_c94_m8p/gps_data"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string getTime

int32 fixedstate

float64 latitude
float64 longitude
float64 altitude

float64 utm_x
float64 utm_y

float64 heading_rad
float64 heading_pi
float64 heading_degrees

float64 position_error"""
  __slots__ = ['getTime','fixedstate','latitude','longitude','altitude','utm_x','utm_y','heading_rad','heading_pi','heading_degrees','position_error']
  _slot_types = ['string','int32','float64','float64','float64','float64','float64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       getTime,fixedstate,latitude,longitude,altitude,utm_x,utm_y,heading_rad,heading_pi,heading_degrees,position_error

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(gps_data, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.getTime is None:
        self.getTime = ''
      if self.fixedstate is None:
        self.fixedstate = 0
      if self.latitude is None:
        self.latitude = 0.
      if self.longitude is None:
        self.longitude = 0.
      if self.altitude is None:
        self.altitude = 0.
      if self.utm_x is None:
        self.utm_x = 0.
      if self.utm_y is None:
        self.utm_y = 0.
      if self.heading_rad is None:
        self.heading_rad = 0.
      if self.heading_pi is None:
        self.heading_pi = 0.
      if self.heading_degrees is None:
        self.heading_degrees = 0.
      if self.position_error is None:
        self.position_error = 0.
    else:
      self.getTime = ''
      self.fixedstate = 0
      self.latitude = 0.
      self.longitude = 0.
      self.altitude = 0.
      self.utm_x = 0.
      self.utm_y = 0.
      self.heading_rad = 0.
      self.heading_pi = 0.
      self.heading_degrees = 0.
      self.position_error = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.getTime
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i9d().pack(_x.fixedstate, _x.latitude, _x.longitude, _x.altitude, _x.utm_x, _x.utm_y, _x.heading_rad, _x.heading_pi, _x.heading_degrees, _x.position_error))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.getTime = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.getTime = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.fixedstate, _x.latitude, _x.longitude, _x.altitude, _x.utm_x, _x.utm_y, _x.heading_rad, _x.heading_pi, _x.heading_degrees, _x.position_error,) = _get_struct_i9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.getTime
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i9d().pack(_x.fixedstate, _x.latitude, _x.longitude, _x.altitude, _x.utm_x, _x.utm_y, _x.heading_rad, _x.heading_pi, _x.heading_degrees, _x.position_error))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.getTime = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.getTime = str[start:end]
      _x = self
      start = end
      end += 76
      (_x.fixedstate, _x.latitude, _x.longitude, _x.altitude, _x.utm_x, _x.utm_y, _x.heading_rad, _x.heading_pi, _x.heading_degrees, _x.position_error,) = _get_struct_i9d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i9d = None
def _get_struct_i9d():
    global _struct_i9d
    if _struct_i9d is None:
        _struct_i9d = struct.Struct("<i9d")
    return _struct_i9d