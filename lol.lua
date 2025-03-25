extern unsigned int g_40d004;

void sub_40100a(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
    char v0;  // [bp-0x15]
    unsigned int v1;  // [sp-0x10]
    unsigned int v2;  // [sp-0x4]
    unsigned long v4;  // ldt
    unsigned long v5;  // gdt
    unsigned short v6;  // fs
    unsigned int v7;  // ecx

    v2 = vvar_7{reg 28};
    v1 = *((int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0));
    *((unsigned int **)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)) = &v1;
    sub_401163(v0, g_40d004 ^ &v2, 3435973836, v7, *((int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)), sub_408988, -1);
    sub_401230();
    *((unsigned int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)) = v1;
    sub_4012a8();
    return;
}

extern unsigned int g_40d004;
extern unsigned int g_40d02c;
extern unsigned int g_40d750;
extern unsigned int g_40d754;

int sub_40100f()
{
    unsigned int v0;  // [sp-0x4c]
    unsigned int v1;  // [sp-0x48]
    unsigned int v2;  // [sp-0x44]
    void* v3;  // [sp-0x40]
    unsigned int v4;  // [sp-0x3c]
    unsigned int v5;  // [sp-0x38]
    unsigned int v6;  // [sp-0x34]
    void* v7;  // [sp-0x30], Other Possible Types: unsigned int
    unsigned int v8;  // [sp-0x2c]
    char v9;  // [sp-0x25]
    void* v10;  // [bp-0x24], Other Possible Types: unsigned int
    unsigned int v11;  // [bp-0x20]
    void* v12;  // [bp-0x1c]
    unsigned int v13;  // [bp-0x18]
    void* v14;  // [sp-0x14], Other Possible Types: unsigned int
    void* v15;  // [sp-0x10], Other Possible Types: unsigned int
    void* v16;  // [sp-0xc]
    unsigned int v17;  // [sp-0x8]
    unsigned int v18;  // [sp-0x4]
    unsigned int v21;  // ebx
    unsigned int v22;  // esi
    unsigned int v23;  // edx
    char v24;  // dl

    v18 = vvar_40{reg 28};
    v17 = g_40d004 ^ &v18;
    v1 = v21;
    v0 = v22;
    g_40d750 = 0;
    g_40d02c = g_40d02c | 1;
    if (!IsProcessorFeaturePresent(10))
    {
        sub_40123f();
        return;
    }
    v14 = 0;
    v15 = 0;
    v16 = 0;
    g_40d750 = 1;
    g_40d02c = g_40d02c | 2;
    [D] x86g_dirtyhelper_CPUID_sse3([D] unsupported_<class 'pyvex.expr.GSPTR'>())
    [D] MBusEvent-Imbe_Fence()
    v10 = 0;
    v11 = v21;
    v12 = 0;
    v13 = v23;
    v6 = v10;
    if (!(v11 ^ 1970169159) && !(v13 ^ 1231384169) && !(v12 ^ 1818588270))
        v7 = 1;
    else
        v7 = 0;
    v24 = v7;
    v9 = v7;
    [D] x86g_dirtyhelper_CPUID_sse3([D] unsupported_<class 'pyvex.expr.GSPTR'>())
    [D] MBusEvent-Imbe_Fence()
    v10 = 1;
    v11 = v21;
    v12 = 0;
    v13 = v24;
    v8 = v10;
    if (v9 && ((v8 & 268386288) == 67264 || (v8 & 268386288) == 132704 || (v8 & 268386288) == 132720 || (v8 & 268386288) == 198224 || (v8 & 268386288) == 198240 || (v8 & 268386288) == 198256))
        g_40d754 = g_40d754 | 1;
    v14 = v13;
    v15 = v12;
    if (v6 >= 7)
    {
        [D] x86g_dirtyhelper_CPUID_sse3([D] unsupported_<class 'pyvex.expr.GSPTR'>())
        [D] MBusEvent-Imbe_Fence()
        v10 = 7;
        v11 = v21;
        v12 = 0;
        v13 = 4;
        v16 = v11;
        if (((unsigned short)v11 & 0x200))
            g_40d754 = g_40d754 | 2;
    }
    if ((v15 & 0x100000))
    {
        g_40d750 = 2;
        g_40d02c = g_40d02c | 4;
        if ((v15 & 0x8000000) && (v15 & 0x10000000))
        {
            v4 = [D] x86g_dirtyhelper_XGETBV(0x0<32>);
            v5 = [D] x86g_dirtyhelper_XGETBV(0x0<32>) >> 32;
            v2 = v4 & 6;
            v3 = 0;
            if (v2 == 6 && !v3)
            {
                g_40d750 = 3;
                g_40d02c = g_40d02c | 8;
                if (((char)v16 & 32))
                {
                    g_40d750 = 5;
                    g_40d02c = g_40d02c | 32;
                }
            }
        }
    }
}

void sub_401014()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return;
}

void sub_401019(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_406380(*((int *)&v0));
    return;
}

extern char g_40ae70;

void sub_40101e(unsigned int a0)
{
    unsigned int v0[2];  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3[2];  // ecx
    void* v4[2];  // edx

    v1 = vvar_3{reg 28};
    v0[0] = v3;
    v0[0] = v3;
    v0[0] = &g_40ae70;
    v4 = &v0[1];
    v4[0] = 0;
    v4[1] = 0;
    v0[1] = a0;
    return;
}

extern char g_40d701;
extern unsigned int g_40d704;
extern unsigned int g_40d708;
extern unsigned int g_40d70c;
extern unsigned int g_40d710;
extern unsigned int g_40d714;
extern unsigned int g_40d718;

char sub_401023()
{
    unsigned int v0;  // [sp-0x24]
    unsigned int v1;  // [sp-0x20]
    unsigned int v2;  // [sp-0x1c]
    unsigned int v3;  // [sp-0x18]
    unsigned int v4;  // [sp-0x14]
    unsigned int v5;  // [sp-0x10]
    unsigned int v6;  // [sp-0xc]
    unsigned int v7;  // [sp-0x8]
    unsigned int v8;  // [sp-0x4]
    unsigned int v9;  // [bp+0x4]

    v8 = vvar_29{reg 28};
    if (g_40d701)
        return 1;
    if (v9 && v9 != 1)
    {
        v0 = 5;
        sub_401384();
    }
    if (!(sub_401104() && !v9))
    {
        v7 = sub_40115e(-1);
        v4 = v7;
        v5 = v7;
        v6 = v7;
        g_40d704 = v4;
        g_40d708 = v5;
        g_40d70c = v6;
        v1 = v7;
        v2 = v7;
        v3 = v7;
        g_40d710 = v1;
        g_40d714 = v2;
        g_40d718 = v3;
    }
    else if (_initialize_onexit_table())
    {
        return 0;
    }
    else if (_initialize_onexit_table())
    {
        return 0;
    }
    g_40d701 = 1;
    return 1;
}

typedef struct struct_0 {
    char padding_0[24];
    unsigned int field_18;
} struct_0;

int sub_401028()
{
    unsigned int v4;  // [sp-0x4]

    v4 = vvar_10{reg 28};
    [D] Unsupported jumpkind Ijk_SigTRAP at address 4205511()
}

int sub_40102d()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 0x4000;
}

extern unsigned int g_40d6ec;

int sub_401032()
{
    return g_40d6ec;
}

void sub_401037()
{
    sub_403bc0();
    return;
}

int sub_40103c(unsigned int a0, char a1)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_4{reg 28};
    return a0 >> (a1 & 31) | a0 << 32 - (a1 & 31);
}

void sub_401041(unsigned int a0)
{
    char *v0;  // [sp-0xc]
    unsigned int v1;  // [sp-0x4]
    char v2;  // [bp+0x8]
    unsigned int v4;  // esi

    v1 = vvar_3{reg 28};
    v0 = &v2;
    __acrt_iob_func(1, a0, 0, v0, v4, 3435973836, &v2, 3435973836);
    sub_401203(sub_4012a8(), a0, 0, v0);
    sub_4012a8();
    return;
}

void sub_401046()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return;
}

int sub_40104b(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return 0;
}

extern unsigned int g_40d004;

int sub_401050(unsigned int a0)
{
    unsigned int v0;  // [sp-0x10]
    unsigned int v1;  // [sp-0x4]
    unsigned long v3;  // ldt
    unsigned long v4;  // gdt
    unsigned short v5;  // fs
    unsigned int v6;  // ecx

    v1 = vvar_3{reg 28};
    v0 = *((int *)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0));
    *((unsigned int **)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0)) = &v0;
    sub_40100a(g_40d004 ^ &v1, v6, *((int *)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0)), sub_4089b8, 4294967295);
    sub_4011b3();
    sub_40128f(a0);
    *((unsigned int *)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0)) = v0;
    return sub_4012a8();
}

void sub_401055(void* a0, void* a1, unsigned int a2)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_5{reg 28};
    memmove(a0, a1, a2);
    sub_4012a8();
    return;
}

typedef struct struct_0 {
    char padding_0[4];
    unsigned int field_4;
} struct_0;

int sub_40105a()
{
    unsigned int v0;  // [sp-0xc]
    struct_0 *v1;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v2;  // [sp-0x4]
    struct_0 *v5;  // ecx

    v2 = vvar_9{reg 28};
    v0 = 3435973836;
    v1 = 3435973836;
    v1 = v5;
    v0 = &v1->field_4;
    if (sub_40135c())
        v0 = sub_401389(v1->field_4);
    return sub_4012a8();
}

void sub_40105f()
{
    sub_403430();
    return;
}

void sub_401064()
{
    sub_4051a0();
    return;
}

void sub_401069(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return;
}

int sub_40106e()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 0;
}

void sub_401073(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    sub_40128f(a0);
    sub_4012a8();
    return;
}

void sub_401078()
{
    sub_404570();
    return;
}

extern char g_40aebc;

void sub_40107d()
{
    unsigned int *v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int *v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = v4;
    sub_401262("bad array new length");
    *(v0) = &g_40aebc;
    return;
}

char sub_401082()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 1;
}

int sub_401087(unsigned int a0, unsigned int a1)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_4{reg 28};
    sub_40144c(a1);
    return sub_4012a8();
}

void sub_40108c()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return;
}

extern unsigned int g_40d004;

void sub_401091()
{
    unsigned int v0;  // [sp-0x10]
    unsigned int v1;  // [sp-0x4]
    unsigned long v4;  // ldt
    unsigned long v5;  // gdt
    unsigned short v6;  // fs
    unsigned int v7;  // ecx

    v1 = vvar_2{reg 28};
    v0 = *((int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0));
    *((unsigned int **)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)) = &v0;
    sub_40127b(g_40d004 ^ &v1, v7, *((int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)), sub_408a10, -1);
    sub_4012b2();
    *((unsigned int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)) = v0;
    sub_4012a8();
    return;
}

void sub_401096(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_404da0(*((int *)&v0));
    return;
}

typedef struct struct_0 {
    char padding_0[12];
    unsigned int field_c;
} struct_0;

extern unsigned int g_40d004;
extern unsigned int g_40d01c;

int sub_40109b()
{
    unsigned int v0;  // [sp-0x194]
    unsigned int v1;  // [sp-0x190]
    unsigned int v2;  // [sp-0x18c]
    unsigned int v3;  // [sp-0x188]
    unsigned int v4;  // [sp-0x184]
    unsigned int v5;  // [sp-0x180]
    unsigned int v6;  // [sp-0x17c]
    unsigned int v7;  // [sp-0x178]
    char *v8;  // [sp-0x174]
    unsigned int v9;  // [sp-0x170]
    char *v10;  // [sp-0x16c]
    unsigned int v11;  // [sp-0x168]
    unsigned int v12;  // [sp-0x154]
    unsigned int v13;  // [sp-0x150]
    unsigned int v14;  // [sp-0x14c]
    unsigned int v15;  // [sp-0x148]
    char v16;  // [bp-0x144]
    char v17;  // [bp-0x50]
    char v18;  // [bp-0x1c]
    unsigned int v19;  // [sp-0x8]
    unsigned int v20;  // [sp-0x4]
    unsigned int v21;  // [bp+0x4]
    char v22;  // [bp+0x8]
    char v23;  // [bp+0xc]
    unsigned int v25;  // ebx
    struct_0 *v26;  // ebx
    unsigned int v27;  // edi
    unsigned int v28;  // esi

    v20 = vvar_9{reg 28};
    v19 = g_40d004 ^ &v20;
    v14 = v25;
    v26 = *((int *)&v22);
    v13 = v27;
    v15 = v21;
    if (g_40d01c == -1)
    {
        sub_40123f();
        return;
    }
    if (!v26)
    {
        v12 = "Stack area around _alloca memory reserved by this function is corrupted\n";
        sub_404a80(v21, g_40d01c, 4);
        sub_40123f();
        return;
    }
    v12 = v28;
    sub_4049d0(&v18, &v17, v2);
    v11 = "\n";
    v10 = &v17;
    v9 = "> ";
    v8 = &v18;
    v7 = "\nData: <";
    v6 = *((int *)&v23);
    v5 = "\nAllocation number within this function: ";
    v4 = v26->field_c - 36;
    v3 = "\nSize: ";
    v2 = v26 + 2;
    v1 = "\nAddress: 0x";
    v0 = "Stack area around _alloca memory reserved by this function is corrupted";
    sub_40132f(&v16, 244, "%s%s%p%s%zd%s%d%s%s%s%s%s");
    sub_404a80(v15, g_40d01c, 4);
}

void sub_4010a0()
{
    sub_403740();
    return;
}

extern unsigned int g_40d028;

int sub_4010a5()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = (!g_40d028 ? 1 : 0);
    v0 = v0;
    return v0;
}

extern char g_40ae70;

void sub_4010aa(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int *v2;  // ecx
    void* v3[2];  // edx

    v0 = vvar_3{reg 28};
    *(v2) = &g_40ae70;
    v3 = v2 + 1;
    v3[0] = 0;
    v3[1] = 0;
    __std_exception_copy(a0 + 4, v2 + 1, v2);
    return;
}

extern unsigned int g_40d004;

void sub_4010af(unsigned int a0)
{
    unsigned int v0;  // [sp-0x10]
    unsigned int v1;  // [sp-0x4]
    unsigned long v3;  // ldt
    unsigned long v4;  // gdt
    unsigned short v5;  // fs
    unsigned int v6;  // ecx

    v1 = vvar_3{reg 28};
    v0 = *((int *)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0));
    *((unsigned int **)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0)) = &v0;
    sub_40100a(g_40d004 ^ &v1, v6, *((int *)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0)), sub_4089e0, 4294967295);
    sub_4011b3();
    *((unsigned int *)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 0)) = v0;
    sub_4012a8();
    return;
}

extern void* g_40d6fc;

void sub_4010b4()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v1;  // [bp+0x4]

    v0 = vvar_9{reg 28};
    if (!sub_401104())
    {
        return;
    }
    else if (!(char)v1)
    {
        g_40d6fc = 0;
        if (CasCmpNE(g_40d6fc, g_40d6fc))
            goto LABEL_0x405acf;
        return;
    }
    else
    {
        return;
    }
}

char sub_4010b9()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 1;
}

void sub_4010be(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    return;
}

int sub_4010c3(char *a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    strlen(a0);
    return sub_4012a8();
}

void sub_4010c8()
{
    sub_405e10();
    return;
}

void sub_4010cd()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return;
}

int sub_4010d2()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 0;
}

typedef struct EXCEPTION_POINTERS {
    struct EXCEPTION_RECORD *ExceptionRecord;
    struct CONTEXT *ContextRecord;
} EXCEPTION_POINTERS;

typedef struct EXCEPTION_RECORD {
    unsigned int ExceptionCode;
    unsigned int ExceptionFlags;
    void* ExceptionRecord;
    void* ExceptionAddress;
    unsigned int NumberParameters;
    unsigned int *ExceptionInformation[15];
} EXCEPTION_RECORD;

typedef struct CONTEXT {
    unsigned int ContextFlags;
    unsigned int Dr0;
    unsigned int Dr1;
    unsigned int Dr2;
    unsigned int Dr3;
    unsigned int Dr6;
    unsigned int Dr7;
    FLOATING_SAVE_AREA FloatSave;
    unsigned int SegGs;
    unsigned int SegFs;
    unsigned int SegEs;
    unsigned int SegDs;
    unsigned int Edi;
    unsigned int Esi;
    unsigned int Ebx;
    unsigned int Edx;
    unsigned int Ecx;
    unsigned int Eax;
    unsigned int Ebp;
    unsigned int Eip;
    unsigned int SegCs;
    unsigned int EFlags;
    unsigned int Esp;
    unsigned int SegSs;
    char ExtendedRegisters[512];
} CONTEXT;

typedef struct FLOATING_SAVE_AREA {
    unsigned int ControlWord;
    unsigned int StatusWord;
    unsigned int TagWord;
    unsigned int ErrorOffset;
    unsigned int ErrorSelector;
    unsigned int DataOffset;
    unsigned int DataSelector;
    char RegisterArea[80];
    unsigned int Spare0;
} FLOATING_SAVE_AREA;

void sub_4010d7()
{
    unsigned int v0;  // [sp-0x4]
    EXCEPTION_POINTERS *v1;  // [bp+0x4]

    v0 = vvar_2{reg 28};
    SetUnhandledExceptionFilter(NULL);
    UnhandledExceptionFilter(v1);
    TerminateProcess(GetCurrentProcess(), 3221226505);
    return;
}

char sub_4010dc()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 1;
}

int sub_4010e1(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]

    v1 = vvar_3{reg 28};
    v0 = a0;
    sub_401375();
    return sub_4012a8();
}

void sub_4010e6()
{
}

int sub_4010eb(unsigned int a0)
{
    return (unsigned int)sub_403600();
}

