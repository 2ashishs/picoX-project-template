# receive project name as argument
PROJECT_NAME=$1
DEVICE_VARIANT="${2:-2}"
# create a folder with project name & cd into it
mkdir -p ./$PROJECT_NAME
cd ./$PROJECT_NAME
# create a .c file with project name
SRC_FILE=${PROJECT_NAME}.c
touch $SRC_FILE
echo "#include <stdio.h>" >> $SRC_FILE
echo "#include \"pico/stdlib.h\"" >> $SRC_FILE
echo "" >> $SRC_FILE
echo "int main() {" >> $SRC_FILE
echo "    stdio_init_all();" >> $SRC_FILE
echo "    //Code here" >> $SRC_FILE
echo "    " >> $SRC_FILE
echo "    return 0;" >> $SRC_FILE
echo "}" >> $SRC_FILE
# Copy necessary .cmake files
cp ${PICO_SDK_PATH}/external/pico_sdk_import.cmake .
cp ${PICO_EXTRAS_PATH}/external/pico_extras_import.cmake .
cp ${FREERTOS_KERNEL_PATH}/portable/ThirdParty/GCC/RP2040/FreeRTOS_Kernel_import.cmake .
cp ${PICO_PROJECT_TEMPLATE_PATH}/CMakeLists.txt .
# Create a CMakeLists.txt file for the project
sed -i "s/my_program/$PROJECT_NAME/g" CMakeLists.txt
# build a do script
cp ${PICO_PROJECT_TEMPLATE_PATH}/do .
if [ "$(printf '%s' "$DEVICE_VARIANT" | tr '[:upper:]' '[:lower:]')" = "2w" ]; then
	cp ${PICO_PROJECT_TEMPLATE_PATH}/do_2w ./do
	cp ${PICO_EXAMPLES_PATH}/pico_w/wifi/lwipopts_examples_common.h ./lwipopts.h
	sed -i "s/_LWIPOPTS_EXAMPLE_COMMONH_H/_LWIPOPTS_H/g" lwipopts.h
elif [ "$(printf '%s' "$DEVICE_VARIANT" | tr '[:upper:]' '[:lower:]')" = "2" ]; then
	cp ${PICO_PROJECT_TEMPLATE_PATH}/do_2 ./do
elif [ "$(printf '%s' "$DEVICE_VARIANT" | tr '[:upper:]' '[:lower:]')" = "w" ]; then
	cp ${PICO_PROJECT_TEMPLATE_PATH}/do_1w ./do
	cp ${PICO_EXAMPLES_PATH}/pico_w/wifi/lwipopts_examples_common.h ./lwipopts.h
	sed -i "s/_LWIPOPTS_EXAMPLE_COMMONH_H/_LWIPOPTS_H/g" lwipopts.h
else
	cp ${PICO_PROJECT_TEMPLATE_PATH}/do_1 ./do
fi
