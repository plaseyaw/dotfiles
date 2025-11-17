function umnt --wraps='umount /dev/sdb1' --description 'alias umnt umount /dev/sdb1'
    umount /dev/sdb1 $argv
end
