echo 'Starting to clone stuffs needed for your device'

echo 'Cloning Vendor tree'
# Vendor Tree
rm -rf vendor/xiaomi && git clone https://github.com/vastolorde007/vendor_xiaomi.git vendor/xiaomi

echo 'Cloning Kernel tree'
# Kernel Tree
rm -rf kernel/xiaomi/mido && git clone https://github.com/vastolorde007/kernel_xiaomi_mido.git kernel/xiaomi/mido

echo 'Cloning Custom clang'
# Proton Clang
git clone https://github.com/vastolorde007/proton-clang.git --depth=1 prebuilts/clang/host/linux-x86/clang-proton

echo 'Completed cloning your trees, proceed with lunch Command'
