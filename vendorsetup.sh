echo 'Starting to clone stuffs needed for your device'

echo 'Cloning Vendor tree'
# Vendor Tree
rm -rf vendor/xiaomi && git clone https://github.com/vastolorde007/vendor_xiaomi.git vendor/xiaomi

echo 'Cloning Kernel tree'
# Kernel Tree
rm -rf kernel/xiaomi/mido && git clone https://github.com/vastolorde007/kernel_mido.git kernel/xiaomi/mido

echo 'Cloning Custom clang'
# Proton Clang
git clone https://github.com/vastolorde007/proton-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-proton

echo 'Cloning bluetooth packages'
# Bluetooth package for BT calling
rm -rf packages/modules/Bluetooth && git clone https://github.com/zeelog/packages_modules_Bluetooth.git packages/modules/Bluetooth

echo 'Cloning radio packages'
# Aosp FM
rm -rf vendor/qcom/opensource/fm-commonsys && git clone https://github.com/LineageOS/android_vendor_qcom_opensource_fm-commonsys.git vendor/qcom/opensource/fm-commonsys
rm -rf packages/apps/FMRadio && git clone https://github.com/LineageOS/android_packages_apps_FMRadio.git packages/apps/FMRadio
rm -rf vendor/qcom/opensource/libfmjni && git clone https://github.com/LineageOS/android_vendor_qcom_opensource_libfmjni.git vendor/qcom/opensource/libfmjni

echo 'Completed cloning your trees, proceed with lunch Command'
