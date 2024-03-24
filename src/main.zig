const std = @import("std");

pub fn main() !void {
    var buffer = std.mem.zeroes([30_000]u8);
    var pointer: *u8 = &buffer[0];

    inc_ptr_by(pointer);

    //<CODE>
}

fn dec_val_by(pointer: [*]const u8, val: u8) void {
    pointer.* = pointer.* - val;
}

fn inc_val_by(pointer: [*]const u8, val: u8) void {
    pointer.* = pointer.* + val;
}

fn dec_ptr_by(pointer: [*]u8, val: u8) void {
    pointer -= val;
}

fn inc_ptr_by(pointer: *u8) void {
    //val = _;
    pointer += 1;
}

fn inc_ptr_by1(pointer: *u8, val: u8) void {
    pointer += val;
}

fn clear(pointer: [*]const u8) void {
    pointer.* = 0;
}

fn mul_val_by(pointer: [*]const u8, offset: isize, val: u8) void {
    (pointer - offset).* = pointer.* * val;
}

fn print(pointer: [*]const u8) void {
    std.io.getStdOut().write(pointer.*, 1);
}