void sub_4010f0()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    void __cdecl std::_Xlength_error("string too long");
    sub_4012a8();
    return;
}

int sub_4010f5(unsigned int a0, unsigned int a1)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_4{reg 28};
    return a1;
}

void sub_4010fa()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return;
}

extern unsigned int g_40d330;
extern unsigned int g_40d334;
extern unsigned int g_40d33c;
extern unsigned int g_40d340;
extern unsigned int g_40d344;
extern unsigned short g_40d40c;
extern unsigned short g_40d410;
extern unsigned short g_40d414;
extern unsigned short g_40d418;
extern unsigned int g_40d41c;
extern unsigned int g_40d420;
extern unsigned int g_40d424;
extern unsigned int g_40d428;
extern unsigned int g_40d42c;
extern void* g_40d430;
extern char g_40d434;
extern unsigned int g_40d438;
extern unsigned short g_40d43c;
extern unsigned int g_40d440;
extern struct_0 *g_40d444;
extern unsigned short g_40d448;

int sub_4010ff()
{
    unsigned int v0;  // [sp-0x324]
    char v1;  // [bp+0x0]
    unsigned int v2;  // [bp+0x4]
    unsigned int v3;  // eax
    unsigned int v4;  // ecx
    unsigned int v5;  // edx
    unsigned int v6;  // ebx
    unsigned int v7;  // esi
    unsigned int v8;  // edi
    unsigned short v9;  // ss
    unsigned short v10;  // cs
    unsigned short v11;  // ds
    unsigned short v12;  // es
    unsigned short v13;  // fs
    unsigned short v14;  // gs
    unsigned int v15;  // id
    unsigned int v16;  // ac

    v3 = IsProcessorFeaturePresent(23);
    if (!v3)
    {
        g_40d430 = 0;
        g_40d42c = v4;
        g_40d428 = v5;
        g_40d424 = v6;
        g_40d420 = v7;
        g_40d41c = v8;
        g_40d448 = v9;
        g_40d43c = v10;
        g_40d418 = v11;
        g_40d414 = v12;
        g_40d410 = v13;
        g_40d40c = v14;
        v0 = x86g_calculate_eflags_all(15, v3, 0, 0) | 514 | v15 * 0x200000 & 0x200000 | v16 * 0x40000 & 0x40000;
        g_40d440 = v0;
        *((int *)&g_40d434) = vvar_2{reg 28};
        g_40d438 = *((int *)&v1);
        g_40d444 = &v2;
        g_40d33c = g_40d438;
        g_40d330 = 3221226505;
        g_40d334 = 1;
        g_40d340 = 1;
        g_40d344 = v2;
        sub_4010d7();
        return;
    }
    __fastfail(v2); /* do not return */
}

extern unsigned int g_40d030;

int sub_401104()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = (!g_40d030 ? 0 : 1);
    v0 = v0;
    return v0;
}

int sub_401109()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 4294967295;
}

void sub_40110e()
{
    sub_405690();
    return;
}

void sub_401113()
{
}

void sub_401118(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    return;
}

void sub_40111d(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_4043d0(*((int *)&v0));
    return;
}

int sub_401122(void* a0, void* a1, unsigned int a2)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_5{reg 28};
    memcmp(a0, a1, a2);
    return sub_4012a8();
}

void sub_401127()
{
    sub_403420();
    return;
}

void sub_40112c(unsigned int a0)
{
    unsigned int v0;  // [sp-0x14]
    unsigned int v1[1073741824];  // [sp-0x10], Other Possible Types: unsigned int
    unsigned int v2;  // [sp-0xc]
    unsigned int v3;  // [sp-0x8]
    unsigned int v4;  // [sp-0x4]
    unsigned int v6;  // esi

    v4 = vvar_28{reg 28};
    v0 = v6;
    v1 = 3435973836;
    v2 = 3435973836;
    v3 = 3435973836;
    v3 = a0 + 39;
    if (v3 <= a0)
        v3 = 4294967295;
    v2 = sub_4010e1(v3);
    do
    {
        if (!v2)
        {
            do
            {
                _CrtDbgReport(2, "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\WDExpress\\VC\\Tools\\MSVC\\14.16.27023\\include\\xmemory0", 101, 0, "%s");
                if (sub_4012a8() == 1)
                    [D] Unsupported jumpkind Ijk_SigTRAP at address 4201847()
                _invalid_parameter(L"\"invalid argument\"", L"std::_Allocate_manually_vector_aligned", L"C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\WDExpress\\VC\\Tools\\MSVC\\14.16.27023\\include\\xmemory0", 101);
                sub_4012a8();
            } while (false);
        }
    } while (false);
    v1[0] = v2 + 39 & 4294967264;
    v1[1073741823] = v2;
    v1[1073741822] = 4210752250;
    sub_4012a8();
    return;
}

void sub_401131()
{
    sub_405660();
    return;
}

void sub_401136()
{
    sub_403e60();
    return;
}

char sub_40113b()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 1;
}

typedef struct struct_0 {
    char padding_0[4];
    unsigned int field_4;
} struct_0;

int sub_401140()
{
    unsigned int v0;  // [sp-0xc]
    struct_0 *v1;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v2;  // [sp-0x4]
    struct_0 *v5;  // ecx

    v2 = vvar_9{reg 28};
    v0 = 3435973836;
    v1 = 3435973836;
    v1 = v5;
    v0 = &v1->field_4;
    if (sub_40135c())
        v0 = sub_401389(v1->field_4);
    return sub_4012a8();
}

void sub_401145(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    _free_dbg(a0, -1);
    return;
}

void sub_40114a()
{
    sub_403960();
    return;
}

extern void* g_40d744;

void sub_40114f()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    g_40d744 = 0;
    return;
}

void sub_401154()
{
    unsigned int v0;  // [sp-0x4]
    void* v3[7];  // ecx

    v0 = vvar_2{reg 28};
    sub_4011ef(v3);
    sub_4012da();
    v3[5] = 0;
    v3[6] = 0;
    sub_4012a8();
    return;
}

extern char g_40d700;

char sub_401159(unsigned int a0)
{
    void* v0;  // [sp-0x8]

    if (!a0)
        g_40d700 = 1;
    sub_40100f(vvar_11{reg 28});
    if (!(char)sub_40117c())
    {
        return 0;
    }
    else if (!(char)sub_40137a())
    {
        v0 = 0;
        sub_401113();
        return 0;
    }
    else
    {
        return 1;
    }
}

extern unsigned int g_40d004;

int sub_40115e(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v2;  // eax

    v0 = vvar_3{reg 28};
    v2 = sub_40103c(a0, 32 - (((int)((0 CONCAT g_40d004) % 32) CONCAT (int)((0 CONCAT g_40d004) / 32)) >> 32));
    return v2 ^ g_40d004;
}

void sub_401163(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v2;  // ecx

    v0 = vvar_9{reg 28};
    sub_4011db(v2);
    sub_401154();
    sub_4012a8();
    return;
}

int sub_401168()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 0;
}

void sub_40116d()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v3;  // esi
    unsigned int v4;  // eax

    v0 = vvar_2{reg 28};
    v4 = sub_40104b(v3);
    *((unsigned int *)__p__commode(v3)) = v4;
    return;
}

int sub_401172()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0 = v4;
    sub_4013ac();
    return sub_4012a8();
}

int sub_401177(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

int sub_40117c()
{
}

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;

extern struct_0 *g_40c120;

void sub_401181()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // esi
    struct_0 **v4;  // esi
    unsigned int v5;  // edi

    v1 = v3;
    v4 = &g_40c120;
    v0 = v5;
    do
    {
        if (*(v4))
        {
            sub_4011f4();
            *(v4)();
        }
    } while ((v4 += 4, v4 < 4244260));
    return;
}

void sub_401186()
{
    sub_403e60();
    return;
}

extern char g_40adcc;

int sub_40118b()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int *v3;  // ecx

    v0 = vvar_2{reg 28};
    sub_4013fc(v3);
    *(v3) = &g_40adcc;
    return sub_4012a8();
}

void sub_401190()
{
    sub_405080();
    return;
}

void sub_401195(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_406220(*((int *)&v0));
    return;
}

int sub_40119a(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    sub_4012e9(sub_40133e(a0));
    return sub_4012a8();
}

extern unsigned int g_40d6f0;

int sub_40119f(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    return g_40d6f0;
}

void sub_4011a4(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3[2];  // eax

    v1 = vvar_12{reg 28};
    v3 = sub_4011c2();
    v0 = a4;
    if (__stdio_common_vsprintf_s(v3[0], v3[1], a0, a1, a2, a3) >= 0)
        return;
    return;
}

void sub_4011a9()
{
    sub_403b80();
    return;
}

void sub_4011ae(unsigned int a0, unsigned int a1, unsigned int a2)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_5{reg 28};
    sub_40139d(a1, a2 * 8);
    sub_4012a8();
    return;
}

typedef struct struct_0 {
    char padding_0[20];
    void* field_14;
    unsigned int field_18;
} struct_0;

void sub_4011b3()
{
    unsigned int v0;  // [bp-0x10]
    char v1;  // [sp-0xd]
    struct_0 *v2;  // [sp-0xc], Other Possible Types: unsigned int
    unsigned int v3;  // [sp-0x8]
    unsigned int v4;  // [sp-0x4]
    unsigned int v7;  // ecx

    v4 = vvar_2{reg 28};
    v0 = 3435973836;
    v2 = 3435973836;
    v3 = 3435973836;
    v3 = v7;
    v2 = sub_4013b6();
    v2->field_14 = 0;
    v2->field_18 = 15;
    v1 = 0;
    sub_401320(&v2->padding_0[4], &v1);
    sub_4012a8();
    return;
}

void sub_4011b8()
{
    sub_404530();
    return;
}

void sub_4011bd(void* a0, void* a1, unsigned int a2)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_5{reg 28};
    memcpy(a0, a1, a2);
    sub_4012a8();
    return;
}

extern char g_40d320;

int sub_4011c2()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return &g_40d320;
}

int sub_4011c7(unsigned int a0)
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]

    v2 = vvar_3{reg 28};
    v0 = 3435973836;
    v1 = 3435973836;
    v1 = 536870911;
    v0 = a0 * 8;
    if (a0 > 536870911)
        v0 = 4294967295;
    return v0;
}

int sub_4011cc()
{
    unsigned int v0;  // [sp-0x4]

    v0 = 1;
    return sub_4012f3(0, 0, 0, 1);
}

typedef struct struct_0 {
    char padding_0[4];
    unsigned int field_4;
    char padding_8[12];
    void* field_14;
    unsigned int field_18;
} struct_0;

void sub_4011d1(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
    unsigned int v0;  // [bp-0x18]
    char v1;  // [sp-0x15]
    unsigned int v2;  // [sp-0x14]
    unsigned int v3;  // [sp-0x10]
    struct_0 *v4;  // [sp-0xc], Other Possible Types: unsigned int
    unsigned int v5;  // [sp-0x8]
    unsigned int v6;  // [sp-0x4]
    unsigned int v8;  // ecx

    v6 = vvar_15{reg 28};
    v0 = 3435973836;
    v2 = 3435973836;
    v3 = 3435973836;
    v4 = 3435973836;
    v5 = 3435973836;
    v5 = v8;
    sub_40137f();
    v4 = sub_4013b6();
    if (sub_40135c())
    {
        v3 = v4->field_4;
        v2 = sub_4012a3();
        sub_401235(&v4->field_4);
        sub_401069(v2);
        sub_4013e3(v3, v4->field_18 + 1);
    }
    v4->field_14 = 0;
    v4->field_18 = 15;
    v1 = 0;
    sub_401320(&v4->field_4, &v1);
    sub_4012a8();
    return;
}

void sub_4011d6()
{
    sub_405790();
    return;
}

void sub_4011db(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    return;
}

extern char g_40d768;

int sub_4011e0()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return &g_40d768;
}

extern unsigned int g_40d004;
extern unsigned int g_40d014;

int sub_4011e5()
{
    unsigned int v0;  // [sp-0x430]
    unsigned int v1;  // [sp-0x414]
    unsigned int v2;  // [sp-0x410]
    unsigned int v3;  // [sp-0x40c]
    char v4;  // [bp-0x408]
    unsigned int v5;  // [sp-0x8]
    unsigned int v6;  // [sp-0x4]
    unsigned int v7;  // [bp+0x4]
    char v8;  // [bp+0x8]
    unsigned int v10;  // ebx
    unsigned int v11;  // esi
    unsigned int v12;  // edi

    v6 = vvar_20{reg 28};
    v5 = g_40d004 ^ &v6;
    v3 = v10;
    v2 = v11;
    v1 = v12;
    if (g_40d014 != -1)
    {
        if (*((char *)*((int *)&v8)) && sub_404a60(*((int *)&v8)) + 45 <= 0x400)
        {
            strcpy_s(&v4, 0x400);
            strcat_s(&v4, 0x400);
            v0 = "' was corrupted.";
            strcat_s(&v4, 0x400);
        }
        sub_404a80(v7, g_40d014, 2);
    }
    sub_40123f();
    return;
}

void sub_4011ea(unsigned int a0, unsigned int a1)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_4{reg 28};
    sub_4011ae(a0, a1, 1);
    sub_4012a8();
    return;
}

void sub_4011ef(unsigned int a0)
{
    void* *v0;  // [sp-0x8], Other Possible Types: unsigned int *, unsigned int
    unsigned int v1;  // [sp-0x4]
    unsigned int *v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    *(v0) = 0;
    return;
}

void sub_4011f4()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = v4;
    return;
}

void sub_4011f9(unsigned int a0)
{
    sub_4044e0();
    return;
}

void sub_4011fe()
{
    sub_4045b0();
    return;
}

int sub_401203(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    unsigned int v0;  // [sp-0x1c]
    unsigned int v1;  // [sp-0x18]
    unsigned int v2;  // [sp-0x14]
    unsigned int v3;  // [sp-0x10]
    unsigned int v4;  // [sp-0xc]
    unsigned int v5;  // [sp-0x8]
    unsigned int v6;  // [sp-0x4]
    unsigned int v8;  // esi
    unsigned int v9[2];  // eax

    v6 = vvar_6{reg 28};
    v5 = v8;
    v4 = a3;
    v3 = a2;
    v2 = a1;
    v1 = a0;
    v9 = sub_4011c2();
    v0 = v9[1];
    __stdio_common_vfprintf(v9[0]);
    sub_4012a8();
    return sub_4012a8();
}

int sub_401208(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

extern char g_40c94c;

void sub_40120d()
{
    unsigned int v0;  // [sp-0x14]
    char v1;  // [bp-0x10]
    unsigned int v2;  // [sp-0x4]

    v2 = vvar_2{reg 28};
    sub_40107d();
    v0 = &g_40c94c;
    _CxxThrowException(&v1);
    return;
}

void sub_401212()
{
    sub_405620();
    return;
}

typedef struct struct_0 {
    char padding_0[36];
    unsigned int field_24;
} struct_0;

extern char g_400000;
extern char g_40c9b8;
extern unsigned int g_40d004;

char sub_401217(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4c]
    unsigned int v1;  // [sp-0x48]
    unsigned int v2;  // [sp-0x44]
    unsigned int v3;  // [sp-0x40]
    unsigned int v4;  // [sp-0x38]
    struct_0 *v5;  // [sp-0x2c]
    unsigned int v6;  // [sp-0x28]
    char v7;  // [sp-0x20]
    char v8;  // [sp-0x1f]
    char v9;  // [sp-0x1e]
    char v10;  // [sp-0x1d]
    char *v11;  // [sp-0x1c]
    unsigned int v12;  // [sp-0x14]
    unsigned int v13;  // [sp-0x10]
    unsigned int v14;  // [sp-0xc]
    void* v15;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v16;  // [sp-0x4]
    unsigned long v18;  // ldt
    unsigned long v19;  // gdt
    unsigned short v20;  // fs
    unsigned int v21;  // ebx
    unsigned int v22;  // esi
    unsigned int v23;  // edi
    char v24;  // al

    v16 = vvar_12{reg 28};
    v15 = 4294967294;
    v14 = &g_40c9b8;
    v13 = sub_406340;
    v12 = *((int *)x86g_use_seg_selector(v18, v19, (unsigned int)v20, 0));
    v3 = v21;
    v2 = v22;
    v1 = v23;
    v14 ^= g_40d004;
    v0 = g_40d004 ^ &v16;
    *((unsigned int **)x86g_use_seg_selector(v18, v19, (unsigned int)v20, 0)) = &v12;
    v11 = &v0;
    v6 = &g_400000;
    v15 = 0;
    if (!sub_405520(v6))
    {
        v10 = 0;
        v15 = 4294967294;
        v24 = v10;
    }
    else
    {
        v4 = a0 - v6;
        v5 = sub_405470(v6, v4);
        if (!v5)
        {
            v9 = 0;
            v15 = 4294967294;
            v24 = v9;
        }
        else if ((v5->field_24 & 0x80000000))
        {
            v8 = 0;
            v15 = 4294967294;
            v24 = v8;
        }
        else
        {
            v7 = 1;
            v15 = 4294967294;
            v24 = v7;
        }
    }
    *((unsigned int *)x86g_use_seg_selector(v18, v19, (unsigned int)v20, 0)) = v12;
    return v24;
}

void sub_40121c(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    return;
}

void sub_401221(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_405360(*((int *)&v0));
    return;
}

typedef struct struct_1 {
    unsigned short field_0;
    char padding_2[58];
    unsigned int field_3c;
} struct_1;

typedef struct struct_0 {
    unsigned int field_0;
    char padding_4[20];
    unsigned short field_18;
    char padding_1a[90];
    unsigned int field_74;
    char padding_78[112];
    unsigned int field_e8;
} struct_0;

