BITS 32
;TEST_FILE_META_BEGIN
;TEST_TYPE=TEST_F
;TEST_IGNOREFLAGS=FLAG_FPU_PE|FLAG_FPU_C1
;TEST_FILE_META_END
    ; set up st0 to be PI

    FLDPI
    ;TEST_BEGIN_RECORDING
    lea edi, [esp-08]
    mov word [edi], 0x0001
    FISUB word [edi]
    mov edi, 0x0
    ;TEST_END_RECORDING
