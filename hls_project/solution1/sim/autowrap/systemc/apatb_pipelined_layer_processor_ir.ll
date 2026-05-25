; ModuleID = '/home/ali/Desktop/SystolicArray/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<256>" = type { %"struct.ap_int_base<256, false>" }
%"struct.ap_int_base<256, false>" = type { %"struct.ssdm_int<256, false>" }
%"struct.ssdm_int<256, false>" = type { i256 }

; Function Attrs: noinline
define void @apatb_pipelined_layer_processor_ir(%"struct.ap_uint<256>"* noalias nocapture nonnull readonly %mat_A, %"struct.ap_uint<256>"* noalias nocapture nonnull readonly %mat_B, %"struct.ap_uint<256>"* noalias nocapture nonnull %mat_C, i32 %num_row_tiles, i32 %num_depth_tiles, i32 %num_col_tiles) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 128000)
  %mat_A_copy = bitcast i8* %malloccall to [4000 x i256]*
  %malloccall1 = call i8* @malloc(i64 128000)
  %mat_B_copy = bitcast i8* %malloccall1 to [4000 x i256]*
  %malloccall2 = call i8* @malloc(i64 128000)
  %mat_C_copy = bitcast i8* %malloccall2 to [4000 x i256]*
  %0 = bitcast %"struct.ap_uint<256>"* %mat_A to [4000 x %"struct.ap_uint<256>"]*
  %1 = bitcast %"struct.ap_uint<256>"* %mat_B to [4000 x %"struct.ap_uint<256>"]*
  %2 = bitcast %"struct.ap_uint<256>"* %mat_C to [4000 x %"struct.ap_uint<256>"]*
  call fastcc void @copy_in([4000 x %"struct.ap_uint<256>"]* nonnull %0, [4000 x i256]* %mat_A_copy, [4000 x %"struct.ap_uint<256>"]* nonnull %1, [4000 x i256]* %mat_B_copy, [4000 x %"struct.ap_uint<256>"]* nonnull %2, [4000 x i256]* %mat_C_copy)
  %3 = getelementptr [4000 x i256], [4000 x i256]* %mat_A_copy, i32 0, i32 0
  %4 = getelementptr [4000 x i256], [4000 x i256]* %mat_B_copy, i32 0, i32 0
  %5 = getelementptr [4000 x i256], [4000 x i256]* %mat_C_copy, i32 0, i32 0
  call void @apatb_pipelined_layer_processor_hw(i256* %3, i256* %4, i256* %5, i32 %num_row_tiles, i32 %num_depth_tiles, i32 %num_col_tiles)
  call void @copy_back([4000 x %"struct.ap_uint<256>"]* %0, [4000 x i256]* %mat_A_copy, [4000 x %"struct.ap_uint<256>"]* %1, [4000 x i256]* %mat_B_copy, [4000 x %"struct.ap_uint<256>"]* %2, [4000 x i256]* %mat_C_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  call void @free(i8* %malloccall2)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([4000 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="0", [4000 x i256]* noalias nocapture "unpacked"="1.0.0.0", [4000 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="2", [4000 x i256]* noalias nocapture "unpacked"="3.0.0.0", [4000 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="4", [4000 x i256]* noalias nocapture "unpacked"="5.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>"([4000 x i256]* %1, [4000 x %"struct.ap_uint<256>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>"([4000 x i256]* %3, [4000 x %"struct.ap_uint<256>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>"([4000 x i256]* %5, [4000 x %"struct.ap_uint<256>"]* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([4000 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [4000 x i256]* noalias nocapture readonly "unpacked"="1.0.0.0", [4000 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [4000 x i256]* noalias nocapture readonly "unpacked"="3.0.0.0", [4000 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [4000 x i256]* noalias nocapture readonly "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>.30.42.66"([4000 x %"struct.ap_uint<256>"]* %0, [4000 x i256]* %1)
  call fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>.30.42.66"([4000 x %"struct.ap_uint<256>"]* %2, [4000 x i256]* %3)
  call fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>.30.42.66"([4000 x %"struct.ap_uint<256>"]* %4, [4000 x i256]* %5)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>.30.42.66"([4000 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [4000 x i256]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [4000 x %"struct.ap_uint<256>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4000 x i256], [4000 x i256]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [4000 x %"struct.ap_uint<256>"], [4000 x %"struct.ap_uint<256>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %3, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>"([4000 x i256]* noalias nocapture "unpacked"="0.0.0.0", [4000 x %"struct.ap_uint<256>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [4000 x %"struct.ap_uint<256>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [4000 x %"struct.ap_uint<256>"], [4000 x %"struct.ap_uint<256>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [4000 x i256], [4000 x i256]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i256, i256* %src.addr.0.0.05, align 32
  store i256 %3, i256* %dst.addr.0.0.06, align 32
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 4000
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_pipelined_layer_processor_hw(i256*, i256*, i256*, i32, i32, i32)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([4000 x %"struct.ap_uint<256>"]* noalias "unpacked"="0", [4000 x i256]* noalias nocapture readonly "unpacked"="1.0.0.0", [4000 x %"struct.ap_uint<256>"]* noalias "unpacked"="2", [4000 x i256]* noalias nocapture readonly "unpacked"="3.0.0.0", [4000 x %"struct.ap_uint<256>"]* noalias "unpacked"="4", [4000 x i256]* noalias nocapture readonly "unpacked"="5.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a4000struct.ap_uint<256>.30.42.66"([4000 x %"struct.ap_uint<256>"]* %4, [4000 x i256]* %5)
  ret void
}

define void @pipelined_layer_processor_hw_stub_wrapper(i256*, i256*, i256*, i32, i32, i32) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 128000)
  %6 = bitcast i8* %malloccall to [4000 x %"struct.ap_uint<256>"]*
  %malloccall1 = tail call i8* @malloc(i64 128000)
  %7 = bitcast i8* %malloccall1 to [4000 x %"struct.ap_uint<256>"]*
  %malloccall2 = tail call i8* @malloc(i64 128000)
  %8 = bitcast i8* %malloccall2 to [4000 x %"struct.ap_uint<256>"]*
  %9 = bitcast i256* %0 to [4000 x i256]*
  %10 = bitcast i256* %1 to [4000 x i256]*
  %11 = bitcast i256* %2 to [4000 x i256]*
  call void @copy_out([4000 x %"struct.ap_uint<256>"]* %6, [4000 x i256]* %9, [4000 x %"struct.ap_uint<256>"]* %7, [4000 x i256]* %10, [4000 x %"struct.ap_uint<256>"]* %8, [4000 x i256]* %11)
  %12 = bitcast [4000 x %"struct.ap_uint<256>"]* %6 to %"struct.ap_uint<256>"*
  %13 = bitcast [4000 x %"struct.ap_uint<256>"]* %7 to %"struct.ap_uint<256>"*
  %14 = bitcast [4000 x %"struct.ap_uint<256>"]* %8 to %"struct.ap_uint<256>"*
  call void @pipelined_layer_processor_hw_stub(%"struct.ap_uint<256>"* %12, %"struct.ap_uint<256>"* %13, %"struct.ap_uint<256>"* %14, i32 %3, i32 %4, i32 %5)
  call void @copy_in([4000 x %"struct.ap_uint<256>"]* %6, [4000 x i256]* %9, [4000 x %"struct.ap_uint<256>"]* %7, [4000 x i256]* %10, [4000 x %"struct.ap_uint<256>"]* %8, [4000 x i256]* %11)
  ret void
}

declare void @pipelined_layer_processor_hw_stub(%"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, %"struct.ap_uint<256>"*, i32, i32, i32)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
