#! /bin/bash
SRC_DIR=${HOME}/work/docs-ja-scrapy/docs/locale/ja/LC_MESSAGES/
DST_POT_DIR=${HOME}/work/scrapy-docs-ja/docs/_build/gettext/
DST_DIR=${HOME}/work/scrapy-docs-ja/docs/locale/ja/LC_MESSAGES/
find  ${SRC_DIR} -name "*.po" -printf "%P\n" | while read src_file_name 
do
    # echo "------------"
    # echo ${SRC_DIR}${src_file_name}
    # echo ${DST_POT_DIR}${src_file_name/.po/.pot}
    # echo ${DST_DIR}${src_file_name}
    msgmerge -v --previous -o ${DST_DIR}${src_file_name} ${SRC_DIR}${src_file_name} ${DST_POT_DIR}${src_file_name/.po/.pot}
done
