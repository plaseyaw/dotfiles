function mmount --wraps='udisksctl mount -b /dev/sdb1' --description 'alias mmount udisksctl mount -b /dev/sdb1'
    udisksctl mount -b /dev/sdb1 $argv
end