char sub_401226()
{
    struct_0 *v0;  // [sp-0xc]
    struct_1 *v1;  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]

    v2 = vvar_10{reg 28};
    v1 = &GetModuleHandleW(NULL);
    if (!v1)
    {
        return 0;
    }
    else if (v1->field_0 != 23117)
    {
        return 0;
    }
    else
    {
        v0 = (char *)&v1->field_0 + v1->field_3c;
        return (v0->field_0 == 17744 ? (v0->field_18 == 267 ? (v0->field_74 <= 14 ? 0 : (!v0->field_e8 ? 0 : 1)) : 0) : 0);
    }
}

void sub_40122b(unsigned int a0)
{
    sub_403e40();
    return;
}

typedef struct struct_0 {
    unsigned int field_0;
} struct_0;

void sub_401230()
{
    unsigned int v0;  // [sp-0x24]
    unsigned int v1;  // [sp-0x20]
    unsigned int v2;  // [sp-0x1c]
    unsigned int v3;  // [sp-0x18]
    unsigned int v4;  // [sp-0x14]
    unsigned int v5;  // [sp-0x10]
    unsigned int v6;  // [sp-0xc]
    unsigned int v7;  // [sp-0x8]
    unsigned int v8;  // [sp-0x4]
    unsigned int v11;  // esi
    unsigned int v12;  // ecx
    unsigned int v13;  // eax
    unsigned int *v14;  // eax
    unsigned int v15;  // eax
    struct_0 **v16;  // eax

    v8 = vvar_2{reg 28};
    v1 = v11;
    v2 = 3435973836;
    v3 = 3435973836;
    v4 = 3435973836;
    v5 = 3435973836;
    v6 = 3435973836;
    v7 = 3435973836;
    v7 = v12;
    v0 = sub_4012a3();
    sub_401325();
    v13 = sub_401208(sub_401276(1));
    *((unsigned int *)sub_401447()) = v13;
    sub_40131b();
    v14 = sub_401447();
    sub_401442(&v5, *(v14));
    v15 = sub_4013b1(sub_4013b6());
    v16 = sub_401447();
    *(v16)->field_0 = v15;
    sub_4012d5(v16);
    sub_4012a8();
    return;
}

int sub_401235(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

void sub_40123a()
{
    sub_4063c0();
    return;
}

extern unsigned int g_40d000;
extern unsigned int g_40d004;
extern unsigned int g_40d330;
extern unsigned int g_40d334;
extern unsigned int g_40d33c;
extern unsigned int g_40d340;
extern unsigned int g_40d344;
extern unsigned int g_40d380;
extern unsigned short g_40d40c;
extern unsigned short g_40d410;
extern unsigned short g_40d414;
extern unsigned short g_40d418;
extern unsigned int g_40d41c;
extern unsigned int g_40d420;
extern unsigned int g_40d424;
extern unsigned int g_40d428;
extern unsigned int g_40d42c;
extern void* g_40d430;
extern char g_40d434;
extern unsigned int g_40d438;
extern unsigned short g_40d43c;
extern unsigned int g_40d440;
extern struct_0 *g_40d444;
extern unsigned short g_40d448;

int sub_40123f()
{
    unsigned int v0;  // [sp-0x32c]
    unsigned int v1;  // [sp-0xc]
    unsigned int v2;  // [sp-0x8]
    char v3;  // [bp+0x0]
    unsigned int v4;  // [bp+0x4]
    unsigned int v5;  // ecx
    unsigned int v6;  // eax
    unsigned int v7;  // edx
    unsigned int v8;  // ebx
    unsigned int v9;  // esi
    unsigned int v10;  // edi
    unsigned short v11;  // ss
    unsigned short v12;  // cs
    unsigned short v13;  // ds
    unsigned short v14;  // es
    unsigned short v15;  // fs
    unsigned short v16;  // gs
    unsigned int v17;  // id
    unsigned int v18;  // ac

    if (v5 == g_40d004)
        return;
    v6 = IsProcessorFeaturePresent(23);
    if (!v6)
    {
        g_40d430 = 0;
        g_40d42c = v5;
        g_40d428 = v7;
        g_40d424 = v8;
        g_40d420 = v9;
        g_40d41c = v10;
        g_40d448 = v11;
        g_40d43c = v12;
        g_40d418 = v13;
        g_40d414 = v14;
        g_40d410 = v15;
        g_40d40c = v16;
        v0 = x86g_calculate_eflags_all(15, v6, 0, 0) | 514 | v17 * 0x200000 & 0x200000 | v18 * 0x40000 & 0x40000;
        g_40d440 = v0;
        *((int *)&g_40d434) = vvar_9{reg 28};
        g_40d438 = *((int *)&v3);
        g_40d444 = &v4;
        g_40d380 = 65537;
        g_40d33c = g_40d438;
        g_40d330 = 3221226505;
        g_40d334 = 1;
        g_40d340 = 1;
        g_40d344 = 2;
        v1 = g_40d004;
        v2 = g_40d000;
        sub_4010d7();
        return;
    }
    __fastfail(2); /* do not return */
}

void sub_401244()
{
    sub_405bc0();
    return;
}

void sub_401249()
{
    sub_4037e0();
    return;
}

void sub_40124e(void* a0, unsigned int a1, void* a2)
{
    unsigned int v0;  // [bp-0xc]
    char v1;  // [sp-0x9]
    unsigned int v2;  // [sp-0x8]
    unsigned int v3;  // [sp-0x4]
    unsigned int v5;  // ecx

    v3 = vvar_5{reg 28};
    v0 = 3435973836;
    v2 = 3435973836;
    v2 = v5;
    sub_4011bd(a0, a2, a1);
    v1 = 0;
    sub_401320(a0 + a1, &v1);
    sub_4012a8();
    return;
}

int sub_401253()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 0;
}

extern unsigned int g_40d004;

void sub_401258()
{
    unsigned int v0;  // [sp-0x10]
    unsigned int v1;  // [sp-0x4]
    unsigned long v4;  // ldt
    unsigned long v5;  // gdt
    unsigned short v6;  // fs
    unsigned int v7;  // ecx

    v1 = vvar_2{reg 28};
    v0 = *((int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0));
    *((unsigned int **)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)) = &v0;
    sub_4011d1(g_40d004 ^ &v1, v7, *((int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)), sub_408a40, 4294967295);
    sub_401091();
    *((unsigned int *)x86g_use_seg_selector(v4, v5, (unsigned int)v6, 0)) = v0;
    sub_4012a8();
    return;
}

void sub_40125d(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_405390(*((int *)&v0));
    return;
}

extern char g_40ae98;

void sub_401262(unsigned int a0)
{
    unsigned int v0;  // [sp-0xc]
    unsigned int *v1;  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]
    unsigned int *v4;  // ecx

    v2 = vvar_3{reg 28};
    v1 = v4;
    v1 = v4;
    v0 = 1;
    sub_40101e(a0);
    *(v1) = &g_40ae98;
    return;
}

void sub_401267(unsigned int a0, unsigned int a1)
{
    unsigned int v0;  // [sp-0x28]
    unsigned int v1;  // [sp-0x24]
    unsigned int v2;  // [sp-0x20]
    unsigned int v3;  // [sp-0x1c]
    unsigned int v4;  // [sp-0x18]
    unsigned int v5;  // [sp-0x14]
    unsigned int v6;  // [sp-0x10]
    unsigned int v7[7];  // [sp-0xc], Other Possible Types: unsigned int
    unsigned int v8;  // [sp-0x8]
    unsigned int v9;  // [sp-0x4]
    char v10;  // [bp+0xc]
    unsigned int v12;  // ecx
    void* v13;  // eax

    v9 = vvar_14{reg 28};
    v1 = 3435973836;
    v2 = 3435973836;
    v3 = 3435973836;
    v4 = 3435973836;
    v5 = 3435973836;
    v6 = 3435973836;
    v7 = 3435973836;
    v8 = 3435973836;
    v8 = v12;
    if (a0 > sub_4013f2())
        sub_4010f0();
    v7[0] = sub_4013b6();
    v6 = v7[6];
    v0 = a0;
    v5 = sub_401028();
    v4 = sub_4012a3();
    v2 = sub_40119a(v5 + 1);
    sub_40129e();
    v7[5] = a0;
    v7[6] = v5;
    v13 = sub_401389(v2);
    sub_40124e(v13, a0, *((int *)&v10));
    if (v6 >= 16)
    {
        sub_4013e3(v7[1], v6 + 1);
        v7[1] = v2;
    }
    else
    {
        sub_4012df(v4, sub_401235(&v7[1]));
    }
    sub_4012d5(v8);
    sub_4012a8();
    return;
}

void sub_40126c(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    return;
}

void sub_401271()
{
    sub_4039d0();
    return;
}

int sub_401276(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    sub_4012e9(sub_4011c7(a0));
    return sub_4012a8();
}

void sub_40127b(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
    unsigned int v0;  // [sp-0x18]
    unsigned int v1;  // [sp-0x14]
    unsigned int v2;  // [sp-0x10]
    unsigned int v3;  // [sp-0xc]
    unsigned int v4;  // [sp-0x8]
    unsigned int v5;  // [sp-0x4]
    unsigned int v7;  // ecx
    unsigned int *v8;  // eax
    void* *v9;  // eax

    v5 = vvar_7{reg 28};
    v1 = 3435973836;
    v2 = 3435973836;
    v3 = 3435973836;
    v4 = 3435973836;
    v4 = v7;
    v0 = sub_4012a3();
    sub_401325();
    sub_40137f();
    sub_401447();
    sub_401370(&v2);
    v8 = sub_401447();
    sub_4011ea(&v2, *(v8));
    v9 = sub_401447();
    *(v9) = 0;
    sub_4012d5(v9);
    sub_4012a8();
    return;
}

void sub_401280(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    sub_401145(a0);
    return;
}

void sub_401285()
{
    sub_4060d0();
    return;
}

int sub_40128a()
{
}

void sub_40128f(char *a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    sub_401177(sub_4010c3(a0));
    sub_4013a7(a0);
    sub_4012a8();
    return;
}

int sub_401294(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

void sub_401299(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v2;  // ecx

    v0 = vvar_3{reg 28};
    if (!sub_4012c1(a0, v2))
        return;
    return;
}

typedef struct struct_2 {
    char padding_0[4];
    void* field_4;
} struct_2;

typedef struct struct_0 {
    char padding_0[4];
    unsigned int field_4;
} struct_0;

typedef struct struct_1 {
    void* field_0;
    struct struct_1 *field_4;
} struct_1;

extern unsigned int g_40d004;

void sub_40129e()
{
    unsigned int v0;  // [sp-0x34]
    struct_1 **v1;  // [sp-0x24]
    unsigned int v2;  // [sp-0x10]
    unsigned int v3;  // [sp-0x4]
    unsigned long v6;  // ldt
    unsigned long v7;  // gdt
    unsigned short v8;  // fs
    struct_2 **v9;  // ecx
    struct_0 **v10;  // eax
    unsigned int v11;  // esi
    unsigned int v12;  // edx

    v3 = vvar_18{reg 28};
    v2 = *((int *)x86g_use_seg_selector(v6, v7, (unsigned int)v8, 0));
    *((unsigned int **)x86g_use_seg_selector(v6, v7, (unsigned int)v8, 0)) = &v2;
    v10 = v9;
    if (*(v9))
    {
        public: __thiscall std::_Lockit::_Lockit(3, g_40d004 ^ &v3, v11, 3435973836, 3435973836, 3435973836, 3435973836, v9, *((int *)x86g_use_seg_selector(v6, v7, (unsigned int)v8, 0)), sub_408aa0, -1);
        sub_4012a8();
        for (v1 = &*(v9)->field_4; *(v1); *(v1) = *(v1)->field_4)
        {
            *(v1)->field_0 = 0;
        }
        *(v9)->field_4 = 0;
        public: __thiscall std::_Lockit::~_Lockit();
        v10 = sub_4012a8();
    }
    v0 = v12;
    sub_4012d5(v10);
    *((unsigned int *)x86g_use_seg_selector(v6, v7, (unsigned int)v8, 0)) = v2;
    sub_4012a8();
    return;
}

int sub_4012a3()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v3;  // ecx

    v0 = vvar_2{reg 28};
    sub_40121c(v3);
    return sub_4012a8();
}

int sub_4012a8()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // cc_op
    unsigned int v5;  // cc_dep1
    unsigned int v6;  // cc_dep2
    unsigned int v7;  // cc_ndep
    unsigned int v8;  // eax
    unsigned int v9;  // eax

    if ((char)x86g_calculate_condition(4, v4, v5, v6, v7))
        return v8;
    v1 = vvar_9{reg 28};
    v0 = v9;
}

typedef struct struct_0 {
    char padding_0[4294967288];
    unsigned int field_fffffff8;
    struct struct_0 *field_fffffffc;
} struct_0;

void sub_4012ad(struct_0 **a0, unsigned int *a1)
{
    void* v0;  // [sp-0x1c], Other Possible Types: unsigned int
    unsigned int v1;  // [sp-0x18]
    unsigned int v2;  // [sp-0x14]
    unsigned int v3;  // [sp-0x10]
    struct_0 *v4;  // [sp-0xc], Other Possible Types: unsigned int
    struct_0 *v5;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v6;  // [sp-0x4]
    unsigned int v8;  // esi

    v6 = vvar_51{reg 28};
    v1 = v8;
    v2 = 3435973836;
    v3 = 3435973836;
    v4 = 3435973836;
    v5 = 3435973836;
    *(a1) = *(a1) + 39;
    v5 = *(a0);
    v4 = v5->field_fffffffc;
    do
    {
        if (v5->field_fffffff8 != -84215046)
        {
            do
            {
                v0 = "invalid argument";
                _CrtDbgReport(2, "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\WDExpress\\VC\\Tools\\MSVC\\14.16.27023\\include\\xmemory0", 122, 0, "%s");
                if (sub_4012a8() == 1)
                    [D] Unsupported jumpkind Ijk_SigTRAP at address 4204912()
                v0 = 0;
                _invalid_parameter(L"\"invalid argument\"", L"std::_Adjust_manually_vector_aligned", L"C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\WDExpress\\VC\\Tools\\MSVC\\14.16.27023\\include\\xmemory0", 122);
                sub_4012a8();
            } while (false);
        }
    } while (false);
    v3 = 8;
    v2 = *(a0) - v4;
    do
    {
        if (v2 < 8 || v2 > 39)
        {
            do
            {
                v0 = "invalid argument";
                _CrtDbgReport(2, "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\WDExpress\\VC\\Tools\\MSVC\\14.16.27023\\include\\xmemory0", 132, 0, "%s");
                if (sub_4012a8() == 1)
                    [D] Unsupported jumpkind Ijk_SigTRAP at address 4205037()
                v0 = 0;
                _invalid_parameter(L"\"invalid argument\"", L"std::_Adjust_manually_vector_aligned", L"C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\WDExpress\\VC\\Tools\\MSVC\\14.16.27023\\include\\xmemory0", 132);
                sub_4012a8();
            } while (false);
        }
    } while (false);
    *(a0) = v4;
    sub_4012a8();
    return;
}

void sub_4012b2()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v3;  // ecx

    v0 = vvar_2{reg 28};
    sub_4012bc(v3);
    sub_4012a8();
    return;
}

void sub_4012b7()
{
    sub_4056f0();
    return;
}

void sub_4012bc(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v2;  // ecx

    v0 = vvar_3{reg 28};
    sub_40126c(v2);
    sub_4012a8();
    return;
}

extern unsigned int g_40d704;

int sub_4012c1(unsigned int a0, unsigned int a1)
{
    unsigned int v0;  // [sp-0x10]
    unsigned int v1;  // [sp-0xc]
    unsigned int v2;  // [sp-0x8]
    unsigned int v3;  // [sp-0x4]

    v3 = vvar_14{reg 28};
    v0 = sub_40140b(g_40d704);
    if (v0 != -1)
    {
        v1 = (!_register_onexit_function(&g_40d704) ? a0 : 0);
        v1 = v1;
        return v1;
    }
    v2 = (!_crt_atexit() ? a0 : 0);
    v2 = v2;
    return v2;
}

void sub_4012c6()
{
}

void sub_4012cb()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    _initialize_narrow_environment();
    return;
}

extern char g_40d75c;

int sub_4012d0()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return &g_40d75c;
}

typedef struct struct_0 {
    unsigned int field_0;
    struct struct_1 *field_4;
} struct_0;

typedef struct struct_1 {
    unsigned int field_0;
} struct_1;

void sub_4012d5(unsigned int a0)
{
    unsigned int v0;  // [sp-0x1c]
    unsigned int v1;  // [sp-0x18]
    unsigned int v2;  // [sp-0x14]
    unsigned int v3;  // [sp-0x10]
    unsigned int *v4;  // [sp-0x8]
    unsigned int v5;  // [sp-0x4]
    char v6;  // [bp+0x0]
    unsigned int v8;  // ebx
    unsigned int v9;  // esi
    void* v10;  // esi
    struct_0 *v11;  // edx
    unsigned int v12;  // edi
    unsigned int *v13;  // ecx
    unsigned int *v14;  // edi
    unsigned int *v15;  // ecx

    v5 = vvar_36{reg 28};
    v3 = v8;
    v2 = v9;
    v10 = 0;
    if (v11->field_0 <= 0)
        return;
    v1 = v12;
    v4 = v13 + 1;
    v14 = 0;
    do
    {
        v15 = v11->field_4;
        if (*((int *)(*((int *)(v15 + v14)) + (char *)v4)) != 3435973836 || *((int *)(*((int *)(v15 + v14 + 4)) + *((int *)(v15 + v14)) + (char *)v13)) != 3435973836)
        {
            v0 = *((int *)(v15 + v14 + 8));
            sub_4011e5(*((int *)&v6));
        }
    } while ((v10 += 1, v14 += 12, v10 < v11->field_0));
    return;
}

