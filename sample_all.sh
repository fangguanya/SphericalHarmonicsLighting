degree=3
samplenum=1000000
write_rendered="--write-rendered"
#write_rendered="--write-rendered"
#Debug/sampler.exe jpg 3 1000000 "--write-rendered"
for f in data/*
do 
    if [ -d "$f" ]; then
        echo "===== processing $f ====="
        Debug/sampler.exe $f jpg $degree $samplenum $write_rendered
    fi
done
