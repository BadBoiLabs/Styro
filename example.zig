pub extern "vm_hooks" fn memory_grow(len: u32) void;

export fn mark_unused() void {
    memory_grow(0);
    @panic("");
}

// The main entrypoint to use for execution of the Stylus WASM program.
export fn user_entrypoint(len: usize) i32 {
    _ = len;
    return 0;
}
