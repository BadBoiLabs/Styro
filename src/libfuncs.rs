use cairo_felt::Felt252;

use crate::stylus::log_txt;

/// Based on `cairo-lang-runner`'s implementation.
///
/// Source: <https://github.com/starkware-libs/cairo/blob/main/crates/cairo-lang-runner/src/casm_run/mod.rs#L1789-L1800>
///
/// # Safety
///
/// This function is intended to be called from MLIR, deals with pointers, and is therefore
/// definitely unsafe to use manually.
#[no_mangle]
pub unsafe extern "C" fn cairo_native__libfunc__debug__print(
    _target_fd: i32,
    data: *const [u8; 32],
    len: usize,
) -> i32 {
    for i in 0..len {
        let mut data = *data.add(i);
        data.reverse();
        let value = Felt252::from_bytes_be(&data);
        let string = format!("[DEBUG]\t{:<31}\t(raw: {})", ' ', value.to_bigint());
        log_txt(string.as_ptr(), string.len())
    }
    0
}


#[no_mangle]
pub unsafe extern "C" fn realloc(_ptr: i32, _size: i64) -> i32 {
    0
}