void sub_4012da()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0 = v4;
    return;
}

void sub_4012df(unsigned int a0, unsigned int a1)
{
    unsigned int *v0;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v1;  // [sp-0x4]
    char v2;  // [bp+0xc]
    unsigned int v4;  // ecx

    v1 = vvar_4{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0 = sub_4010f5(4, a1);
    *(v0) = *((int *)sub_4013bb(*((int *)&v2)));
    sub_4012a8();
    return;
}

int sub_4012e4(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v2;  // ecx

    v0 = vvar_10{reg 28};
    sub_401118(v2);
    return sub_4012a8();
}

void sub_4012e9(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_10{reg 28};
    if (a0 >= 0x1000)
    {
        sub_40112c(a0);
    }
    else if (a0)
    {
        sub_4010e1(a0);
    }
    sub_4012a8();
    return;
}

extern char g_40d700;

void sub_4012ee(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    char v2;  // [bp+0x8]

    v1 = vvar_17{reg 28};
    if (g_40d700 && v2)
        return;
    v0 = (char)a0;
    sub_40108c();
    v0 = (char)a0;
    sub_401113();
    return;
}

int sub_4012f3(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    return _CrtDbgReportW;
}

void sub_4012f8()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_4{reg 28};
    if (!_controlfp_s(0, 0x10000, 0x30000))
        return;
    sub_401384();
    return;
}

void sub_4012fd()
{
}

extern unsigned int g_40aee4[4];
extern unsigned int g_40d00c[4];

void sub_401302(unsigned int a0, unsigned int a1)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]

    v1 = vvar_12{reg 28};
    if (a1 > 4)
    {
        v0 = "Unknown Runtime Check Error\n\r";
        sub_404a80(a0, 1, 5);
        return;
    }
    if (g_40d00c[a1] == -1)
        return;
    v0 = g_40aee4[a1];
    sub_404a80(a0, g_40d00c[a1], a1);
}

int sub_401307()
{
    return sub_407283;
}

void sub_40130c()
{
    sub_404570();
    return;
}

void sub_401311()
{
    sub_403790();
    return;
}

void sub_401316()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    _set_fmode(sub_40102d());
    return;
}

int sub_40131b()
{
    void* v0[2];  // [sp-0x8], Other Possible Types: unsigned int [2], unsigned int
    unsigned int v1;  // [sp-0x4]
    unsigned int v4[2];  // ecx

    v1 = vvar_2{reg 28};
    v0[0] = v4;
    v0 = 3435973836;
    v0[0] = v4;
    v0[0] = 0;
    v0[1] = 0;
    return v0;
}

void sub_401320(char *a0, char *a1)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_4{reg 28};
    *(a0) = *(a1);
    return;
}

void sub_401325()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0 = v4;
    return;
}

void sub_40132a()
{
}

void sub_40132f(unsigned int a0, unsigned int a1, unsigned int a2)
{
    unsigned int v0;  // [sp-0x4]
    char v1;  // [bp+0x10]

    v0 = vvar_5{reg 28};
    sub_4011a4(a0, a1, a2, 0, &v1);
    return;
}

void sub_401334()
{
}

int sub_401339()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return (unsigned int)sub_40143d();
}

int sub_40133e(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

void sub_401343()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v2;  // esi

    v0 = v2;
    if (1)
        goto LABEL_0x40630f;
    return;
}

typedef struct struct_1 {
    struct struct_0 *field_0;
} struct_1;

typedef struct struct_2 {
    char padding_0[4];
    struct struct_0 *field_4;
} struct_2;

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;

extern unsigned int g_40d004;
extern unsigned int g_40d138;
extern unsigned int g_40d154;
extern unsigned int g_40d16c;

void sub_401348()
{
    unsigned int v0;  // [sp-0x9c]
    unsigned int v1;  // [sp-0x98]
    unsigned int v2;  // [sp-0x94]
    unsigned int v3;  // [sp-0x90]
    void* v4;  // [sp-0x8c], Other Possible Types: char, unsigned int
    struct_1 **v5;  // [sp-0x88]
    unsigned int v6;  // [sp-0x84]
    unsigned int v7;  // [sp-0x80]
    struct_1 **v8;  // [sp-0x7c]
    unsigned int v9;  // [sp-0x78]
    unsigned int v10;  // [sp-0x74]
    struct_1 **v11;  // [sp-0x70]
    struct_1 **v12;  // [sp-0x6c]
    unsigned int v13[8];  // [sp-0x68]
    char v14;  // [sp-0x61]
    unsigned int v15[8];  // [sp-0x60]
    char v16;  // [sp-0x59]
    struct_2 **v17;  // [sp-0x58]
    struct_2 **v18;  // [sp-0x54]
    struct_1 **v19;  // [sp-0x18]
    unsigned int v20;  // [sp-0x14]
    unsigned int v21;  // [sp-0x10]
    unsigned int v22;  // [sp-0xc]
    void* v23;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v24;  // [sp-0x4]
    unsigned int v25;  // [bp+0x4]
    char v26;  // [bp+0x8]
    unsigned long v28;  // ldt
    unsigned long v29;  // gdt
    unsigned short v30;  // fs
    unsigned int v31;  // esi
    unsigned int v32;  // edi
    unsigned int *v33;  // edi
    unsigned int v34;  // ecx
    void* v35[8];  // ecx
    void* v36[8];  // ecx

    v24 = vvar_69{reg 28};
    v23 = 4294967295;
    v22 = sub_408940;
    v21 = *((int *)x86g_use_seg_selector(v28, v29, (unsigned int)v30, 0));
    v3 = v31;
    v2 = v32;
    v33 = &v4;
    for (v34 = 31; v34; v33 += 1)
    {
        v34 -= 1;
        *(v33) = 3435973836;
    }
    v20 = g_40d004 ^ &v24;
    v1 = v20;
    *((unsigned int **)x86g_use_seg_selector(v28, v29, (unsigned int)v30, 0)) = &v21;
    if (v25 < 2)
    {
        *((unsigned int *)x86g_use_seg_selector(v28, v29, (unsigned int)v30, 0)) = v21;
        sub_40123f();
        sub_4012a8();
        return;
    }
    v19 = 0;
    v0 = "bear";
    v10 = sub_401050(*((int *)(*((int *)&v26) + 4)));
    v9 = v10;
    v23 = 0;
    v16 = sub_401087(v9, *((int *)(*((int *)&v26) + 4)));
    v23 = 4294967295;
    sub_401258();
    if (v16)
    {
        v15[0] = sub_401375();
        if (v15)
        {
            v35 = v15;
            v35[0] = 0;
            v35[1] = 0;
            v35[2] = 0;
            v35[3] = 0;
            v35[4] = 0;
            v35[5] = 0;
            v35[6] = 0;
            v35[7] = 0;
            v8 = sub_4013cf();
        }
        else
        {
            v8 = 0;
        }
        v19 = v8;
        sub_401073("luke bear-y");
    }
    v7 = sub_401050(*((int *)(*((int *)&v26) + 4)));
    v6 = v7;
    v23 = 1;
    v14 = sub_401087(v6, *((int *)(*((int *)&v26) + 4)));
    v23 = 4294967295;
    sub_401258();
    if (v14)
    {
        v13[0] = sub_401375();
        if (v13)
        {
            v36 = v13;
            v36[0] = 0;
            v36[1] = 0;
            v36[2] = 0;
            v36[3] = 0;
            v36[4] = 0;
            v36[5] = 0;
            v36[6] = 0;
            v36[7] = 0;
            v5 = sub_40118b();
        }
        else
        {
            v5 = 0;
        }
        v19 = v5;
        sub_401073("hurricane cat-rina");
    }
    *(v19)->field_0();
    sub_4012a8();
    v18 = __RTDynamicCast(v19, 0, &g_40d138, &g_40d154);
    if (v18)
    {
        *(v18)->field_4();
        sub_4012a8();
    }
    v17 = __RTDynamicCast(v19, 0, &g_40d138, &g_40d16c);
    if (v17)
    {
        *(v17)->field_4();
        sub_4012a8();
    }
    if (v19)
    {
        v11 = v19;
        v12 = v11;
        if (v12)
            v4 = sub_401438();
        else
            v4 = 0;
    }
}

extern char g_40d738;

int sub_40134d()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return &g_40d738;
}

void sub_401352()
{
    sub_405750();
    return;
}

void sub_401357()
{
}

typedef struct struct_0 {
    char padding_0[24];
    unsigned int field_18;
} struct_0;

char sub_40135c()
{
    unsigned int v0;  // [sp-0xc]
    void* v1;  // [sp-0xc], Other Possible Types: unsigned int
    struct_0 *v2;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v3;  // [sp-0x4]
    struct_0 *v6;  // ecx

    v3 = vvar_2{reg 28};
    v0 = 3435973836;
    v2 = 3435973836;
    v2 = v6;
    if (v2->field_18 >= 16)
        v1 = 1;
    else
        v1 = 0;
    return v1;
}

extern char g_40d329;

void sub_401361()
{
    void* v0;  // [sp-0x4]

    if (g_40d329)
        return;
    v0 = 0;
    g_40d329 = 1;
    sub_40125d(sub_4012f3(0, 0, 0, 1));
    return;
}

extern unsigned int g_40d000;
extern unsigned int g_40d004;

void sub_401366()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_21{reg 28};
    v0 = v4;
    if (g_40d004 != 3141592654 && (g_40d004 & 0xffff0000))
    {
        g_40d000 = ~(g_40d004);
        return;
    }
    v0 = sub_405c60();
    if (v0 == 3141592654)
    {
        v0 = 3141592655;
    }
    else if (!(v0 & 0xffff0000))
    {
        v0 |= (v0 | 18193) * 0x10000;
    }
    g_40d004 = v0;
    g_40d000 = ~(v0);
    return;
}

int sub_40136b()
{
    return 5;
}

void sub_401370(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return;
}

int sub_401375()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v2;  // [bp+0x4]
    unsigned int v4;  // ecx

    v1 = vvar_15{reg 28};
    v0 = v4;
    while (true)
    {
        v0 = malloc(v2);
        if (v0)
            break;
        if (!_callnewh())
        {
            if (v2 == -1)
                sub_40120d();
            else
                sub_4013e8();
        }
    }
    return v0;
}

int sub_40137a()
{
}

void sub_40137f()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0 = v4;
    sub_4013b6();
    sub_40129e();
    sub_4012a8();
    return;
}

typedef struct EXCEPTION_POINTERS {
    struct EXCEPTION_RECORD *ExceptionRecord;
    struct CONTEXT *ContextRecord;
} EXCEPTION_POINTERS;

typedef struct EXCEPTION_RECORD {
    unsigned int ExceptionCode;
    unsigned int ExceptionFlags;
    void* ExceptionRecord;
    void* ExceptionAddress;
    unsigned int NumberParameters;
    unsigned int *ExceptionInformation[15];
} EXCEPTION_RECORD;

typedef struct CONTEXT {
    unsigned int ContextFlags;
    unsigned int Dr0;
    unsigned int Dr1;
    unsigned int Dr2;
    unsigned int Dr3;
    unsigned int Dr6;
    unsigned int Dr7;
    FLOATING_SAVE_AREA FloatSave;
    unsigned int SegGs;
    unsigned int SegFs;
    unsigned int SegEs;
    unsigned int SegDs;
    unsigned int Edi;
    unsigned int Esi;
    unsigned int Ebx;
    unsigned int Edx;
    unsigned int Ecx;
    unsigned int Eax;
    unsigned int Ebp;
    unsigned int Eip;
    unsigned int SegCs;
    unsigned int EFlags;
    unsigned int Esp;
    unsigned int SegSs;
    char ExtendedRegisters[512];
} CONTEXT;

typedef struct FLOATING_SAVE_AREA {
    unsigned int ControlWord;
    unsigned int StatusWord;
    unsigned int TagWord;
    unsigned int ErrorOffset;
    unsigned int ErrorSelector;
    unsigned int DataOffset;
    unsigned int DataSelector;
    char RegisterArea[80];
    unsigned int Spare0;
} FLOATING_SAVE_AREA;

int sub_401384()
{
    unsigned int v0;  // [sp-0x334]
    char v1;  // [bp-0x330], Other Possible Types: unsigned int
    unsigned short v2;  // [sp-0x2a4]
    unsigned short v3;  // [sp-0x2a0]
    unsigned short v4;  // [sp-0x29c]
    unsigned short v5;  // [sp-0x298]
    unsigned int v6;  // [sp-0x294]
    unsigned int v7;  // [sp-0x290]
    unsigned int v8;  // [sp-0x28c]
    unsigned int v9;  // [sp-0x288]
    unsigned int v10;  // [sp-0x284]
    unsigned int v11;  // [sp-0x280]
    unsigned int v12;  // [sp-0x27c]
    unsigned int v13;  // [sp-0x278]
    unsigned short v14;  // [sp-0x274]
    unsigned int v15;  // [sp-0x270]
    char *v16;  // [sp-0x26c]
    unsigned short v17;  // [sp-0x268]
    char v18;  // [bp-0x64], Other Possible Types: unsigned int
    unsigned int v19;  // [sp-0x60]
    unsigned int v20;  // [sp-0x58]
    EXCEPTION_POINTERS v21;  // [sp-0x14]
    unsigned int v23;  // [sp-0xc]
    char v24;  // [sp-0x6]
    char v25;  // [sp-0x5]
    char v26;  // [bp+0x0]
    unsigned int v27;  // [bp+0x4]
    unsigned int v29;  // ecx
    unsigned int v30;  // edx
    unsigned int v31;  // ebx
    unsigned int v32;  // esi
    unsigned int v33;  // edi
    unsigned short v34;  // ss
    unsigned short v35;  // cs
    unsigned short v36;  // ds
    unsigned short v37;  // es
    unsigned short v38;  // fs
    unsigned short v39;  // gs
    unsigned int v40;  // id
    unsigned int v41;  // ac

    if (IsProcessorFeaturePresent(23))
        __fastfail(v27); /* do not return */
    sub_40114f();
    v11 = memset(&v1, 0, 716);
    v10 = v29;
    v9 = v30;
    v8 = v31;
    v7 = v32;
    v6 = v33;
    v17 = v34;
    v14 = v35;
    v5 = v36;
    v4 = v37;
    v3 = v38;
    v2 = v39;
    v0 = x86g_calculate_eflags_all(3, &v1, 12, 0) | 514 | v40 * 0x200000 & 0x200000 | v41 * 0x40000 & 0x40000;
    v15 = v0;
    v1 = 65537;
    v13 = *((int *)&v26);
    v16 = &v26;
    v12 = vvar_9{reg 28};
    memset(&v18, 0, 80);
    v18 = 1073741845;
    v19 = 1;
    v20 = *((int *)&v26);
    *((int *)&v25) = (IsDebuggerPresent() == 1 ? 1 : 0);
    v25 = v25;
    v24 = v25;
    v21.ExceptionRecord = &v18;
    v21.ContextRecord = &v1;
    SetUnhandledExceptionFilter(NULL);
    v23 = UnhandledExceptionFilter(&v21);
    if (v23)
    {
        return;
    }
    else if (!v24)
    {
        sub_40114f();
        return;
    }
    else
    {
        return;
    }
}

int sub_401389(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

extern void g_40d728;

void sub_40138e()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    InitializeSListHead(&g_40d728);
    return;
}

int sub_401393()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 1;
}

void sub_401398(unsigned int a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_3{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    sub_401258();
    sub_4012a8();
    return;
}

void sub_40139d(unsigned int a0, unsigned int a1[262143])
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_11{reg 28};
    if (a1 >= 0x1000)
        sub_4012ad(a0, a1);
    sub_401280(a0);
    sub_4012a8();
    return;
}

int sub_4013a2(unsigned int a0)
{
    char v0;  // [bp+0x0]

    return (unsigned int)sub_4063a0(*((int *)&v0));
}

extern char g_4035a8;

void sub_4013a7(void* a0)
{
    unsigned int v0;  // [bp-0x14]
    char v1;  // [sp-0x12]
    char v2;  // [sp-0x11]
    void* v3;  // [sp-0x10], Other Possible Types: unsigned int
    unsigned int v4[7];  // [sp-0xc], Other Possible Types: unsigned int
    unsigned int v5;  // [sp-0x8]
    unsigned int v6;  // [sp-0x4]
    char v7;  // [bp+0x8]
    unsigned int v9;  // ecx

    v6 = vvar_11{reg 28};
    v0 = 3435973836;
    v3 = 3435973836;
    v4 = 3435973836;
    v5 = 3435973836;
    v5 = v9;
    v4[0] = sub_4013b6();
    if (*((int *)&v7) <= v4[6])
    {
        v3 = sub_401140();
        v4[5] = *((int *)&v7);
        sub_401055(v3, a0, *((int *)&v7));
        v2 = 0;
        sub_401320(v3 + *((int *)&v7), &v2);
    }
    else
    {
        v1 = 0;
        sub_401267(*((int *)&v7), v1);
    }
    v0 = &g_4035a8;
    sub_4012a8();
    return;
}

void sub_4013ac()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0 = v4;
    return;
}

int sub_4013b1(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

int sub_4013b6()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int v3;  // ecx

    v0 = vvar_2{reg 28};
    sub_4010be(v3);
    return sub_4012a8();
}

int sub_4013bb(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return a0;
}

void sub_4013c0()
{
    sub_405d90();
    return;
}

int sub_4013c5(unsigned int *a0, unsigned int *a1)
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]

    v2 = vvar_6{reg 28};
    v0 = 3435973836;
    v1 = 3435973836;
    v0 = (*(a0) < *(a1) ? a1 : a0);
    v0 = v0;
    v1 = v0;
    return v1;
}

