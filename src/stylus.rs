//! Definitions of the vm_hooks provided by Stylus

#[link(wasm_import_module = "vm_hooks")]
extern "C" {
    /// The `entrypoint!` macro handles importing this hostio, which is required if the
    /// program's memory grows. Otherwise compilation through the `ArbWasm` precompile will revert.
    /// Internally the Stylus VM forces calls to this hostio whenever new WASM pages are allocated.
    /// Calls made voluntarily will unproductively consume gas.
    #[allow(dead_code)]
    pub fn memory_grow(pages: u16);
}


/// This function exists to force the compiler to import this symbol.
/// do not actually call it ever
#[no_mangle]
pub unsafe extern "C" fn call_memory_grow(pages: u16) {
    unsafe { memory_grow(pages) }
}


#[allow(dead_code)]
#[link(wasm_import_module = "console")]
extern "C" {
    /// Prints a 32-bit integer to the console, which can be either signed or unsigned.
    /// Only available in debug mode.
    pub fn log_i32(value: i32);

    /// Prints a 64-bit integer to the console, which can be either signed or unsigned.
    /// Only available in debug mode.
    pub fn log_i64(value: i64);

    /// Prints a UTF-8 encoded string to the console. Only available in debug mode.
    pub fn log_txt(text: *const u8, len: usize);
}
