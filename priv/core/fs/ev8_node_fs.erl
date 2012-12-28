-module(ev8_node_fs).

-include_lib("kernel/include/file.hrl").

-export([
  statSync/2,
  readFile/2
  ]).

% TODO missing blocks and blk_size
statSync(_, [Path]) ->
  {ok, #file_info{
      major_device = Device,
      inode = Inode,
      mode = Mode,
      links = Links,
      uid = Uid,
      gid = Gid,
      minor_device = MinorDevice,
      size = Size,
      atime = Atime,
      mtime = Mtime,
      ctime = Ctime
      }} = file:read_file_info(Path, [{time, posix}]),

  {struct, [{<<"dev">>, Device},
            {<<"ino">>, Inode},
            {<<"mode">>, Mode},
            {<<"nlink">>, Links},
            {<<"uid">>, Uid},
            {<<"gid">>, Gid},
            {<<"rdev">>, MinorDevice},
            {<<"size">>, Size},
            {<<"atime">>, {date, Atime}},
            {<<"mtime">>, {date, Mtime}},
            {<<"ctime">>, {date, Ctime}}
           ]}.

% TODO make this async and pass an event
readFile({Context, _This}, [Path, _Encoding, Callback]) ->
  {ok, Contents} = file:read_file(Path),

  ev8:call(Context, Callback, [null, Contents]).