int sub_4013ca()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return 2147483647;
}

extern char g_40ada8;

int sub_4013cf()
{
    unsigned int v0;  // [sp-0x4]
    unsigned int *v3;  // ecx

    v0 = vvar_2{reg 28};
    sub_4013fc(v3);
    *(v3) = &g_40ada8;
    return sub_4012a8();
}

void sub_4013d4()
{
    void* v0;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v1;  // [sp-0x4]
    void* v2;  // [bp+0x4]
    char v3;  // [bp+0x8]
    char v4;  // [bp+0xc]
    char v5;  // [bp+0x10]
    unsigned int v7;  // ecx

    v1 = vvar_18{reg 28};
    v0 = v7;
    v0 = 3435973836;
    if (*((int *)&v3) == *((int *)&v5) && !sub_401122(v2, *((int *)&v4), *((int *)&v3)))
        v0 = 1;
    else
        v0 = 0;
    sub_4012a8();
    return;
}

void sub_4013d9()
{
    sub_404530();
    return;
}

void sub_4013de(unsigned int a0)
{
    sub_4044c0();
    return;
}

void sub_4013e3(unsigned int a0, unsigned int a1[262143])
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v3;  // ecx

    v1 = vvar_4{reg 28};
    v0 = v3;
    v0 = 3435973836;
    v0 = v3;
    sub_40139d(a0, a1);
    sub_4012a8();
    return;
}

extern char g_40c8e8;

void sub_4013e8()
{
    unsigned int v0;  // [sp-0x14]
    char v1;  // [bp-0x10]
    unsigned int v2;  // [sp-0x4]

    v2 = vvar_2{reg 28};
    sub_401406();
    v0 = &g_40c8e8;
    _CxxThrowException(&v1);
    return;
}

void sub_4013ed(unsigned int a0)
{
}

int sub_4013f2()
{
    char v0;  // [bp-0x24]
    char v1;  // [bp-0x20]
    unsigned int v2[3];  // [bp-0x1c]
    unsigned int v3[3];  // [bp-0x10]
    unsigned int v4;  // [sp-0x4]
    unsigned int v7;  // ecx
    unsigned int *v8;  // eax

    v4 = vvar_2{reg 28};
    sub_4012e4(3435973836, 3435973836, 3435973836, 3435973836, 3435973836, 3435973836, 3435973836, v7);
    sub_401109();
    sub_4013c5(v3, v2);
    sub_4013ca();
    v8 = sub_40141a(&v0, &v1);
    sub_4012d5(*(v8));
    return sub_4012a8();
}

void sub_4013f7()
{
    sub_4045b0();
    return;
}

extern char g_40ad8c;

void sub_4013fc(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int *v2;  // ecx

    v0 = vvar_3{reg 28};
    *(v2) = &g_40ad8c;
    sub_4010af(v2);
    sub_4012a8();
    return;
}

void sub_401401()
{
    sub_404650();
    return;
}

extern char g_40ae98;

void sub_401406()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int *v1;  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]
    unsigned int *v5;  // ecx

    v2 = vvar_2{reg 28};
    v1 = v5;
    v1 = v5;
    v0 = 1;
    sub_40101e("bad allocation");
    *(v1) = &g_40ae98;
    return;
}

extern unsigned int g_40d004;

int sub_40140b(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_3{reg 28};
    return sub_40103c(a0 ^ g_40d004, ((int)((0 CONCAT g_40d004) % 32) CONCAT (int)((0 CONCAT g_40d004) / 32)) >> 32);
}

void sub_401410()
{
    sub_4056d0();
    return;
}

void sub_401415(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_405330(*((int *)&v0));
    return;
}

int sub_40141a(unsigned int *a0, unsigned int *a1)
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]

    v2 = vvar_6{reg 28};
    v0 = 3435973836;
    v1 = 3435973836;
    v0 = (*(a1) < *(a0) ? a1 : a0);
    v0 = v0;
    v1 = v0;
    return v1;
}

void _start()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    sub_403fb0();
    return;
}

int sub_401424()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    return (unsigned int)_configure_narrow_argv(sub_401393());
}

void sub_401429()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    SetUnhandledExceptionFilter(sub_401195);
    return;
}

extern char g_40ae70;

void sub_40142e(unsigned int a0)
{
    unsigned int v0;  // [sp-0x4]
    unsigned int *v2;  // ecx

    v0 = vvar_3{reg 28};
    *(v2) = &g_40ae70;
    __std_exception_destroy(v2 + 1, v2);
    return;
}

void sub_401433()
{
    unsigned int v0;  // [sp-0x4]

    v0 = vvar_2{reg 28};
    _set_app_type(1);
    return;
}

int sub_401438()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [sp-0x4]
    unsigned int v2;  // [bp+0x4]
    unsigned int v4;  // ecx

    v1 = vvar_9{reg 28};
    sub_401398(v4);
    if (((char)v2 & 1))
    {
        v0 = 32;
        sub_401280(v4);
    }
    return sub_4012a8();
}

void sub_40143d()
{
}

void sub_401442(unsigned int a0, unsigned int a1)
{
    unsigned int v0[2];  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v1;  // [sp-0x4]
    char v2;  // [bp+0xc]
    unsigned int v4;  // ecx
    unsigned int v5[2];  // eax
    unsigned int v6;  // eax
    unsigned int v7[2];  // ecx

    v1 = vvar_4{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0[0] = sub_4010f5(8, a1);
    v5 = sub_401294(*((int *)&v2));
    v6 = v5[1];
    v7 = v0;
    v7[0] = v5[0];
    v7[1] = v6;
    sub_4012a8();
    return;
}

int sub_401447()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // [sp-0x4]
    unsigned int v4;  // ecx

    v1 = vvar_2{reg 28};
    v0 = v4;
    v0 = 3435973836;
    v0 = v4;
    sub_4013b6();
    return sub_4012a8();
}

typedef struct struct_0 {
    char field_0;
    char padding_1[19];
    unsigned int field_14;
} struct_0;

extern unsigned int g_40d004;

void sub_40144c(unsigned int a0)
{
    unsigned int v0;  // [sp-0x2c]
    unsigned int v1;  // [sp-0x28]
    unsigned int v2;  // [sp-0x24]
    unsigned int v3;  // [sp-0x1c]
    struct_0 *v4;  // [bp-0x19]
    unsigned int v5;  // [sp-0x18]
    unsigned int v6;  // [sp-0x14]
    unsigned int v7;  // [sp-0x10]
    unsigned int v8;  // [sp-0xc]
    unsigned int v9;  // [sp-0x8]
    unsigned int v10;  // [sp-0x4]
    char v11;  // [bp+0x3]
    unsigned long v13;  // ldt
    unsigned long v14;  // gdt
    unsigned short v15;  // fs

    v10 = vvar_3{reg 28};
    v9 = 4294967295;
    v8 = sub_408a70;
    v7 = *((int *)x86g_use_seg_selector(v13, v14, (unsigned int)v15, 0));
    v5 = 3435973836;
    v6 = 3435973836;
    v3 = g_40d004 ^ &v10;
    *((unsigned int **)x86g_use_seg_selector(v13, v14, (unsigned int)v15, 0)) = &v7;
    v4 = &v7;
    sub_4010c3(*((int *)&v11));
    v2 = *((int *)&v11);
    v1 = v4->field_14;
    v0 = sub_40105a();
    sub_4013d4();
    *((int *)x86g_use_seg_selector(v13, v14, (unsigned int)v15, 0)) = *((int *)((char *)&v6 + 3));
    sub_4012a8();
    return;
}

void sub_401451()
{
    unsigned int v0[2];  // [sp-0xc]
    unsigned int v1[2];  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]
    unsigned int v5;  // edx
    unsigned int v6[2];  // eax
    unsigned int v7;  // eax
    unsigned int v8[2];  // ecx

    v2 = vvar_2{reg 28};
    v1[0] = sub_4011c2();
    v5 = v1[1];
    v6 = v1;
    v6[0] = v1[0] | 4;
    v6[1] = v5;
    v0[0] = sub_40134d();
    v7 = v0[1];
    v8 = v0;
    v8[0] = v0[0] | 2;
    v8[1] = v7;
    return;
}

int sub_401456()
{
    unsigned int v0;  // [sp-0x4]
    unsigned long v3;  // ldt
    unsigned long v4;  // gdt
    unsigned short v5;  // fs

    v0 = vvar_2{reg 28};
    return *((int *)x86g_use_seg_selector(v3, v4, (unsigned int)v5, 24));
}

extern unsigned int g_40d6fc;

char sub_40145b()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [sp-0x8]
    unsigned int v2;  // [sp-0x4]
    unsigned int v5;  // ecx
    void* v6;  // eax

    v2 = vvar_25{reg 28};
    if (!sub_401104())
        return 0;
    v1 = *((int *)(sub_401456() + 4));
    while (true)
    {
        v5 = v1;
        g_40d6fc = v5;
        if (!g_40d6fc)
        {
            g_40d6fc = v5;
            v6 = 0;
        }
        else
        {
            g_40d6fc = v5;
            v6 = g_40d6fc;
        }
        v0 = v6;
        if (!v0)
        {
            return 0;
        }
        else if (v1 == v0)
        {
            return 1;
        }
    }
}

void sub_401460(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_404370(*((int *)&v0));
    return;
}

typedef struct MEMORY_BASIC_INFORMATION {
    void* BaseAddress;
    void* AllocationBase;
    unsigned int AllocationProtect;
    unsigned int *RegionSize;
    unsigned int State;
    unsigned int Protect;
    unsigned int Type;
} MEMORY_BASIC_INFORMATION;

typedef struct struct_2 {
    unsigned short field_0;
    char padding_2[58];
    unsigned int field_3c;
} struct_2;

typedef struct struct_4 {
    unsigned int field_0;
    char padding_4[2];
    unsigned short field_6;
    char padding_8[12];
    unsigned short field_14;
} struct_4;

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;

typedef struct struct_3 {
    struct struct_0 *field_0;
    char padding_4[4];
    struct struct_0 *field_8;
    struct struct_0 *field_c;
} struct_3;

typedef struct struct_1 {
    char padding_0[112];
    struct struct_0 *field_70;
} struct_1;

extern unsigned int g_40d748;
extern char g_40d74d;

void sub_401465(unsigned int a0, unsigned short *a1, unsigned int a2, void* *a3)
{
    void* v0;  // [sp-0xd4]
    void* v1;  // [sp-0xd0]
    void* v2;  // [sp-0xb4]
    char *v3;  // [sp-0xb0]
    char *v4;  // [sp-0xac]
    char *v5;  // [sp-0xa8]
    char *v6;  // [sp-0xa4]
    void* v7;  // [sp-0xa0]
    void* v8;  // [sp-0x6c], Other Possible Types: char *
    void* v9;  // [sp-0x68]
    void* v10;  // [sp-0x64]
    char *v11;  // [sp-0x60]
    MEMORY_BASIC_INFORMATION v12;  // [bp-0x50]
    char v14;  // [bp-0x34]
    char v15;  // [bp-0x30]
    char v16;  // [bp-0x2c]
    void* v17;  // [sp-0x28], Other Possible Types: unsigned int
    char v18;  // [bp-0x24]
    char v19;  // [bp-0x20]
    char v20;  // [bp-0x1c]
    char v21;  // [bp-0x18]
    char v22;  // [bp-0x14]
    unsigned int *v23;  // [sp-0x10], Other Possible Types: unsigned int
    struct_3 **v24;  // [sp-0xc]
    char v25;  // [bp-0x8]
    unsigned int v26;  // [sp-0x4]
    char v27;  // [bp+0x14]
    void* v29;  // esi
    struct_2 *v30;  // eax
    struct_4 *v31;  // ecx
    unsigned int v32;  // esi
    unsigned int v33;  // edi
    void* v34;  // ebx
    void* v35;  // eax
    unsigned int v36[2];  // ecx
    unsigned int v37;  // 4121
    unsigned int v38;  // eax
    struct_0 **v39;  // esi
    unsigned int v40;  // edi
    unsigned int v41;  // esi
    unsigned int v42;  // ebx
    unsigned int *v43;  // edi
    unsigned int v44;  // eax
    unsigned int *v45;  // edi
    unsigned int v46;  // ebx
    unsigned int v47;  // eax
    struct_1 **v48;  // edi

    v26 = vvar_120{reg 28};
    *(a3) = 0;
    v29 = a0 - 1;
    *(a1) = 0;
    if (!VirtualQuery(v29, &v12, 0x1c))
    {
        return;
    }
    else if (__vcrt_GetModuleFileNameW(v12.AllocationBase, *((int *)&v27)))
    {
        v30 = v12.AllocationBase;
        if (v30->field_0 != 23117)
        {
            return;
        }
        else if (v30->field_3c > 0)
        {
            v31 = v30->field_3c + (char *)v30;
            if (v31->field_0 != 17744)
                return;
            v32 = v29 - v30;
            v33 = v31->field_6;
            v34 = 0;
            v35 = 0;
            if (v33)
            {
                v36 = &v31[1].padding_8[2 + v31->field_14];
                do
                {
                } while ((v32 < v36[1] || (v34 = v32 - v36[1], v32 >= v36[0])) && (v35 += 1, v36 += 40, v35 < v33));
            }
            if (!v35)
                return;
            v37 = g_40d74d;
            v23 = v35 + 1;
            if ((char)v37)
            {
                v38 = g_40d748;
            }
            else if (!g_40d748)
            {
                v38 = sub_406400();
                g_40d748 = v38;
                if (!g_40d748)
                    return;
                g_40d74d = 1;
            }
            else
            {
                return;
            }
            v39 = GetProcAddress(v38, "PDBOpenValidate5");
            if (!v39)
                return;
            v10 = 0;
            v9 = 0;
            v8 = &v14;
            sub_4011f4();
            if (!v39(*((int *)&v27), 0, 0, 0))
                return;
            v17 = 0;
            sub_4011f4();
            if (*((int *)*((int *)*((int *)&v20)))(v40, v41, v42, v12.BaseAddress) != 20091201)
            {
                sub_4011f4();
                *((int *)(*((int *)*((int *)&v20)) + 44))(v9, v10, v11, v40);
                return;
            }
            v11 = &v18;
            v10 = "r";
            v9 = 0;
            sub_4011f4();
            if (*((int *)(*((int *)*((int *)&v20)) + 28))(0, "r", &v18, v40))
            {
                v8 = 0;
                sub_4011f4();
                if (*((int *)(*((int *)*((int *)&v18)) + 32))(v23, v34, &v21, 0))
                {
                    v24 = 0;
                    sub_4011f4();
                    if ((char)*((int *)(*((int *)*((int *)&v21)) + 104))(&v24, v23, v34, &v21) && v24)
                    {
                        v43 = 0;
                        sub_4011f4();
                        if (*(v24)->field_8(&v24, v23, v34, &v21))
                        {
                            while (true)
                            {
                                v7 = 0;
                                v6 = &v22;
                                v5 = &v16;
                                v4 = &v25;
                                v3 = &v19;
                                v2 = 0;
                                sub_4011f4();
                                if (!(char)*(v24)->field_c(0, &v19, &v25, &v16))
                                    break;
                                if (*((short *)&v25) == v23 && *((int *)&v19) <= v34 && v34 < *((int *)&v16) + *((int *)&v19))
                                {
                                    v44 = *((int *)&v22);
                                    if (!(v44 && v44 < 536870911))
                                        break;
                                    v23 = HeapAlloc(GetProcessHeap(), 0, v44 * 8);
                                    if (!v23)
                                        break;
                                    sub_4011f4();
                                    v45 = v23;
                                    v43 = v45;
                                    if ((char)*(v24)->field_c(&v15, 0, 0, 0) && (v46 = v34 - *((int *)&v19), v43 = v45, v46 >= *(v45)))
                                    {
                                        v47 = 1;
                                        if (*((int *)&v22) > 1)
                                        {
                                            do
                                            {
                                            } while (v46 >= v45[2 * v47] && (v47 += 1, v47 < *((int *)&v22)));
                                        }
                                        v48 = *((int *)&v21);
                                        v1 = 0;
                                        v0 = 0;
                                        *(a3) = v45[1 + 2 * v47] & 16777215;
                                        sub_4011f4();
                                        v43 = v23;
                                        if ((char)*(v48)->field_70(*((int *)&v15), a1, &a2, 0))
                                        {
                                            v17 = 1;
                                            v23 = v23;
                                            goto LABEL_406be3;
                                        }
                                    }
                                }
                                sub_4011f4();
                                if (!*(v24)->field_8(0, &v19, &v25, &v16))
                                {
                                    v43 = 0;
                                    goto LABEL_406be3;
                                }
                            }
                        }
                        else
                        {
LABEL_406be3:
                            HeapFree(GetProcessHeap(), 0, v43);
                        }
                        sub_4011f4();
                        *(v24)->field_0(v2, v3, v4, v5);
                    }
                    sub_4011f4();
                    *((int *)(*((int *)*((int *)&v21)) + 64))(v2, v3, v4, v5);
                }
                sub_4011f4();
                *((int *)(*((int *)*((int *)&v18)) + 56))(v2, v3, v4, v5);
            }
        }
        else
        {
            return;
        }
    }
    else
    {
        return;
    }
}

void sub_40146a(unsigned int a0)
{
    char v0;  // [bp+0x0]

    sub_4053c0(*((int *)&v0));
    return;
}

void sub_401b4f()
{
}

void sub_4020cc()
{
    char v1[4];  // eax

    *((char *[4])&v1[0]) = *(v1) + (char *)v1;
    v1[0] = v1[0] + (char)v1;
}

typedef struct struct_0 {
    char padding_0[78];
    char field_4e;
} struct_0;

