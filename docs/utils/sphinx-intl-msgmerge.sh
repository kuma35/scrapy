#!/bin/bash
CMDNAME=`basename $0`
if [ $# -ne 3 ]; then
    echo "Usage: $CMDNAME src_po_dir dst_pot_dir dst_po_dir(output_dir)" 1>&2
    echo "src_po_dir: a_sphinx_folder/locale/ja/LC_MESSAGES" 1>&2
    echo "dst_pot_dir: now_sphinx_folder/_build/gettext" 1>&2
    echo "src_po_dir: now_sphinx_folder/locale/ja/LC_MESSAGES" 1>&2
  exit 1
fi


# SRC_DIR=${HOME%/}/work/docs-ja-scrapy/docs/locale/ja/LC_MESSAGES/
# DST_POT_DIR=${HOME%/}/work/scrapy-docs-ja/docs/_build/gettext/
# DST_DIR=${HOME%/}/work/scrapy-docs-ja/docs/locale/ja/LC_MESSAGES/
SRC_DIR=$1
DST_POT_DIR=$2
DST_DIR=$3
find  ${SRC_DIR} -name "*.po" -printf "%P\n" | while read src_file_name 
do
    # echo "------------"
    # echo ${SRC_DIR}${src_file_name}
    # echo ${DST_POT_DIR}${src_file_name/.po/.pot}
    # echo ${DST_DIR}${src_file_name}
    msgmerge -v --previous -o "${DST_DIR%/}/${src_file_name}" "${SRC_DIR%/}/${src_file_name}" "${DST_POT_DIR%/}/${src_file_name/.po/.pot}"
done
