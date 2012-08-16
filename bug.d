import std.range;

enum hanglul_L = `
        case '\u1100'..'\u115E':
        case '\uA960'..'\uA97C':
        case '\u115F':
`;

enum hanglul_LV = `
    \uAC00 \uAC1C \uAC38 \uAC54 \uAC70 \uAC8C \uACA8 \uACC4 \uACE0 \uACFC \uAD18 \uAD34 \uAD50 \uAD6C \uAD88 \uADA4 \uADC0 \uADDC \uADF8 \uAE14 \uAE30 \uAE4C \uAE68 \uAE84 \uAEA0 \uAEBC \uAED8 \uAEF4 \uAF10 \uAF2C \uAF48 \uAF64 \uAF80 \uAF9C \uAFB8 \uAFD4 \uAFF0 \uB00C \uB028 \uB044 \uB060 \uB07C \uB098 \uB0B4 \uB0D0 \uB0EC \uB108 \uB124 \uB140 \uB15C \uB178 \uB194 \uB1B0 \uB1CC \uB1E8 \uB204 \uB220 \uB23C \uB258 \uB274 \uB290 \uB2AC \uB2C8 \uB2E4 \uB300 \uB31C \uB338 \uB354 \uB370 \uB38C \uB3A8 \uB3C4 \uB3E0 \uB3FC \uB418 \uB434 \uB450 \uB46C \uB488 \uB4A4 \uB4C0 \uB4DC \uB4F8 \uB514 \uB530 \uB54C \uB568 \uB584 \uB5A0 \uB5BC \uB5D8 \uB5F4 \uB610 \uB62C \uB648 \uB664 \uB680 \uB69C \uB6B8 \uB6D4 \uB6F0 \uB70C \uB728 \uB744 \uB760 \uB77C \uB798 \uB7B4 \uB7D0 \uB7EC \uB808 \uB824 \uB840 \uB85C \uB878 \uB894 \uB8B0 \uB8CC \uB8E8 \uB904 \uB920 \uB93C \uB958 \uB974 \uB990 \uB9AC \uB9C8 \uB9E4 \uBA00 \uBA1C \uBA38 \uBA54 \uBA70 \uBA8C \uBAA8 \uBAC4 \uBAE0 \uBAFC \uBB18 \uBB34 \uBB50 \uBB6C \uBB88 \uBBA4 \uBBC0 \uBBDC \uBBF8 \uBC14 \uBC30 \uBC4C \uBC68 \uBC84 \uBCA0 \uBCBC \uBCD8 \uBCF4 \uBD10 \uBD2C \uBD48 \uBD64 \uBD80 \uBD9C \uBDB8 \uBDD4 \uBDF0 \uBE0C \uBE28 \uBE44 \uBE60 \uBE7C \uBE98 \uBEB4 \uBED0 \uBEEC \uBF08 \uBF24 \uBF40 \uBF5C \uBF78 \uBF94 \uBFB0 \uBFCC \uBFE8 \uC004 \uC020 \uC03C \uC058 \uC074 \uC090 \uC0AC \uC0C8 \uC0E4 \uC100 \uC11C \uC138 \uC154 \uC170 \uC18C \uC1A8 \uC1C4 \uC1E0 \uC1FC \uC218 \uC234 \uC250 \uC26C \uC288 \uC2A4 \uC2C0 \uC2DC \uC2F8 \uC314 \uC330 \uC34C \uC368 \uC384 \uC3A0 \uC3BC \uC3D8 \uC3F4 \uC410 \uC42C \uC448 \uC464 \uC480 \uC49C \uC4B8 \uC4D4 \uC4F0 \uC50C \uC528 \uC544 \uC560 \uC57C \uC598 \uC5B4 \uC5D0 \uC5EC \uC608 \uC624 \uC640 \uC65C \uC678 \uC694 \uC6B0 \uC6CC \uC6E8 \uC704 \uC720 \uC73C \uC758 \uC774 \uC790 \uC7AC \uC7C8 \uC7E4 \uC800 \uC81C \uC838 \uC854 \uC870 \uC88C \uC8A8 \uC8C4 \uC8E0 \uC8FC \uC918 \uC934 \uC950 \uC96C \uC988 \uC9A4 \uC9C0 \uC9DC \uC9F8 \uCA14 \uCA30 \uCA4C \uCA68 \uCA84 \uCAA0 \uCABC \uCAD8 \uCAF4 \uCB10 \uCB2C \uCB48 \uCB64 \uCB80 \uCB9C \uCBB8 \uCBD4 \uCBF0 \uCC0C \uCC28 \uCC44 \uCC60 \uCC7C \uCC98 \uCCB4 \uCCD0 \uCCEC \uCD08 \uCD24 \uCD40 \uCD5C \uCD78 \uCD94 \uCDB0 \uCDCC \uCDE8 \uCE04 \uCE20 \uCE3C \uCE58 \uCE74 \uCE90 \uCEAC \uCEC8 \uCEE4 \uCF00 \uCF1C \uCF38 \uCF54 \uCF70 \uCF8C \uCFA8 \uCFC4 \uCFE0 \uCFFC \uD018 \uD034 \uD050 \uD06C \uD088 \uD0A4 \uD0C0 \uD0DC \uD0F8 \uD114 \uD130 \uD14C \uD168 \uD184 \uD1A0 \uD1BC \uD1D8 \uD1F4 \uD210 \uD22C \uD248 \uD264 \uD280 \uD29C \uD2B8 \uD2D4 \uD2F0 \uD30C \uD328 \uD344 \uD360 \uD37C \uD398 \uD3B4 \uD3D0 \uD3EC \uD408 \uD424 \uD440 \uD45C \uD478 \uD494 \uD4B0 \uD4CC \uD4E8 \uD504 \uD520 \uD53C \uD558 \uD574 \uD590 \uD5AC \uD5C8 \uD5E4 \uD600 \uD61C \uD638 \uD654 \uD670 \uD68C \uD6A8 \uD6C4 \uD6E0 \uD6FC \uD718 \uD734 \uD750 \uD76C \uD788
`;
private InputRange decodeGrapheme(alias put)(InputRange range)
{
    enum GraphemeState {
        Start,
        CR,
        L,
        V,
        LVT,
        T,
        E,
        End
    };
    auto state = GraphemeState.Start;
    while(!empty)
    {
        dchar ch = range.front;
        final switch(state) with(GraphemeState)
        {
        case Start:
            switch(ch)
            {
            case '\r':
                range.popFront();
                state = CR;
            break;
            //
            mixin(hanglul_L);
                state = L;
            break;
            
            }
        break;
        case L:
        break;
        case V:
        break;
        case LVT:
        break;
        case T:
        break;
        case E:
        break;
        case End:
            return range;
        }    
    }
}

unittest
{
    
    graphemeStride("  ", 1);
}

@trusted:
public: //Public API continues

size_t graphemeStride(C)(in C[] input, size_t idx)
{
    static void noop(dchar ch){}
    auto s = decodeGrapheme!(noop)(input[idx..$]);
    return s.length - input.length;
}