int sub_4020d7()
{
    char *v1;  // eax
    char v2;  // 4101
    unsigned int v3;  // ecx
    struct_0 *v4;  // edi
    char v5;  // 4099
    unsigned int v6;  // ebx
    unsigned int v7;  // cc_dep1
    unsigned int v8;  // cc_dep2

    *((int *)(v1 * 2)) = *((int *)(v1 * 2)) + 1;
    v2 = *(v1);
    *(v1) = *(v1) + (char)v1;
    if ((char)(v3 - 1 & x86g_calculate_condition(5, 1, (unsigned int)v2, v1 & 255, 0) & 1))
        [D] Unsupported jumpkind Ijk_SigTRAP at address 4202750()
    v5 = v4->field_4e;
    v4->field_4e = v5 + (char)v6;
    v7 = v5;
    v8 = v6 & 255;
    if (!((char)x86g_calculate_condition(6, 1, (unsigned int)v5, v6 & 255, 0)))
        goto LABEL_0x402144;
    if ((char)x86g_calculate_condition(0, 1, v7, v8, 0))
        goto LABEL_0x40215b;
    if ((Not (Not Conv(32->1, x86g_calculate_condition(0x2<32>, 0x1<32>, vvar_13{reg 44}, vvar_14{reg 48}, 0x0<32>))))) { Goto None } else { Goto None }
    [D] Unsupported jumpkind Ijk_SigTRAP at address 4202729()
}

void sub_402b40()
{
    char v1[4];  // eax

    *((char *[4])&v1[0]) = *(v1) + (char *)v1;
    v1[0] = v1[0] + (char)v1;
}

typedef struct struct_0 {
    char padding_0[80];
    char field_50;
} struct_0;

int sub_402b4b()
{
    unsigned int *v1;  // ecx
    char *v2;  // eax
    unsigned int v3;  // ebx
    char v4;  // dl
    struct_0 *v5;  // edi
    char v6;  // 4109

    *(v1) = *(v1) + 1;
    *(v2) = *(v2) + (char)v2;
    *((char *)(v3 + vvar_4{reg 28} + 64)) = *((char *)(v3 + vvar_4{reg 28} + 64)) + v4;
    v6 = v5->field_50;
    v5->field_50 = v6 + (char)v3;
    if ((char)x86g_calculate_condition(2, 1, (unsigned int)v6, v3 & 255, 0))
        goto LABEL_0x402bc7;
    if ((char)x86g_calculate_condition(8, 1, (unsigned int)v6, v3 & 255, 0))
        2318168417();
}

void sub_402c70(char a0)
{
    char v1[4];  // eax
    char v2;  // 4102

    *((char *[4])&v1[0]) = *(v1) + (char *)v1;
    v2 = v1[0];
    v1[0] = v1[0] + (char)v1;
    if ((char)x86g_calculate_condition(8, 1, (unsigned int)v2, v1 & 255, 0))
        [D] Unsupported jumpkind Ijk_SigTRAP at address 4205730()
}

typedef struct struct_0 {
    char padding_0[77];
    char field_4d;
} struct_0;

int sub_402c7b()
{
    char *v1;  // eax
    struct_0 *v2;  // edi
    char v3;  // 4109
    unsigned int v4;  // ebx

    *((int *)(v1 * 2)) = *((int *)(v1 * 2)) + 1;
    *(v1) = *(v1) + (char)v1;
    v3 = v2->field_4d;
    v2->field_4d = v2->field_4d + (char)v4;
    if ((char)x86g_calculate_condition(2, 1, (unsigned int)v3, v4 & 255, 0))
        goto LABEL_0x402c89;
    else
        goto LABEL_0x402cf4;
}

void sub_402c8a(char a0, char a0)
{
    [D] Unsupported jumpkind Ijk_SigTRAP at address 4205706()
}

int sub_402e00()
{
    char v1[4];  // eax
    char *v2;  // esi
    unsigned int v3;  // ecx

    *((char *[4])&v1[0]) = *(v1) + (char *)v1;
    v1[0] = v1[0] + (char)v1;
    *(v2) = *(v2) | (char)(v3 >> 8);
}

typedef struct struct_0 {
    char padding_0[80];
    char field_50;
} struct_0;

int sub_402e0b()
{
    unsigned int *v1;  // ecx
    char *v2;  // eax
    unsigned int v3;  // esi
    char v4;  // dl
    struct_0 *v5;  // edi
    char v6;  // 4110
    unsigned int v7;  // ebx

    *(v1) = *(v1) + 1;
    *(v2) = *(v2) + (char)v2;
    *((char *)(v3 + vvar_4{reg 28})) = *((char *)(v3 + vvar_4{reg 28})) + v4;
    v6 = v5->field_50;
    v5->field_50 = v6 + (char)v7;
    if ((char)x86g_calculate_condition(2, 1, (unsigned int)v6, v7 & 255, 0))
        [D] Unsupported jumpkind Ijk_SigTRAP at address 4206215()
    if ((char)x86g_calculate_condition(8, 1, (unsigned int)v6, v7 & 255, 0))
        goto LABEL_0x402e93;
}

void sub_403214(char a0)
{
    char v1[4];  // eax

    *((char *[4])&v1[0]) = *(v1) + (char *)v1;
    v1[0] = v1[0] + (char)v1;
}

typedef struct struct_0 {
    char padding_0[76];
    char field_4c;
} struct_0;

int sub_40321f()
{
    char *v1;  // eax
    char *v2;  // edx
    struct_0 *v3;  // edi
    char v4;  // bl

    *((int *)(v1 * 2)) = *((int *)(v1 * 2)) + 1;
    *(v1) = *(v1) + (char)v1;
    *(v2) = *(v2) - (char)(v2 >> 8);
    v3->field_4c = v3->field_4c + v4;
}

void sub_40322c()
{
    [D] Unsupported jumpkind Ijk_SigTRAP at address 4207148()
}

void sub_403420()
{
    return;
}

void sub_403430()
{
    return;
}

extern unsigned int g_40d004;

void sub_403600()
{
    unsigned int v0;  // [sp-0x18]
    unsigned int v1;  // [sp-0x14]
    unsigned int v2;  // [sp-0x10]
    unsigned int v3;  // [sp-0xc]
    unsigned int v4;  // [sp-0x8]
    char v5;  // [bp-0x4]
    unsigned long v7;  // ldt
    unsigned long v8;  // gdt
    unsigned short v9;  // fs
    unsigned int v10;  // ecx

    v4 = 4294967295;
    v3 = sub_408ad0;
    v2 = *((int *)x86g_use_seg_selector(v7, v8, (unsigned int)v9, 0));
    v1 = v10;
    v1 = 3435973836;
    v0 = g_40d004 ^ &v5;
    *((unsigned int **)x86g_use_seg_selector(v7, v8, (unsigned int)v9, 0)) = &v2;
    v1 = v10;
    sub_401172();
    sub_40105a();
    *((unsigned int *)x86g_use_seg_selector(v7, v8, (unsigned int)v9, 0)) = v2;
    sub_4012a8();
    return;
}

void sub_403740()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v2;  // ecx

    v0 = sub_4010eb(v2);
    sub_401041("animal: %s\n");
    sub_4012a8();
    return;
}

void sub_403790()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v2;  // ecx

    v0 = sub_4010eb(v2);
    sub_401041("bear: %s\n");
    sub_4012a8();
    return;
}

void sub_4037e0()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v2;  // ecx

    v0 = sub_4010eb(v2);
    sub_401041("cat: %s\n");
    sub_4012a8();
    return;
}

int sub_403908()
{
    char v1[4];  // eax
    char v2;  // 4102
    char *v3;  // ecx
    unsigned int v4;  // ebx

    *((char *[4])&v1[0]) = *(v1) + (char *)v1;
    v2 = v1[0];
    v1[0] = v1[0] + (char)v1;
    *(v3) = *(v3) + (char)(v4 >> 8) + (char)(x86g_calculate_eflags_c(1, (unsigned int)v2, v1 & 255, 0) & 1);
}

typedef struct struct_0 {
    char padding_0[65];
    char field_41;
} struct_0;

int sub_403913()
{
    char *v1;  // eax
    struct_0 *v2;  // edi
    char v3;  // bl

    *((int *)(v1 * 2)) = *((int *)(v1 * 2)) + 1;
    *(v1) = *(v1) + (char)v1;
    v2->field_41 = v2->field_41 + v3;
}

void sub_403960()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v2;  // ecx

    v0 = v2;
    v0 = 3435973836;
    v0 = v2;
    sub_401041("meow\n");
    sub_4012a8();
    return;
}

void sub_4039d0()
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v2;  // ecx

    v0 = v2;
    v0 = 3435973836;
    v0 = v2;
    sub_401041("roar\n");
    sub_4012a8();
    return;
}

void sub_403aee(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10)
{
    char v0;  // [bp+0x0]

    public: __thiscall std::_Lockit::_Lockit(*((int *)&v0), a0, a1, a2, a3, a4, a5, a6, a7, a8, a9);
    return;
}

void sub_403af4()
{
    public: __thiscall std::_Lockit::~_Lockit();
    return;
}

typedef struct struct_0 {
    char field_0;
    char padding_1[3];
    struct struct_0 *field_4;
    char padding_8[4];
    unsigned int field_c;
} struct_0;

void sub_403b80()
{
    unsigned int v0;  // [sp-0x10]
    struct_0 **v1;  // [bp+0x4]
    struct_0 *v2;  // ecx
    unsigned int v3;  // edx
    struct_0 **v4;  // edx
    unsigned int v5;  // edi
    unsigned int v6;  // edx
    struct_0 *v7;  // ecx

    if (!v2)
    {
        return;
    }
    else if (v3)
    {
        v4 = v1;
        if (!v4)
            return;
        v0 = v5;
        v6 = v3;
        for (v7 = v2; v6; v7 = &v7->padding_1)
        {
            v6 -= 1;
            v7->field_0 = 204;
        }
        v2->field_4 = *(v4);
        v2->field_c = v3;
        *(v4) = v2;
        return;
    }
    else
    {
        return;
    }
}

typedef struct struct_0 {
    unsigned int field_0;
    struct struct_1 *field_4;
} struct_0;

typedef struct struct_2 {
    unsigned int field_0;
    struct struct_2 *field_4;
    char padding_8[4];
    unsigned int field_c;
    char padding_10[4];
    unsigned int field_14;
    unsigned int field_18;
    unsigned int field_1c;
} struct_2;

typedef struct struct_1 {
    unsigned int field_0;
} struct_1;

void sub_403bc0()
{
    unsigned int v0;  // [sp-0x1c]
    unsigned int *v1;  // [sp-0x8]
    char v2;  // [bp+0x0]
    struct_2 *v3;  // [bp+0x4]
    struct_0 *v4;  // edx
    void* v5;  // esi
    unsigned int *v6;  // edi
    unsigned int *v7;  // ecx
    unsigned int *v8;  // ecx
    struct_2 *v9;  // esi
    void* v10;  // edi
    struct_2 *v11;  // esi
    struct_2 *v13;  // esi

    if (v4)
    {
        v5 = 0;
        if (v4->field_0 > 0)
        {
            v6 = 0;
            v1 = v7 + 1;
            do
            {
                v8 = v4->field_4;
                if (*((int *)(*((int *)(v8 + v6)) + (char *)v1)) != 3435973836 || *((int *)(*((int *)(v8 + v6 + 4)) + *((int *)(v8 + v6)) + (char *)v7)) != 3435973836)
                {
                    v0 = *((int *)(v8 + v6 + 8));
                    sub_4011e5(*((int *)&v2));
                }
            } while ((v5 += 1, v6 += 12, v5 < v4->field_0));
        }
    }
    v9 = v3;
    v10 = 0;
    if (!v9)
        return;
    v11 = v9;
    do
    {
        v10 += 1;
        v11 = v11->field_4;
    } while (v11->field_4);
    if (!v9)
        return;
    do
    {
        v13 = v9;
        if (v13->field_0 != 3435973836 || v13->field_14 != 3435973836 || v13->field_18 != 3435973836 || v13->field_1c != 3435973836)
        {
            v0 = v10;
            sub_40109b(*((int *)&v2), v13);
        }
        if (*((int *)(-4 + v13->field_c + (char *)&v13->field_0)) != 3435973836)
        {
            v0 = v10;
            sub_40109b(*((int *)&v2), v13);
        }
        v10 -= 1;
        v9 = v13->field_4;
    } while (v13->field_4);
    return;
}

int sub_403d6d()
{
    unsigned int v0;  // [sp-0x10]
    unsigned int v1;  // [sp-0xc]
    unsigned int v2;  // [sp-0x8]
    unsigned int v3;  // [sp-0x4]
    unsigned int v5;  // [bp+0x100008]
    unsigned int v6;  // edx
    unsigned int v7;  // ebx
    unsigned int v8;  // esi
    unsigned int v9;  // edi

    v3 = v6;
    v2 = v7;
    v1 = v8;
    v0 = v9;
    sub_401302(v5, 0);
}

char sub_403d88()
{
    char v0;  // [bp-0x4]
    char v2;  // al
    unsigned int v3;  // cc_op
    unsigned int v4;  // cc_dep1
    unsigned int v5;  // cc_dep2
    unsigned int v6;  // cc_ndep

    return v2 - (&v0)[v2] - (char)(x86g_calculate_eflags_c(v3, v4, v5, v6) & 1);
}

extern char g_40ae64;

void sub_403e40()
{
    unsigned int *v0;  // [sp-0x8]
    unsigned int *v2;  // ecx

    v0 = v2;
    v0 = v2;
    *(v0) = &g_40ae64;
    return;
}

void sub_403e60()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [bp+0x4]
    unsigned int v2;  // ecx

    sub_40122b(v2);
    if (!((char)v1 & 1))
        return;
    v0 = 12;
    sub_401280(v2);
    return;
}

int sub_403ea0()
{
    unsigned int v0;  // [sp-0x10]
    unsigned int v1;  // [sp-0x8]

    sub_401433();
    sub_401316();
    sub_40116d();
    v1 = 1;
    if (!sub_401023())
    {
        v1 = 7;
        sub_401384();
    }
    sub_401181();
    sub_401299(sub_401343);
    if (sub_401424())
        sub_401384();
    sub_40138e();
    if (sub_4010a5())
    {
        v0 = sub_4013c0;
        __setusermatherr();
    }
    sub_401014();
    sub_4010fa();
    sub_4012f8();
    v0 = sub_401168();
    _configthreadlocale();
    if (sub_40113b())
        sub_4012cb();
    sub_401046();
    if (!sub_401339())
        return 0;
    v0 = 7;
    sub_401384();
    return 0;
}

int sub_403f80()
{
    sub_401451();
    return 0;
}

void sub_403f90()
{
    unsigned int v0;  // [sp-0x8]

    sub_401429();
    v0 = sub_401253();
    _set_new_mode();
    return;
}

void sub_403fb0()
{
    sub_401366();
    sub_403fd0();
    return;
}

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;

extern unsigned int g_40a000;
extern char g_40a208;
extern unsigned int g_40a30c;
extern char g_40a618;
extern char g_40c8c8;
extern unsigned int g_40d004;
extern unsigned int g_40d6f8;

void sub_403fd0()
{
    void* v0;  // [sp-0x74]
    unsigned int v1;  // [sp-0x60]
    unsigned int v2;  // [sp-0x58]
    unsigned int v3;  // [sp-0x54]
    unsigned int v4;  // [sp-0x50]
    unsigned int v5;  // [sp-0x4c]
    unsigned int v6;  // [sp-0x44]
    struct_0 **v7;  // [sp-0x40]
    unsigned int v8;  // [sp-0x3c]
    unsigned int v9;  // [sp-0x30]
    struct_0 **v10;  // [sp-0x2c]
    unsigned int *v11;  // [sp-0x28]
    struct_0 **v12;  // [sp-0x24]
    char v13;  // [sp-0x1e]
    char v14;  // [sp-0x1d]
    char *v15;  // [sp-0x1c]
    unsigned int v16;  // [sp-0x14]
    unsigned int v17;  // [sp-0x10]
    unsigned int v18;  // [sp-0xc]
    void* v19;  // [sp-0x8], Other Possible Types: unsigned int
    char v20;  // [bp-0x4]
    unsigned long v22;  // ldt
    unsigned long v23;  // gdt
    unsigned short v24;  // fs
    unsigned int v25;  // ebx
    unsigned int v26;  // esi
    unsigned int v27;  // edi

    v19 = 4294967294;
    v18 = &g_40c8c8;
    v17 = sub_406340;
    v16 = *((int *)x86g_use_seg_selector(v22, v23, (unsigned int)v24, 0));
    v5 = v25;
    v4 = v26;
    v3 = v27;
    v18 ^= g_40d004;
    v2 = g_40d004 ^ &v20;
    *((unsigned int **)x86g_use_seg_selector(v22, v23, (unsigned int)v24, 0)) = &v16;
    v15 = &v2;
    if (!sub_401159(1))
        sub_401384();
    v14 = 0;
    v19 = 0;
    v13 = sub_40145b();
    if (g_40d6f8 == 1)
    {
        v1 = 7;
        sub_401384();
        goto LABEL_4040a1;
    }
    if (!g_40d6f8)
    {
        g_40d6f8 = 1;
        v1 = &g_40a618;
        if (_initterm_e(&g_40a30c))
        {
            v8 = 255;
            v19 = 4294967294;
        }
        else
        {
            v1 = &g_40a208;
            _initterm(&g_40a000);
            g_40d6f8 = 2;
LABEL_4040a1:
            sub_4010b4();
            v12 = sub_4011e0();
            if (*(v12) && sub_401217(v12))
            {
                v7 = &*(v12)->field_0;
                v10 = v7;
                sub_4011f4();
                v10(0, 2);
            }
            v11 = sub_4012d0();
            if (*(v11) && sub_401217(v11))
                _register_thread_local_exe_atexit_callback();
            v9 = sub_4042a0();
            if (!sub_401226())
                exit(v9);
            if (!v14)
                _cexit();
            v0 = 0;
            sub_4012ee(1);
            v6 = v9;
            v19 = 4294967294;
        }
    }
    else
    {
        v14 = 1;
        goto LABEL_4040a1;
    }
    *((unsigned int *)x86g_use_seg_selector(v22, v23, (unsigned int)v24, 0)) = v16;
    return;
}

