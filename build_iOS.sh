function wrbase() {
  cd trunk
  export GYP_DEFINES="build_with_libjingle=1 build_with_chromium=0 libjingle_objc=1"
  export GYP_GENERATORS="ninja"
}

function wrios() {
  wrbase
  export GYP_DEFINES="$GYP_DEFINES OS=ios target_arch=armv7"
  export GYP_GENERATOR_FLAGS="$GYP_GENERATOR_FLAGS output_dir=out_ios"
  export GYP_CROSSCOMPILE=1
}

wrios && gclient runhooks && ninja -C out_ios/Debug AppRTCDemo
