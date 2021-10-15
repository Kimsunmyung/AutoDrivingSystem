# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cardriver/control_rx.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class control_rx(genpy.Message):
  _md5sum = "0da4322d997508756a375365d6879e43"
  _type = "cardriver/control_rx"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 car_connected
int32 steer_degree
int32 steer_raw
int32 steer_limit_left
int32 steer_limit_center
int32 steer_limit_right
int32 rotor_hall
int32 rotor_hall_l
int32 rotor_hall_r
int32 voltage
int32 current_charging
int32 current_discharging
int32 drv_temperature
int32 car_vector
int32 car_lamp
int32 car_signal
int32 car_solidbrk
int32 embed_custom_a
int32 embed_custom_b"""
  __slots__ = ['car_connected','steer_degree','steer_raw','steer_limit_left','steer_limit_center','steer_limit_right','rotor_hall','rotor_hall_l','rotor_hall_r','voltage','current_charging','current_discharging','drv_temperature','car_vector','car_lamp','car_signal','car_solidbrk','embed_custom_a','embed_custom_b']
  _slot_types = ['int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       car_connected,steer_degree,steer_raw,steer_limit_left,steer_limit_center,steer_limit_right,rotor_hall,rotor_hall_l,rotor_hall_r,voltage,current_charging,current_discharging,drv_temperature,car_vector,car_lamp,car_signal,car_solidbrk,embed_custom_a,embed_custom_b

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(control_rx, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.car_connected is None:
        self.car_connected = 0
      if self.steer_degree is None:
        self.steer_degree = 0
      if self.steer_raw is None:
        self.steer_raw = 0
      if self.steer_limit_left is None:
        self.steer_limit_left = 0
      if self.steer_limit_center is None:
        self.steer_limit_center = 0
      if self.steer_limit_right is None:
        self.steer_limit_right = 0
      if self.rotor_hall is None:
        self.rotor_hall = 0
      if self.rotor_hall_l is None:
        self.rotor_hall_l = 0
      if self.rotor_hall_r is None:
        self.rotor_hall_r = 0
      if self.voltage is None:
        self.voltage = 0
      if self.current_charging is None:
        self.current_charging = 0
      if self.current_discharging is None:
        self.current_discharging = 0
      if self.drv_temperature is None:
        self.drv_temperature = 0
      if self.car_vector is None:
        self.car_vector = 0
      if self.car_lamp is None:
        self.car_lamp = 0
      if self.car_signal is None:
        self.car_signal = 0
      if self.car_solidbrk is None:
        self.car_solidbrk = 0
      if self.embed_custom_a is None:
        self.embed_custom_a = 0
      if self.embed_custom_b is None:
        self.embed_custom_b = 0
    else:
      self.car_connected = 0
      self.steer_degree = 0
      self.steer_raw = 0
      self.steer_limit_left = 0
      self.steer_limit_center = 0
      self.steer_limit_right = 0
      self.rotor_hall = 0
      self.rotor_hall_l = 0
      self.rotor_hall_r = 0
      self.voltage = 0
      self.current_charging = 0
      self.current_discharging = 0
      self.drv_temperature = 0
      self.car_vector = 0
      self.car_lamp = 0
      self.car_signal = 0
      self.car_solidbrk = 0
      self.embed_custom_a = 0
      self.embed_custom_b = 0

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
      _x = self
      buff.write(_get_struct_19i().pack(_x.car_connected, _x.steer_degree, _x.steer_raw, _x.steer_limit_left, _x.steer_limit_center, _x.steer_limit_right, _x.rotor_hall, _x.rotor_hall_l, _x.rotor_hall_r, _x.voltage, _x.current_charging, _x.current_discharging, _x.drv_temperature, _x.car_vector, _x.car_lamp, _x.car_signal, _x.car_solidbrk, _x.embed_custom_a, _x.embed_custom_b))
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
      _x = self
      start = end
      end += 76
      (_x.car_connected, _x.steer_degree, _x.steer_raw, _x.steer_limit_left, _x.steer_limit_center, _x.steer_limit_right, _x.rotor_hall, _x.rotor_hall_l, _x.rotor_hall_r, _x.voltage, _x.current_charging, _x.current_discharging, _x.drv_temperature, _x.car_vector, _x.car_lamp, _x.car_signal, _x.car_solidbrk, _x.embed_custom_a, _x.embed_custom_b,) = _get_struct_19i().unpack(str[start:end])
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
      _x = self
      buff.write(_get_struct_19i().pack(_x.car_connected, _x.steer_degree, _x.steer_raw, _x.steer_limit_left, _x.steer_limit_center, _x.steer_limit_right, _x.rotor_hall, _x.rotor_hall_l, _x.rotor_hall_r, _x.voltage, _x.current_charging, _x.current_discharging, _x.drv_temperature, _x.car_vector, _x.car_lamp, _x.car_signal, _x.car_solidbrk, _x.embed_custom_a, _x.embed_custom_b))
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
      _x = self
      start = end
      end += 76
      (_x.car_connected, _x.steer_degree, _x.steer_raw, _x.steer_limit_left, _x.steer_limit_center, _x.steer_limit_right, _x.rotor_hall, _x.rotor_hall_l, _x.rotor_hall_r, _x.voltage, _x.current_charging, _x.current_discharging, _x.drv_temperature, _x.car_vector, _x.car_lamp, _x.car_signal, _x.car_solidbrk, _x.embed_custom_a, _x.embed_custom_b,) = _get_struct_19i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_19i = None
def _get_struct_19i():
    global _struct_19i
    if _struct_19i is None:
        _struct_19i = struct.Struct("<19i")
    return _struct_19i