void sub_40416a()
{
    unsigned int v1;  // [bp+0x100000]

    v1 = 4294967294;
}

typedef struct struct_0 {
    unsigned int field_0;
} struct_0;

void sub_404173()
{
    struct_0 **v0;  // [sp-0x4]
    unsigned int v2;  // [bp+0xfffd4]
    struct_0 **v3;  // [bp+0xffff0]

    v2 = *(v3)->field_0;
    v0 = v3;
    _seh_filter_exe(v2);
    return;
}

extern char g_40419c;
extern char g_4041ac;
extern char g_4041b9;

int sub_40418e()
{
    char v0;  // [bp+0x0]
    unsigned int v2;  // [bp+0xfffc0]
    unsigned int v3;  // [bp+0xfffd0]
    unsigned int v4;  // [bp+0xfffd4]
    char v5;  // [bp+0xfffeb]
    unsigned int v6;  // [bp+0xfffec]
    unsigned int v7;  // [bp+0x100000]

    vvar_7{reg 24} = v6;
    v3 = v4;
    vvar_1{reg 24} = vvar_7{reg 24} - 4;
    *((char **)(vvar_7{reg 24} - 4)) = &g_40419c;
    if (!sub_401226())
    {
        vvar_17{reg 24} = vvar_1{reg 24} - 4;
        *((unsigned int *)(vvar_1{reg 24} - 4)) = v3;
        vvar_1{reg 24} = vvar_17{reg 24} - 4;
        *((char **)(vvar_17{reg 24} - 4)) = &g_4041ac;
        _exit(*((int *)&v0));
    }
    if (!v5)
    {
        *((char **)(vvar_1{reg 24} - 4)) = &g_4041b9;
        _c_exit();
    }
    v2 = v3;
    v7 = 4294967294;
}

void sub_4041cb()
{
    unsigned int v1;  // [bp+0x100000]

    v1 = 4294967294;
}

int sub_4042a0()
{
    unsigned int v0;  // [sp-0x10]
    unsigned int *v2;  // eax

    v2 = __p___argv(_get_initial_narrow_environment());
    v0 = *((int *)__p___argc(*(v2)));
    return (unsigned int)sub_401348();
}

extern char g_40ae98;

void sub_404370(unsigned int a0)
{
    unsigned int *v0;  // [sp-0x8]
    unsigned int *v1;  // ecx

    v0 = v1;
    v0 = v1;
    sub_4010aa(a0);
    *(v0) = &g_40ae98;
    return;
}

extern char g_40aebc;

void sub_4043d0(unsigned int a0)
{
    unsigned int *v0;  // [sp-0x8]
    unsigned int *v1;  // ecx

    v0 = v1;
    v0 = v1;
    sub_401460(a0);
    *(v0) = &g_40aebc;
    return;
}

void sub_4044c0()
{
    unsigned int v1;  // ecx

    sub_40142e(v1);
    return;
}

void sub_4044e0()
{
    unsigned int v1;  // ecx

    sub_4013de(v1);
    return;
}

void sub_404530()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [bp+0x4]
    unsigned int v2;  // ecx

    sub_4013de(v2);
    if (!((char)v1 & 1))
        return;
    v0 = 12;
    sub_401280(v2);
    return;
}

void sub_404570()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [bp+0x4]
    unsigned int v2;  // ecx

    sub_4011f9(v2);
    if (!((char)v1 & 1))
        return;
    v0 = 12;
    sub_401280(v2);
    return;
}

void sub_4045b0()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [bp+0x4]
    unsigned int v2;  // ecx

    sub_40142e(v2);
    if (!((char)v1 & 1))
        return;
    v0 = 12;
    sub_401280(v2);
    return;
}

typedef struct struct_0 {
    char padding_0[4];
    unsigned int field_4;
} struct_0;

void sub_404650()
{
    unsigned int v0;  // [sp-0xc]
    struct_0 *v2;  // ecx

    if (!v2->field_4)
    {
        v0 = "Unknown exception";
        return;
    }
    v0 = v2->field_4;
    return;
}

char sub_4046b0(unsigned int a0)
{
    unsigned int v0;  // [sp-0x20]
    unsigned int v1;  // [sp-0x1c]
    char *v2;  // [sp-0x18]
    char v3;  // [bp-0x5]

    v1 = a0;
    v2 = &v3;
    v3 = 0;
    v0 = 4097;
    sub_404d00(&v0);
    return v3;
}

char sub_404700(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    unsigned int v0;  // [sp-0x20]
    unsigned int v1;  // [sp-0x1c]
    unsigned int v2;  // [sp-0x18]
    unsigned int v3;  // [sp-0x14]
    char *v4;  // [sp-0x10]
    unsigned int v5;  // [sp-0xc]
    char v6;  // [bp-0x5]

    v1 = a0;
    v2 = a1;
    v3 = a2;
    v4 = &v6;
    v5 = a3;
    v6 = 0;
    v0 = 4098;
    sub_404d00(&v0);
    return v6;
}

void sub_4049d0(char *a0, unsigned int a1, unsigned int a2)
{
    unsigned int v0;  // [sp-0x18]
    unsigned int v1;  // [sp-0xc]
    unsigned int v2;  // [sp-0x8]
    char v3;  // [bp+0x10]
    unsigned int v4;  // ecx
    unsigned int v5;  // ebx
    void* v6;  // edx
    char *v7;  // esi
    void* v8;  // edi
    char *v9;  // ebx
    unsigned int v10;  // eax
    char *v11;  // ecx

    v2 = v4;
    v1 = v5;
    v6 = 0;
    v7 = a0;
    v8 = 0;
    a2 -= a0;
    a2 = a2;
    while (true)
    {
        v9 = a2;
        v10 = *((int *)&v3);
        v2 = v6;
        if (*((int *)&v3) >= 16)
            v10 = 16;
        v11 = a1 + v8;
        if (v6 >= v10)
            break;
        v0 = *((char *)(v9 + v7));
        sub_40132f(v11, 49 - v8, "%.2X ");
        *(v7) = *((char *)(v9 + v7));
        v6 = v2 + 1;
        v7 += 1;
        v8 += 3;
        a2 = a2;
    }
    *(v7) = 0;
    *(v11) = 0;
    return;
}

int sub_404a60(char *a0)
{
    char *v0;  // 4096
    char *v1;  // eax

    v0 = a0;
    do
    {
        v1 = v0;
        v0 = v1 + 1;
    } while (*(v1));
    return v1 + 1 - a0 - 1;
}

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;

extern unsigned int g_40aefc[4];
extern unsigned int g_40d004;

int sub_404a80()
{
    unsigned int v0;  // [sp-0xe40]
    char v1;  // [bp-0xe3c]
    struct_0 **v2;  // [sp-0xe38]
    unsigned int v3;  // [sp-0xe34]
    char v4;  // [bp-0xe30]
    char v5;  // [bp-0xa30]
    char v6;  // [bp-0x724]
    char v7;  // [bp-0x418]
    char v8;  // [bp-0x210]
    unsigned int v9;  // [sp-0x8]
    char v10;  // [bp-0x4]
    unsigned int v11;  // [bp+0x4]
    char v12;  // [bp+0x8]
    char v13;  // [bp+0xc]
    char v14;  // [bp+0x10]
    unsigned int v15;  // esi
    unsigned int v16;  // edi
    unsigned int v17;  // esi
    unsigned int v18;  // ebx
    struct_0 **v19;  // edi
    unsigned int v20;  // eax
    char *v21;  // ebx
    char v22;  // al
    char *v23;  // esi
    unsigned int v24;  // eax
    char *v25;  // edi

    v9 = g_40d004 ^ &v10;
    v15 = v11;
    v3 = *((int *)&v13);
    v0 = *((int *)&v14);
    v2 = 0;
    v19 = sub_40119f(v15, v16, v17, v18);
    if (!v19)
        v2 = sub_401032();
    v20 = MultiByteToWideChar(65001, 0, v0, -1, NULL, 0);
    if (v20 >= 0x200 || (v21 = &v4, !MultiByteToWideChar(65001, 0, v0, -1, &v4, v20)))
        v21 = L"Runtime Check Error.\n\r Unable to display RTC Message.";
    if (sub_4046b0(4098))
    {
        if (!sub_404700(v3, g_40aefc[v3], v15, v21))
        {
LABEL_404b4a:
            if (!v2 && !v19)
                [D] Unsupported jumpkind Ijk_SigTRAP at address 4213868()
            if (v22 && IsDebuggerPresent())
                [D] Unsupported jumpkind Ijk_SigTRAP at address 4213868()
            sub_401465(v15 - 5, &v8, 260, &v1);
            if (v19)
            {
                sub_4011f4();
                v24 = v19(*((int *)&v12), &v8, *((int *)&v1), &v7, L"Run-Time Check Failure #%d - %s", v3);
            }
            else
            {
                v23 = "Unknown Filename";
                if (WideCharToMultiByte(65001, 0, &v8, -1, &v6, 778, NULL, NULL))
                    v23 = &v6;
                v25 = "Unknown Module Name";
                if (WideCharToMultiByte(65001, 0, &v7, -1, &v5, 778, NULL, NULL))
                    v25 = &v5;
                sub_4011f4();
                v24 = v2(*((int *)&v12), v23, *((int *)&v1), v25, "Run-Time Check Failure #%d - %s", v3);
            }
            if (v24 == 1)
                [D] Unsupported jumpkind Ijk_SigTRAP at address 4213868()
        }
        sub_40123f();
        return;
    }
    v22 = 1;
    goto LABEL_404b4a;
}

extern char g_40c998;
extern unsigned int g_40d004;

void sub_404d00(unsigned int **a0)
{
    unsigned int v0;  // [sp-0x2c]
    char *v1;  // [sp-0x1c]
    unsigned int v2;  // [sp-0x14]
    unsigned int v3;  // [sp-0x10]
    unsigned int v4;  // [sp-0xc]
    void* v5;  // [sp-0x8], Other Possible Types: unsigned int
    char v6;  // [bp-0x4]
    unsigned long v7;  // ldt
    unsigned long v8;  // gdt
    unsigned short v9;  // fs

    v5 = 4294967294;
    v4 = &g_40c998;
    v3 = sub_406e00;
    v2 = *((int *)x86g_use_seg_selector(v7, v8, (unsigned int)v9, 0));
    v4 ^= g_40d004;
    v0 = g_40d004 ^ &v6;
    *((unsigned int **)x86g_use_seg_selector(v7, v8, (unsigned int)v9, 0)) = &v2;
    v1 = &v0;
    v5 = 0;
    RaiseException(1080890248, 0, 6, a0);
    v5 = 4294967294;
    *((unsigned int *)x86g_use_seg_selector(v7, v8, (unsigned int)v9, 0)) = v2;
    return;
}

typedef struct struct_0 {
    unsigned int field_0;
} struct_0;

int sub_404d4e()
{
    struct_0 **v1;  // [bp+0xffff0]

    return *(v1)->field_0 == 1080890248;
}

void sub_404d61()
{
}

extern unsigned int g_40d004;
extern unsigned int g_40d018;

void sub_404da0(char *a0)
{
    unsigned int v0;  // [sp-0x42c]
    unsigned int v1;  // [sp-0x410]
    unsigned int v2;  // [sp-0x40c]
    char v3;  // [bp-0x408]
    unsigned int v4;  // [sp-0x8]
    char v5;  // [bp-0x4]
    char v6;  // [bp+0x0]
    unsigned int v7;  // esi
    unsigned int v8;  // edi

    v4 = g_40d004 ^ &v5;
    v2 = v7;
    v1 = v8;
    if (g_40d018 != -1)
    {
        if (a0 && sub_404a60(a0) + 58 <= 0x400)
        {
            strcpy_s(&v3, 0x400);
            strcat_s(&v3, 0x400);
            v0 = "' is being used without being initialized.";
            strcat_s(&v3, 0x400);
        }
        sub_404a80(*((int *)&v6), g_40d018, 3);
    }
    sub_40123f();
    return;
}

void sub_405080()
{
    sub_4010ff(8);
    return;
}

extern unsigned int g_40d330;
extern unsigned int g_40d334;
extern unsigned int g_40d33c;
extern unsigned int g_40d340;
extern unsigned int g_40d344;
extern unsigned int g_40d348;
extern unsigned short g_40d40c;
extern unsigned short g_40d410;
extern unsigned short g_40d414;
extern unsigned short g_40d418;
extern unsigned int g_40d41c;
extern unsigned int g_40d420;
extern unsigned int g_40d424;
extern unsigned int g_40d428;
extern unsigned int g_40d42c;
extern void* g_40d430;
extern unsigned int g_40d434;
extern unsigned int g_40d438;
extern unsigned short g_40d43c;
extern unsigned int g_40d440;
extern struct_0 *g_40d444;
extern unsigned short g_40d448;

int sub_4051a0()
{
    unsigned int v0;  // [sp-0x328]
    void* v1;  // [sp-0x8]
    char v2;  // [bp-0x4]
    char v3;  // [bp+0x0]
    unsigned int v4;  // [bp+0x4]
    void* v5;  // [sp+0x8], Other Possible Types: unsigned int
    char v6;  // [bp+0xc]
    unsigned int v7;  // eax
    unsigned int v8;  // ecx
    unsigned int v9;  // edx
    unsigned int v10;  // ebx
    unsigned int v11;  // esi
    unsigned int v12;  // edi
    unsigned short v13;  // ss
    unsigned short v14;  // cs
    unsigned short v15;  // ds
    unsigned short v16;  // es
    unsigned short v17;  // fs
    unsigned short v18;  // gs
    unsigned int v19;  // id
    unsigned int v20;  // ac

    v7 = IsProcessorFeaturePresent(23);
    if (v7)
        __fastfail(v4); /* do not return */
    g_40d430 = 0;
    g_40d42c = v8;
    g_40d428 = v9;
    g_40d424 = v10;
    g_40d420 = v11;
    g_40d41c = v12;
    g_40d448 = v13;
    g_40d43c = v14;
    g_40d418 = v15;
    g_40d414 = v16;
    g_40d410 = v17;
    g_40d40c = v18;
    v0 = x86g_calculate_eflags_all(15, v7, 0, 0) | 514 | v19 * 0x200000 & 0x200000 | v20 * 0x40000 & 0x40000;
    g_40d440 = v0;
    g_40d434 = *((int *)&v2);
    g_40d438 = *((int *)&v3);
    g_40d444 = &v4;
    g_40d33c = g_40d438;
    g_40d330 = 3221226505;
    g_40d334 = 1;
    if (v5 > 0 && !*((int *)&v6))
        v5 = 0;
    if (v5 > 14)
        v5 -= 1;
    g_40d340 = v5 + 1;
    g_40d344 = v4;
    for (v1 = 0; v1 < v5; v1 += 1)
    {
        *((int *)(0x4 * v1 + (char *)&g_40d348)) = *((int *)(*((int *)&v6) + v1 * 4));
    }
    sub_4010d7();
    return;
}

void sub_405330(unsigned int a0)
{
    return;
}

extern unsigned int g_40d6ec;
extern void* g_40d6f0;

void sub_405360(unsigned int a0)
{
    g_40d6ec = a0;
    g_40d6f0 = 0;
    return;
}

extern void* g_40d6ec;
extern unsigned int g_40d6f0;

void sub_405390(unsigned int a0)
{
    g_40d6f0 = a0;
    g_40d6ec = 0;
    return;
}

extern unsigned int g_40d00c;

void sub_4053c0(unsigned int a0)
{
    char v0;  // [bp+0x8]

    if (a0 <= 4)
        (&g_40d00c)[a0] = *((int *)&v0);
    return;
}

typedef struct struct_0 {
    char padding_0[60];
    unsigned int field_3c;
} struct_0;

int sub_405470(struct_0 *a0, unsigned int a1)
{
    unsigned int v0;  // [sp-0x1c]
    unsigned short v1[11];  // [sp-0x18]
    unsigned int v2[4];  // [sp-0x14]
    unsigned short v3[11];  // [sp-0xc]
    unsigned int v4[4];  // [sp-0x8]

    *((struct_0 **)&v1[0]) = &a0->padding_0[a0->field_3c];
    *((unsigned short *[11])&v3[0]) = v1;
    v2[0] = 24 + (char *)v3 + v3[10];
    v0 = 40 * v3[3] + (char *)v2;
    for (v4[0] = v2; v4 != v0; v4[0] = &v4[2 + 2])
    {
        if (a1 >= v4[3] && a1 < v4[3] + v4[2])
            return v4;
    }
    return 0;
}

typedef struct struct_0 {
    unsigned short field_0;
    char padding_2[58];
    unsigned int field_3c;
} struct_0;

char sub_405520(struct_0 *a0)
{
    unsigned short *v0;  // [sp-0x14]
    unsigned int *v1;  // [sp-0x10]
    unsigned int *v2;  // [sp-0xc]

    if (!a0)
    {
        return 0;
    }
    else if (a0->field_0 != 23117)
    {
        return 0;
    }
    else
    {
        v1 = (char *)&a0->field_0 + a0->field_3c;
        v2 = v1;
        if (*(v2) == 17744)
        {
            v0 = &v2[6];
            return (*(v0) == 267 ? 1 : 0);
        }
        return 0;
    }
}

