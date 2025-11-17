function mvlc --wraps='cvlc -I --lua-intf cli -Z' --wraps='cvlc -I luaintf --lua-intf cli -Z' --description 'alias mvlc cvlc -I luaintf --lua-intf cli -Z'
    cvlc -I luaintf --lua-intf cli -Z $argv
end
