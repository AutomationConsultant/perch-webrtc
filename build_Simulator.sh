function wrbase() {
  cd trunk
  export GYP_DEFINES="build_with_libjingle=1 build_with_chromium=0 libjingle_objc=1"
  export GYP_GENERATORS="ninja"
}

function wrsim() {
  wrbase
  export GYP_DEFINES="$GYP_DEFINES OS=ios target_arch=ia32"
  export GYP_GENERATOR_FLAGS="$GYP_GENERATOR_FLAGS output_dir=out_sim"
  export GYP_CROSSCOMPILE=1
}

wrsim && gclient runhooks && ninja -C out_sim/Debug iossim AppRTCDemo && \
      ./out_sim/Debug/iossim out_sim/Debug/AppRTCDemo.app
