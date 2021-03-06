ULP_REALTIME_PATH=$HOME/esp/ulp-realtime/
ESP_IDF_PATH=$HOME/esp/pycom-esp-idf/
ESP32_PATH=$HOME/esp/pycom-micropython-sigfox/esp32/

# Copy files generated by ulp-realtime automation tool

cp -v $ULP_REALTIME_PATH/output/ulp_realtime.S ~/esp/pycom-esp-idf/components/ulptest/ulp/
cp -v $ULP_REALTIME_PATH/output/main.c ~/esp/pycom-esp-idf/components/ulptest/

# Build the components as a helloworld project

make all

# Copy the ULP's symbol file into ulptest
cp -v ./build/ulptest/ulp_ulptest.ld $ESP_IDF_PATH/components/ulptest/ulp_ulptest.ld

# Copy the sdkconfig and static libraries of components into PYCOM's micropython/esp32/lib/

cp -v ./build/include/sdkconfig.h $ESP32_PATH

cp -v ./build/bootloader/bootloader_support/libbootloader_support.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/log/liblog.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/micro-ecc/libmicro-ecc.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/soc/libsoc.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/spi_flash/libspi_flash.a $ESP32_PATH/bootloader/lib/

cp -v ./build/bt/libbt.a $ESP32_PATH/lib/
cp -v ./build/cxx/libcxx.a $ESP32_PATH/lib/
cp -v ./build/driver/libdriver.a $ESP32_PATH/lib/
cp -v ./build/esp32/libesp32.a $ESP32_PATH/lib/
cp -v ./build/expat/libexpat.a $ESP32_PATH/lib/
cp -v ./build/freertos/libfreertos.a $ESP32_PATH/lib/
cp -v ./build/jsmn/libjsmn.a $ESP32_PATH/lib/
cp -v ./build/json/libjson.a $ESP32_PATH/lib/
cp -v ./build/log/liblog.a $ESP32_PATH/lib/
cp -v ./build/lwip/liblwip.a $ESP32_PATH/lib/
cp -v ./build/mbedtls/libmbedtls.a $ESP32_PATH/lib/
cp -v ./build/micro-ecc/libmicro-ecc.a $ESP32_PATH/lib/
cp -v ./build/newlib/libnewlib.a $ESP32_PATH/lib/
cp -v ./build/nghttp/libnghttp.a $ESP32_PATH/lib/
cp -v ./build/nvs_flash/libnvs_flash.a $ESP32_PATH/lib/
cp -v ./build/openssl/libopenssl.a $ESP32_PATH/lib/
cp -v ./build/sdmmc/libsdmmc.a $ESP32_PATH/lib/
cp -v ./build/soc/libsoc.a $ESP32_PATH/lib/
cp -v ./build/spi_flash/libspi_flash.a $ESP32_PATH/lib/
cp -v ./build/tcpip_adapter/libtcpip_adapter.a $ESP32_PATH/lib/
cp -v ./build/vfs/libvfs.a $ESP32_PATH/lib/
cp -v ./build/wpa_supplicant/libwpa_supplicant.a $ESP32_PATH/lib/
cp -v ./build/xtensa-debug-module/libxtensa-debug-module.a $ESP32_PATH/lib/
cp -v ./build/ulp/libulp.a $ESP32_PATH/lib/
cp -v ./build/ulptest/libulptest.a $ESP32_PATH/lib/
