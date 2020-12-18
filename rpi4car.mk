$(call inherit-product, $(LOCAL_PATH)/device.mk)
$(call inherit-product, packages/services/Car/car_product/build/car.mk)

PRODUCT_NAME := rpi4car
PRODUCT_DEVICE := rpi4
PRODUCT_BRAND := arpi
PRODUCT_MANUFACTURER := ARP
PRODUCT_MODEL := Raspberry Pi 4
PRODUCT_CHARACTERISTICS := car

PRODUCT_PACKAGES += \
    Gear


#Automotive
PRODUCT_PACKAGES += \
	android.hardware.automotive.vehicle@2.0-service

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.type.automotive.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.type.automotive.xml \
	frameworks/native/data/etc/android.hardware.screen.landscape.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.screen.landscape.xml \
    frameworks/native/data/etc/android.software.activities_on_secondary_displays.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.activities_on_secondary_displays.xml

PRODUCT_SYSTEM_SERVER_JARS += car-frameworks-service

PRODUCT_PROPERTY_OVERRIDES += \
	android.car.drawer.unlimited=true \
	android.car.hvac.demo=true \
	com.android.car.radio.demo=true \
	com.android.car.radio.demo.dual=true

PRODUCT_PACKAGES += \
    Gear \

PRODUCT_PACKAGES += \
    vehicle.default \
    GearApp \
    CarGearApp \
    CarSettings \
    CarLauncher \
    CarService \
    CarTrustAgentService \
    android.hardware.automotive.vehicle@2.0-service \
    CarDialerApp \
    CarRadioApp \
    OverviewApp \
    CarLensPickerApp \
    LocalMediaPlayer \
    CarMediaApp \
    CarMessengerApp \
    CarHvacApp \
    CarMapsPlaceholder \
    CarLatinIME \
    CarUsbHandler \
    DirectRenderingCluster \
    android.car \
    car-frameworks-service \
    com.android.car.procfsinspector \
    libcar-framework-service-jni \
    NoCutoutOverlay