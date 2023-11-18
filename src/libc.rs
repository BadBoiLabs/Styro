
#[no_mangle]
pub unsafe extern "C" fn realloc(_ptr: i32, _size: i64) -> i32 {
    0
}

#[no_mangle]
pub unsafe extern "C" fn puts(_ptr: i32) {
    // do nothing for now
}

#[no_mangle]
pub unsafe extern "C" fn abort() {
    // TODO: abort in a Stylus expected way
    // do nothing for now
}
