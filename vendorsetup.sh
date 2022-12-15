echo 'Starting to clone stuffs needed for your device'

echo 'Cloning Vendor tree'
# Vendor Tree
rm -rf vendor/xiaomi && git clone https://github.com/vastolorde007/vendor_xiaomi.git vendor/xiaomi

echo 'Cloning Kernel tree'
# Kernel Tree
rm -rf kernel/xiaomi/mido && git clone https://github.com/Nicklas373/kernel_xiaomi_msm8953-4.9.git kernel/xiaomi/mido

echo 'Cloning Custom clang'
# Proton Clang
git clone https://github.com/vastolorde007/proton-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-proton

echo 'Cloning bluetooth packages'
# Bluetooth package for BT calling
cd packages/modules/Bluetooth

git fetch https://github.com/vastolorde007/packages_modules_Bluetooth.git && git cherry-pick 6a8588c0db76c9acec103ce6292d186063a97335

echo 'Cloning radio packages'
# Aosp FM
rm -rf vendor/qcom/opensource/fm-commonsys && git clone https://github.com/LineageOS/android_vendor_qcom_opensource_fm-commonsys.git vendor/qcom/opensource/fm-commonsys
rm -rf packages/apps/FMRadio && git clone https://github.com/LineageOS/android_packages_apps_FMRadio.git packages/apps/FMRadio
rm -rf vendor/qcom/opensource/libfmjni && git clone https://github.com/LineageOS/android_vendor_qcom_opensource_libfmjni.git vendor/qcom/opensource/libfmjni

echo 'Cloning lineage OS Gallery'
rm -rf packages/apps/Gallery && git clone https://github.com/LineageOS/android_packages_apps_Gallery2.git -b lineage-20.0 packages/apps/Gallery2

echo 'Completed cloning your trees, proceed with lunch Command'
