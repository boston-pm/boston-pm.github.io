#
# pandoc -s -o ext4magic.html --css pandoc.css   -f markdown  ext4magic.md 
# set -x
fn=$1; shift
echo ${fn%.*}
extensions="+pipe_tables"
flags="--title-prefix=Boston.pm --toc --toc-depth=1"
pandoc -s -o ${fn%.*}.html --css pandoc.css $flags -f markdown$extensions  ${fn%.*}.md 
# +implicit_header_references+auto_identifiers 
