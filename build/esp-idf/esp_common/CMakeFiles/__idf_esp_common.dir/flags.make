# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# compile C with /home/tassio/.espressif/tools/xtensa-esp32-elf/esp-12.2.0_20230208/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc
C_DEFINES = -DESP_PLATFORM -DIDF_VER=\"v5.1.1-dirty\" -DMBEDTLS_CONFIG_FILE=\"mbedtls/esp_config.h\" -DSOC_MMU_PAGE_SIZE=CONFIG_MMU_PAGE_SIZE -D_GNU_SOURCE -D_POSIX_READER_WRITER_LOCKS

C_INCLUDES = -I/home/tassio/Documents/Esp32-C-code/build/config -I/home/tassio/esp/esp-idf/components/esp_common/include -I/home/tassio/esp/esp-idf/components/newlib/platform_include -I/home/tassio/esp/esp-idf/components/freertos/FreeRTOS-Kernel/include -I/home/tassio/esp/esp-idf/components/freertos/FreeRTOS-Kernel/portable/xtensa/include -I/home/tassio/esp/esp-idf/components/freertos/esp_additions/include/freertos -I/home/tassio/esp/esp-idf/components/freertos/esp_additions/include -I/home/tassio/esp/esp-idf/components/freertos/esp_additions/arch/xtensa/include -I/home/tassio/esp/esp-idf/components/esp_hw_support/include -I/home/tassio/esp/esp-idf/components/esp_hw_support/include/soc -I/home/tassio/esp/esp-idf/components/esp_hw_support/include/soc/esp32 -I/home/tassio/esp/esp-idf/components/esp_hw_support/port/esp32/. -I/home/tassio/esp/esp-idf/components/esp_hw_support/port/esp32/private_include -I/home/tassio/esp/esp-idf/components/heap/include -I/home/tassio/esp/esp-idf/components/log/include -I/home/tassio/esp/esp-idf/components/soc/include -I/home/tassio/esp/esp-idf/components/soc/esp32 -I/home/tassio/esp/esp-idf/components/soc/esp32/include -I/home/tassio/esp/esp-idf/components/hal/esp32/include -I/home/tassio/esp/esp-idf/components/hal/include -I/home/tassio/esp/esp-idf/components/hal/platform_port/include -I/home/tassio/esp/esp-idf/components/esp_rom/include -I/home/tassio/esp/esp-idf/components/esp_rom/include/esp32 -I/home/tassio/esp/esp-idf/components/esp_rom/esp32 -I/home/tassio/esp/esp-idf/components/esp_system/include -I/home/tassio/esp/esp-idf/components/esp_system/port/soc -I/home/tassio/esp/esp-idf/components/esp_system/port/include/private -I/home/tassio/esp/esp-idf/components/xtensa/include -I/home/tassio/esp/esp-idf/components/xtensa/esp32/include -I/home/tassio/esp/esp-idf/components/lwip/include -I/home/tassio/esp/esp-idf/components/lwip/include/apps -I/home/tassio/esp/esp-idf/components/lwip/include/apps/sntp -I/home/tassio/esp/esp-idf/components/lwip/lwip/src/include -I/home/tassio/esp/esp-idf/components/lwip/port/include -I/home/tassio/esp/esp-idf/components/lwip/port/freertos/include -I/home/tassio/esp/esp-idf/components/lwip/port/esp32xx/include -I/home/tassio/esp/esp-idf/components/lwip/port/esp32xx/include/arch -I/home/tassio/esp/esp-idf/components/driver/include -I/home/tassio/esp/esp-idf/components/driver/deprecated -I/home/tassio/esp/esp-idf/components/driver/analog_comparator/include -I/home/tassio/esp/esp-idf/components/driver/dac/include -I/home/tassio/esp/esp-idf/components/driver/gpio/include -I/home/tassio/esp/esp-idf/components/driver/gptimer/include -I/home/tassio/esp/esp-idf/components/driver/i2c/include -I/home/tassio/esp/esp-idf/components/driver/i2s/include -I/home/tassio/esp/esp-idf/components/driver/ledc/include -I/home/tassio/esp/esp-idf/components/driver/mcpwm/include -I/home/tassio/esp/esp-idf/components/driver/parlio/include -I/home/tassio/esp/esp-idf/components/driver/pcnt/include -I/home/tassio/esp/esp-idf/components/driver/rmt/include -I/home/tassio/esp/esp-idf/components/driver/sdio_slave/include -I/home/tassio/esp/esp-idf/components/driver/sdmmc/include -I/home/tassio/esp/esp-idf/components/driver/sigma_delta/include -I/home/tassio/esp/esp-idf/components/driver/spi/include -I/home/tassio/esp/esp-idf/components/driver/temperature_sensor/include -I/home/tassio/esp/esp-idf/components/driver/touch_sensor/include -I/home/tassio/esp/esp-idf/components/driver/twai/include -I/home/tassio/esp/esp-idf/components/driver/uart/include -I/home/tassio/esp/esp-idf/components/driver/usb_serial_jtag/include -I/home/tassio/esp/esp-idf/components/driver/touch_sensor/esp32/include -I/home/tassio/esp/esp-idf/components/esp_pm/include -I/home/tassio/esp/esp-idf/components/esp_ringbuf/include -I/home/tassio/esp/esp-idf/components/esp_adc/include -I/home/tassio/esp/esp-idf/components/esp_adc/interface -I/home/tassio/esp/esp-idf/components/esp_adc/esp32/include -I/home/tassio/esp/esp-idf/components/esp_adc/deprecated/include -I/home/tassio/esp/esp-idf/components/efuse/include -I/home/tassio/esp/esp-idf/components/efuse/esp32/include -I/home/tassio/esp/esp-idf/components/esp_http_client/include -I/home/tassio/esp/esp-idf/components/esp_event/include -I/home/tassio/esp/esp-idf/components/esp_http_server/include -I/home/tassio/esp/esp-idf/components/http_parser -I/home/tassio/esp/esp-idf/components/bootloader_support/include -I/home/tassio/esp/esp-idf/components/bootloader_support/bootloader_flash/include -I/home/tassio/esp/esp-idf/components/nvs_flash/include -I/home/tassio/esp/esp-idf/components/spi_flash/include -I/home/tassio/esp/esp-idf/components/esp_partition/include -I/home/tassio/esp/esp-idf/components/esp_wifi/include -I/home/tassio/esp/esp-idf/components/esp_wifi/wifi_apps/include -I/home/tassio/esp/esp-idf/components/esp_phy/include -I/home/tassio/esp/esp-idf/components/esp_phy/esp32/include -I/home/tassio/esp/esp-idf/components/esp_netif/include -I/home/tassio/esp/esp-idf/components/app_update/include -I/home/tassio/esp/esp-idf/components/esp_app_format/include -I/home/tassio/esp/esp-idf/components/wpa_supplicant/include -I/home/tassio/esp/esp-idf/components/wpa_supplicant/port/include -I/home/tassio/esp/esp-idf/components/wpa_supplicant/esp_supplicant/include -I/home/tassio/esp/esp-idf/components/esp-tls -I/home/tassio/esp/esp-idf/components/esp-tls/esp-tls-crypto -I/home/tassio/esp/esp-idf/components/mbedtls/port/include -I/home/tassio/esp/esp-idf/components/mbedtls/mbedtls/include -I/home/tassio/esp/esp-idf/components/mbedtls/mbedtls/library -I/home/tassio/esp/esp-idf/components/mbedtls/esp_crt_bundle/include -I/home/tassio/esp/esp-idf/components/esp_https_ota/include

C_FLAGS = -mlongcalls -Wno-frame-address  -fdiagnostics-color=always -ffunction-sections -fdata-sections -Wall -Werror=all -Wno-error=unused-function -Wno-error=unused-variable -Wno-error=unused-but-set-variable -Wno-error=deprecated-declarations -Wextra -Wno-unused-parameter -Wno-sign-compare -Wno-enum-conversion -gdwarf-4 -ggdb -Og -fmacro-prefix-map=/home/tassio/Documents/Esp32-C-code=. -fmacro-prefix-map=/home/tassio/esp/esp-idf=/IDF -fstrict-volatile-bitfields -fno-jump-tables -fno-tree-switch-conversion -DconfigENABLE_FREERTOS_DEBUG_OCDAWARE=1 -std=gnu17 -Wno-old-style-declaration

