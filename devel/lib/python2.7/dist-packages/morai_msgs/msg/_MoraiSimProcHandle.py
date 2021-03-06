# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from morai_msgs/MoraiSimProcHandle.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MoraiSimProcHandle(genpy.Message):
  _md5sum = "80911c0c1a20c061dd0bcd9fc1c7ad6b"
  _type = "morai_msgs/MoraiSimProcHandle"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 sim_process_mode
uint8 sim_process_status

int16 replay_option
string rosbag_file_name
int16 replay_target_option

int32 replay_speed
int32 start_time
"""
  __slots__ = ['sim_process_mode','sim_process_status','replay_option','rosbag_file_name','replay_target_option','replay_speed','start_time']
  _slot_types = ['uint8','uint8','int16','string','int16','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       sim_process_mode,sim_process_status,replay_option,rosbag_file_name,replay_target_option,replay_speed,start_time

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MoraiSimProcHandle, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.sim_process_mode is None:
        self.sim_process_mode = 0
      if self.sim_process_status is None:
        self.sim_process_status = 0
      if self.replay_option is None:
        self.replay_option = 0
      if self.rosbag_file_name is None:
        self.rosbag_file_name = ''
      if self.replay_target_option is None:
        self.replay_target_option = 0
      if self.replay_speed is None:
        self.replay_speed = 0
      if self.start_time is None:
        self.start_time = 0
    else:
      self.sim_process_mode = 0
      self.sim_process_status = 0
      self.replay_option = 0
      self.rosbag_file_name = ''
      self.replay_target_option = 0
      self.replay_speed = 0
      self.start_time = 0

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
      buff.write(_get_struct_2Bh().pack(_x.sim_process_mode, _x.sim_process_status, _x.replay_option))
      _x = self.rosbag_file_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_h2i().pack(_x.replay_target_option, _x.replay_speed, _x.start_time))
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
      end += 4
      (_x.sim_process_mode, _x.sim_process_status, _x.replay_option,) = _get_struct_2Bh().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rosbag_file_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rosbag_file_name = str[start:end]
      _x = self
      start = end
      end += 10
      (_x.replay_target_option, _x.replay_speed, _x.start_time,) = _get_struct_h2i().unpack(str[start:end])
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
      buff.write(_get_struct_2Bh().pack(_x.sim_process_mode, _x.sim_process_status, _x.replay_option))
      _x = self.rosbag_file_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_h2i().pack(_x.replay_target_option, _x.replay_speed, _x.start_time))
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
      end += 4
      (_x.sim_process_mode, _x.sim_process_status, _x.replay_option,) = _get_struct_2Bh().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.rosbag_file_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.rosbag_file_name = str[start:end]
      _x = self
      start = end
      end += 10
      (_x.replay_target_option, _x.replay_speed, _x.start_time,) = _get_struct_h2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Bh = None
def _get_struct_2Bh():
    global _struct_2Bh
    if _struct_2Bh is None:
        _struct_2Bh = struct.Struct("<2Bh")
    return _struct_2Bh
_struct_h2i = None
def _get_struct_h2i():
    global _struct_h2i
    if _struct_h2i is None:
        _struct_h2i = struct.Struct("<h2i")
    return _struct_h2i