void sub_405620()
{
    if (sub_401104())
    {
        sub_40100f();
    }
    else
    {
        if (sub_401424())
            return;
        sub_4012cb();
    }
    return;
}

void sub_405660()
{
    void* v0;  // [sp-0x8]

    v0 = 0;
    if (sub_401023())
        return;
    return;
}

void sub_405690()
{
    if (!sub_4010dc())
    {
        return;
    }
    else if (!(char)sub_40128a())
    {
        sub_401334();
        return;
    }
    else
    {
        return;
    }
}

void sub_4056d0()
{
    sub_4010cd();
    sub_401334();
    return;
}

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;

void sub_4056f0()
{
    unsigned int v0;  // [sp-0x18]
    unsigned int v1;  // [sp-0xc]
    struct_0 **v2;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v3;  // [bp+0x4]
    char v4;  // [bp+0x8]
    char v5;  // [bp+0xc]
    char v6;  // [bp+0x10]
    char v7;  // [bp+0x14]
    char v8;  // [bp+0x18]
    unsigned int v9;  // ecx

    v2 = v9;
    if (!sub_401104() && *((int *)&v4) == 1)
    {
        v1 = *((int *)&v5);
        v2 = *((int *)&v6);
        sub_4011f4();
        v2(v3, 0);
    }
    v0 = *((int *)&v8);
    _seh_filter_dll(*((int *)&v7));
    return;
}

extern char g_40d704;

void sub_405750()
{
    unsigned int v0;  // [sp-0x8]

    if (sub_401104())
    {
        v0 = &g_40d704;
        _execute_onexit_table();
        return;
    }
    else if (!sub_4010d2())
    {
        _cexit();
        return;
    }
    else
    {
        return;
    }
}

void sub_405790()
{
    sub_4013ed(0);
    sub_401357();
    return;
}

void sub_4059fd()
{
    unsigned int v1;  // [bp+0x100000]

    v1 = 4294967294;
}

typedef struct struct_0 {
    unsigned int field_0;
} struct_0;

int sub_405a06()
{
    unsigned int v1;  // [bp+0xfffcc]
    unsigned int v2;  // [bp+0xfffd8]
    struct_0 **v3;  // [bp+0xffff0]

    v1 = *(v3)->field_0;
    if (v1 == 3221225477)
        v2 = 1;
    else
        v2 = 0;
    return v2;
}

char sub_405a2d()
{
    char v1;  // [bp+0xfffe7]
    unsigned int v2;  // [bp+0x100000]

    v1 = 0;
    v2 = 4294967294;
}

void sub_405a40()
{
    unsigned int v1;  // [bp+0x100000]

    v1 = 4294967294;
}

void sub_405b71()
{
}

extern unsigned int g_40d710;

void sub_405bc0()
{
    unsigned int v0;  // [sp-0xc]
    unsigned int v1;  // [sp-0x8]
    unsigned int v2;  // [bp+0x4]

    v1 = sub_40140b(g_40d710);
    if (v1 != -1)
    {
        v0 = v2;
        _register_onexit_function(&g_40d710);
        return;
    }
    _crt_at_quick_exit();
    return;
}

void sub_405beb()
{
}

int sub_405c60()
{
    unsigned long long v0;  // [bp-0x18]
    char v1;  // [bp-0x14]
    unsigned int v2[2];  // [sp-0x10]
    void* v3;  // [sp-0xc]
    unsigned int v4;  // [sp-0x8]

    *(v2) = 0;
    v3 = 0;
    GetSystemTimeAsFileTime(v2);
    *((unsigned int [2])&v4) = v2;
    v4 ^= v3;
    v4 ^= GetCurrentThreadId();
    v4 ^= GetCurrentProcessId();
    QueryPerformanceCounter(&v0);
    v4 ^= (int)v0;
    v4 ^= *((int *)&v1);
    v4 ^= &v4;
    return v4;
}

void sub_405d90()
{
    return;
}

extern unsigned int g_40d728;

void sub_405e10()
{
    __std_type_info_destroy_list(&g_40d728);
    return;
}

void sub_4060d0()
{
    char v0;  // [bp-0x4c]
    char v1;  // [bp-0x20]
    char v2;  // [bp-0x1c]
    unsigned int v3;  // [sp-0x8]

    memset(&v0, 0, 68);
    GetStartupInfoW(&v0);
    if (!((char)*((int *)&v1) & 1))
    {
        v3 = 10;
        return;
    }
    v3 = *((short *)&v2);
    return;
}

typedef struct struct_0 {
    unsigned int field_0;
    char padding_4[12];
    unsigned int field_10;
    unsigned int field_14;
} struct_0;

void sub_406220(struct_0 **a0)
{
    unsigned int v0[6];  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v1;  // ecx

    v0 = v1;
    v0[0] = *(a0);
    if (v0[0] != 3765269347)
    {
        return;
    }
    else if (v0[4] == 3)
    {
        if (v0[5] != 429065504 && v0[5] != 429065505 && v0[5] != 429065506 && v0[5] != 0x1994000)
            return;
        terminate();
        return;
    }
    else
    {
        return;
    }
}

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;


void sub_40630f()
{
    struct_0 **v1;  // esi

    do
    {
        if (*(v1))
        {
            sub_4011f4();
            *(v1)();
        }
    } while ((v1 += 4, v1 < 4245040));
}

extern unsigned int g_40d004;

int sub_406340(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    return (unsigned int)_except_handler4_common(&g_40d004, sub_40123f, a0, a1, a2, a3);
}

void sub_406380(unsigned int *a0)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // ecx

    v0 = v1;
    v0 = *(a0);
    return;
}

void sub_4063a0(unsigned int a0)
{
    sub_401019(a0);
    return;
}

extern unsigned int g_40f000;

void sub_4063c0()
{
    void* v0;  // [sp-0x8], Other Possible Types: unsigned int
    unsigned int v2;  // ecx

    v0 = v2;
    if (sub_4013a2(&g_40f000) == sub_4011f4)
    {
        v0 = 0;
        return;
    }
    v0 = 1;
    return;
}

extern unsigned int g_40d004;
extern char g_40d74c;

int sub_406400()
{
    char v0;  // [bp-0x418]
    char v1;  // [bp-0x210]
    unsigned int v2;  // [sp-0x8]
    char v3;  // [bp-0x4]
    unsigned int v5;  // eax

    v2 = g_40d004 ^ &v3;
    if (!g_40d74c)
    {
        g_40d74c = 1;
        if (!sub_406590())
        {
            v5 = __vcrt_GetModuleHandleW();
            if (!((!v5 || !__vcrt_GetModuleFileNameW(v5, &v0) || !sub_406880(&v0, &v1, 260) || !__vcrt_LoadLibraryExW(&v1, 0) && (GetLastError() != 87 || !__vcrt_LoadLibraryExW(&v1, 0))) && !__vcrt_LoadLibraryExW(L"MSPDB140", 0) && (GetLastError() != 87 || !__vcrt_GetModuleFileNameW(0, &v0) || !sub_406880(&v0, &v1, 260) || !__vcrt_LoadLibraryExW(&v1, 0))))
                goto LABEL_406532;
            goto LABEL_406530;
        }
    }
    else
    {
LABEL_406530:
    }
LABEL_406532:
    return sub_40123f();
}

typedef struct struct_0 {
    struct struct_0 *field_0;
} struct_0;

extern unsigned int g_40d004;

int sub_406590()
{
    unsigned int v0;  // [sp-0x25c]
    unsigned int v1;  // [sp-0x22c]
    unsigned int v2;  // [sp-0x228]
    unsigned int v3;  // [sp-0x224]
    char v4;  // [bp-0x220]
    struct_0 **v5;  // [sp-0x21c]
    unsigned int v6;  // [sp-0x218]
    char v7;  // [bp-0x214]
    char v8;  // [bp-0x210]
    char v9;  // [bp-0x20c]
    char v10;  // [bp-0x208]
    char v11;  // [bp-0x204]
    char v12;  // [bp-0x200]
    char v13;  // [bp-0x1fc]
    char v14;  // [bp-0x1f8]
    char v15;  // [bp-0x1f4]
    char v16;  // [bp-0x1f0]
    unsigned short v17;  // [bp-0xc]
    char v18;  // [bp-0xa], Other Possible Types: unsigned short
    unsigned int v19;  // [sp-0x8]
    char v20;  // [bp-0x4]
    unsigned int v22;  // ebx
    unsigned int v23;  // esi
    unsigned int v24;  // edi
    unsigned int *v25;  // edi
    struct_0 **v26;  // esi
    struct_0 **v27;  // ebx
    unsigned int v28;  // eax
    unsigned int v29;  // ecx
    unsigned int v30;  // ecx
    unsigned int v31;  // eax
    unsigned int v32;  // ecx

    v19 = g_40d004 ^ &v20;
    v3 = v22;
    v2 = v23;
    v1 = v24;
    v25 = __vcrt_LoadLibraryExW(L"api-ms-win-core-registry-l1-1-0.dll", 0);
    if (!v25)
    {
        v25 = __vcrt_LoadLibraryExW(L"advapi32.dll", v25);
        if (!v25 && (GetLastError() != 87 || !v25))
        {
LABEL_40665d:
            sub_40123f();
            return;
        }
    }
    v26 = GetProcAddress(v25, "RegOpenKeyExW");
    if (!v26)
    {
        sub_40123f();
        return;
    }
    v27 = GetProcAddress(v25, "RegQueryValueExW");
    if (v27)
    {
        v5 = GetProcAddress(v25, "RegCloseKey");
        if (v5)
        {
            sub_4011f4();
            if (v26(2147483650, L"SOFTWARE\\Wow6432Node\\Microsoft\\VisualStudio\\14.0\\Setup\\VC", 0, 1))
            {
                FreeLibrary(v25);
            }
            else
            {
                v6 = 520;
                sub_4011f4();
                v28 = v27(*((int *)&v7), L"ProductDir", 0, &v4, &v8);
                v0 = *((int *)&v7);
                sub_4011f4();
                v5();
                FreeLibrary(v25);
                if (!v28 && *((int *)&v4) == 1 && !((char)v6 & 1))
                {
                    v29 = v6 >> 1;
                    if (v29 >= 2)
                    {
                        v30 = v29 - 1;
                        v31 = &(&v8)[2 * v30];
                        if (!*((short *)&v18))
                        {
                            v32 = v30;
                            if (v17 != 92)
                            {
                                v18 = 92;
                                v32 = v29;
                            }
                            if (~(v32) >= 18 && v32 + 17 <= 260)
                            {
                                *((unsigned int *)&(&v8)[2 * v32]) = 6881378;
                                *((unsigned int *)&(&v9)[2 * v32]) = 6029422;
                                *((unsigned int *)&(&v10)[2 * v32]) = 5439565;
                                *((unsigned int *)&(&v11)[2 * v32]) = 4456528;
                                *((unsigned int *)&(&v12)[2 * v32]) = 3211330;
                                *((unsigned int *)&(&v13)[2 * v32]) = 3145780;
                                *((unsigned int *)&(&v14)[2 * v32]) = 4456494;
                                *((unsigned int *)&(&v15)[2 * v32]) = 4980812;
                                *((short *)&(&v16)[2 * v32]) = 0;
                                if (!(!__vcrt_LoadLibraryExW(&v8, 0) && GetLastError() == 87))
                                {
                                    sub_40123f();
                                    return;
                                }
                                __vcrt_LoadLibraryExW(&v8, 0);
                            }
                        }
                    }
                }
            }
        }
    }
    goto LABEL_40665d;
}

extern unsigned int g_40d004;

int sub_406880(unsigned int a0, unsigned int a1, unsigned int a2)
{
    unsigned int v0;  // [sp-0x614]
    char v1;  // [bp-0x610]
    char v2;  // [bp-0x60c]
    char v3;  // [bp-0x410]
    char v4;  // [bp-0x210]
    char v5;  // [bp-0x10]
    unsigned int v6;  // [sp-0x8]
    char v7;  // [bp-0x4]
    unsigned int v8;  // esi

    v6 = g_40d004 ^ &v7;
    v0 = v8;
    if (!_wsplitpath_s(a0, &v5, 3, &v1, 0x100, &v3, 0x100, &v4, 0x100) && !wcscpy_s(&v3, 9) && !wcscpy_s(&v4, 4) && !_wmakepath_s(a1, a2, &v5, &v1, &v3))
        return sub_40123f(*((int *)&v1), *((int *)&v2));
    return sub_40123f(*((int *)&v1), *((int *)&v2));
}

int sub_406e00(unsigned int a0[2], unsigned int a1, unsigned int a2, unsigned int a3)
{
    unsigned int v0;  // [sp-0x8]
    unsigned int v1;  // ecx

    v0 = v1;
    v0 = sub_406340(a0, a1, a2, a3);
    if (((char)a0[1] & 102))
    {
        return v0;
    }
    else if (a0[0] != 3765269347)
    {
        return v0;
    }
    else if (v0 == 1)
    {
        terminate();
        return v0;
    }
    else
    {
        return v0;
    }
}

void sub_407271(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3)
{
    char v0;  // [bp+0x0]

    _invalid_parameter(*((int *)&v0), a0, a1, a2);
    return;
}

void sub_407277(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
    char v0;  // [bp+0x0]

    __acrt_iob_func(*((int *)&v0), a0, a1, a2, a3, a4, a5, a6);
    return;
}

void sub_40727d(unsigned int a0)
{
    char v0;  // [bp+0x0]

    __stdio_common_vfprintf(*((int *)&v0));
    return;
}

void sub_407283(unsigned int a0, unsigned int a1, unsigned int a2, unsigned int a3, unsigned int a4)
{
    char v0;  // [bp+0x0]

    _CrtDbgReport(*((int *)&v0), a0, a1, a2, a3);
    return;
}

int sub_40736d()
{
    return IsDebuggerPresent();
}

void sub_407373(unsigned int a0, unsigned int a1, unsigned int **a2, unsigned int a3)
{
    char v0;  // [bp+0x0]

    RaiseException(*((int *)&v0), a0, a1, a2);
    return;
}

int sub_407379(unsigned int a0, char *a1, unsigned int a2, char *a3, unsigned int a4, unsigned int a5)
{
    char v0;  // [bp+0x0]

    return MultiByteToWideChar(*((int *)&v0), a0, a1, a2, a3, a4);
}

int sub_40737f(unsigned int a0, char *a1, unsigned int a2, char *a3, unsigned int a4, char *a5, unsigned int *a6, unsigned int a7)
{
    char v0;  // [bp+0x0]

    return WideCharToMultiByte(*((int *)&v0), a0, a1, a2, a3, a4, a5, a6);
}

int sub_407385(unsigned int a0)
{
    char v0;  // [bp+0x0]

    return UnhandledExceptionFilter(*((int *)&v0));
}

int sub_40738b(unsigned int a0)
{
    char v0;  // [bp+0x0]

    return SetUnhandledExceptionFilter(*((int *)&v0));
}

int sub_407391()
{
    return GetCurrentProcess();
}

int sub_407397(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    return TerminateProcess(*((int *)&v0), a0);
}

int sub_4073a3(unsigned int a0)
{
    char v0;  // [bp+0x0]

    return QueryPerformanceCounter(*((int *)&v0));
}

int sub_4073a9()
{
    return GetCurrentProcessId();
}

int sub_4073af()
{
    return GetCurrentThreadId();
}

void sub_4073b5(unsigned int a0)
{
    char v0;  // [bp+0x0]

    GetSystemTimeAsFileTime(*((int *)&v0));
    return;
}

void sub_4073bb(unsigned int a0)
{
    char v0;  // [bp+0x0]

    InitializeSListHead(*((int *)&v0));
    return;
}

void sub_4073c1(unsigned int a0)
{
    char v0;  // [bp+0x0]

    GetStartupInfoW(*((int *)&v0));
    return;
}

int sub_4073c7(unsigned int a0)
{
    char v0;  // [bp+0x0]

    return GetModuleHandleW(*((int *)&v0));
}

int sub_4073cd()
{
    return GetLastError();
}

int sub_4073d3(unsigned int a0, unsigned int *a1, unsigned int a2)
{
    char v0;  // [bp+0x0]

    return HeapAlloc(*((int *)&v0), a0, a1);
}

int sub_4073d9(unsigned int a0, void* a1, unsigned int a2)
{
    char v0;  // [bp+0x0]

    return HeapFree(*((int *)&v0), a0, a1);
}

int sub_4073df()
{
    return GetProcessHeap();
}

typedef struct MEMORY_BASIC_INFORMATION {
    void* BaseAddress;
    void* AllocationBase;
    unsigned int AllocationProtect;
    unsigned int *RegionSize;
    unsigned int State;
    unsigned int Protect;
    unsigned int Type;
} MEMORY_BASIC_INFORMATION;

int sub_4073e5(MEMORY_BASIC_INFORMATION *a0, unsigned int *a1, unsigned int a2)
{
    char v0;  // [bp+0x0]

    return VirtualQuery(*((int *)&v0), a0, a1);
}

int sub_4073eb(unsigned int a0)
{
    char v0;  // [bp+0x0]

    return FreeLibrary(*((int *)&v0));
}

int sub_4073f1(char *a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    return GetProcAddress(*((int *)&v0), a0);
}

void sub_408930()
{
    sub_401258();
    return;
}

void sub_408938()
{
    sub_401258();
    return;
}

void sub_408940(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_408980()
{
    sub_4012b2();
    return;
}

void sub_408988(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_4089b0()
{
    sub_401091();
    return;
}

void sub_4089b8(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_4089e0(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_408a10(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_408a40(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_408a70(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_408aa0(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

void sub_408ad0(unsigned int a0, unsigned int a1)
{
    char v0;  // [bp+0x0]

    sub_40123f(*((int *)&v0), a0);
    __CxxFrameHandler3();
    return;
}

