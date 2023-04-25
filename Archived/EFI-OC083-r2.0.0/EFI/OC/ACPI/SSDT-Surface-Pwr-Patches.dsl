/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLU8YVRL.aml, Tue Aug 30 18:57:27 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000018B4 (6324)
 *     Revision         0x02
 *     Checksum         0x3E
 *     OEM ID           "BLPZ"
 *     OEM Table ID     "SURF"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "BLPZ", "SURF", 0x00001000)
{
    External (_GPE, DeviceObj)
    External (_GPE.XL17, MethodObj)    // 0 Arguments
    External (_SB_.GGIV, MethodObj)    // 1 Arguments
    External (_SB_.LID0, DeviceObj)
    External (_SB_.LID0.LOEN, MethodObj)    // 0 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)
    External (_SB_.PCI0.GFX0.GLID, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.ADPX, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.BATX, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.ECAV, UnknownObj)
    External (_SB_.PCI0.LPCB.EC__.RFSX, DeviceObj)
    External (_SB_.PCI0.LPCB.XZ00, DeviceObj)
    External (_SB_.PCI0.LPCB.XZ01, DeviceObj)
    External (_SB_.PCI0.LPCB.XZ02, DeviceObj)
    External (_SB_.PCI0.LPCB.XZ03, DeviceObj)
    External (_SB_.PCI0.PCIC, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PCID, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.PPMC, DeviceObj)
    External (_SB_.PCI0.PPMX, DeviceObj)
    External (_SB_.SGII, MethodObj)    // 2 Arguments
    External (ADBG, MethodObj)    // 1 Arguments
    External (ECAV, IntObj)
    External (IGDS, UnknownObj)
    External (LIDS, UnknownObj)
    External (PWRS, UnknownObj)

    Device (RMKB)
    {
        Name (_HID, "RMKB0000")  // _HID: Hardware ID
    }

    Method (B1B2, 2, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            Return ((Arg0 | (Arg1 << 0x08)))
        }
        Else
        {
            Return (Zero)
        }
    }

    Method (B1B4, 4, NotSerialized)
    {
        Local0 = Arg3
        Local0 = (Arg2 | (Local0 << 0x08))
        Local0 = (Arg1 | (Local0 << 0x08))
        Local0 = (Arg0 | (Local0 << 0x08))
        Return (Local0)
    }

    Scope (_SB.PCI0)
    {
        Device (PPMC)
        {
            If (_OSI ("Darwin"))
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }

                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
            Else
            {
                Return (\_SB.PCI0.PPMX) /* External reference */
            }
        }
    }

    Scope (_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ECS4, EmbeddedControl, Zero, 0x0100)
        Field (ECS4, ByteAcc, Lock, Preserve)
        {
            Offset (0x09), 
            PSSX,   8, 
            Offset (0x0B), 
            B1XT,   8, 
            Offset (0x0E), 
            Offset (0x12), 
            BDA0,   8, 
            BDA1,   8, 
            BDB0,   8, 
            BDB1,   8, 
            BDX0,   8, 
            BDX1,   8, 
            BDD0,   8, 
            BDD1,   8, 
            Offset (0x20), 
            BDE0,   8, 
            BDE1,   8, 
            BDF0,   8, 
            BDF1,   8, 
            BDG0,   8, 
            BDG1,   8, 
            BDH0,   8, 
            BDH1,   8, 
            Offset (0x30), 
            XCLS,   32, 
            XHFW,   32, 
            XHLS,   32, 
            RSTX,   8, 
            Offset (0x3E), 
            BDI0,   8, 
            BDI1,   8, 
            RRCX,   8, 
            Offset (0x53), 
            X1TM,   16, 
            BDJ0,   8, 
            BDJ1,   8, 
            BDK0,   8, 
            BDK1,   8, 
            X1AC,   16, 
            X1ME,   16, 
            X1RS,   16, 
            BDL0,   8, 
            BDL1,   8, 
            BDM0,   8, 
            BDM1,   8, 
            X1CI,   16, 
            X1CV,   16, 
            X1SL,   8, 
            X1SH,   8, 
            BDN0,   8, 
            BDN1,   8, 
            BDO0,   8, 
            BDO1,   8, 
            BDP0,   8, 
            BDP1,   8, 
            X1SI,   16, 
            X1MD,   16, 
            BDQ0,   8, 
            BDQ1,   8, 
            B1MX,   96, 
            B1DX,   64, 
            B1CX,   48, 
            Offset (0xA3), 
            Offset (0xEF), 
            XUFL,   8, 
            Offset (0xF2), 
            Offset (0xF4), 
            BTP0,   8, 
            BTP1,   8, 
            X2TP,   16, 
            XCMD,   8, 
            BDY0,   8, 
            BDY1,   8, 
            BDY2,   8, 
            BDY3,   8
        }

        Method (_Q52, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            ADBG ("Volume-up pressed")
            Notify (RMKB, 0x1148)
        }

        Method (_Q53, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            ADBG ("Volume-up released")
            Notify (RMKB, 0x1248)
        }

        Method (_Q54, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            ADBG ("Volume-down pressed")
            Notify (RMKB, 0x1149)
        }

        Method (_Q55, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            ADBG ("Volume-down released")
            Notify (RMKB, 0x1249)
        }

        Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            ADBG ("Power button pressed")
            Notify (RMKB, 0x117F)
        }

        Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            ADBG ("Power button released")
            Notify (RMKB, 0x127F)
        }

        Method (RE1B, 1, NotSerialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            Return (BYTE) /* \_SB_.PCI0.LPCB.EC__.RE1B.BYTE */
        }

        Method (RECB, 2, Serialized)
        {
            Arg1 >>= 0x03
            Name (TEMP, Buffer (Arg1){})
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                TEMP [Local0] = RE1B (Arg0)
                Arg0++
                Local0++
            }

            Return (TEMP) /* \_SB_.PCI0.LPCB.EC__.RECB.TEMP */
        }

        Method (WE1B, 2, NotSerialized)
        {
            OperationRegion (ERAM, EmbeddedControl, Arg0, One)
            Field (ERAM, ByteAcc, NoLock, Preserve)
            {
                BYTE,   8
            }

            BYTE = Arg1
        }

        Method (WECB, 3, Serialized)
        {
            Arg1 >>= 0x03
            Name (TEMP, Buffer (Arg1){})
            TEMP = Arg2
            Arg1 += Arg0
            Local0 = Zero
            While ((Arg0 < Arg1))
            {
                WE1B (Arg0, DerefOf (TEMP [Local0]))
                Arg0++
                Local0++
            }
        }

        Device (ADP1)
        {
            If (_OSI ("Darwin"))
            {
                Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x1C, 
                    0x03
                })
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                {
                    If (ECAV)
                    {
                        Return ((PSSX & One))
                    }
                    Else
                    {
                        Return (PWRS) /* External reference */
                    }
                }

                Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
                {
                    Return (_SB) /* \_SB_ */
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.ADPX) /* External reference */
            }
        }

        Device (BAT1)
        {
            If (_OSI ("Darwin"))
            {
                Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Name (_SUN, One)  // _SUN: Slot User Number
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Name (OACS, Ones)
                    Local0 = \_SB.PCI0.LPCB.EC.ADP1._PSR ()
                    If ((OACS != Local0))
                    {
                        OACS = Local0
                        Notify (ADP1, 0x80) // Status Change
                    }

                    If ((ECAV == One))
                    {
                        If ((PSSX & 0x02))
                        {
                            ADBG ("Primary internal battery is available")
                            Return (0x1F)
                        }
                    }

                    ADBG ("Primary internal battery is not available")
                    Return (0x0B)
                }

                Method (_BIX, 0, Serialized)  // _BIX: Battery Information Extended
                {
                    Name (BPKG, Package (0x14)
                    {
                        Zero, 
                        Zero, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        One, 
                        0xFFFFFFFF, 
                        Zero, 
                        Zero, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        Zero, 
                        Zero, 
                        Zero, 
                        Zero, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        "SDS-BAT", 
                        "+000,000,000,000", 
                        "abcde", 
                        "Manufacture"
                    })
                    ADBG ("Primary internal battery _BIX called")
                    If (ECAV)
                    {
                        If (((B1B2 (BDP0, BDP1) && B1B2 (BDM0, BDM1)) && B1B2 (BDO0, BDO1)))
                        {
                            BPKG [0x02] = ((B1B2 (BDO0, BDO1) * B1B2 (BDP0, BDP1)
                                ) / 0x03E8)
                            BPKG [0x03] = ((B1B2 (BDM0, BDM1) * B1B2 (BDP0, BDP1)
                                ) / 0x03E8)
                            BPKG [0x05] = B1B2 (BDP0, BDP1)
                            BPKG [0x06] = ((B1B2 (BDM0, BDM1) * B1B2 (BDP0, BDP1)
                                ) / 0x2710)
                            BPKG [0x07] = ((B1B2 (BDM0, BDM1) * B1B2 (BDP0, BDP1)
                                ) / 0x80E8)
                            BPKG [0x08] = B1B2 (BDN0, BDN1)
                            BPKG [0x09] = 0x251C
                            BPKG [0x0E] = ((B1B2 (BDO0, BDO1) * B1B2 (BDP0, BDP1)
                                ) / 0x000186A0)
                            BPKG [0x0F] = ((B1B2 (BDO0, BDO1) * B1B2 (BDP0, BDP1)
                                ) / 0x00061A80)
                        }

                        BPKG [0x10] = ToBuffer (RECB (0x81, 0x40))
                        ToDecimalString (B1B2 (BDQ0, BDQ1), Local0)
                        BPKG [0x11] = ToBuffer (Local0)
                        BPKG [0x12] = ToBuffer (RECB (0x89, 0x30))
                        BPKG [0x13] = ToBuffer (RECB (0x75, 0x60))
                    }

                    Return (BPKG) /* \_SB_.PCI0.LPCB.EC__.BAT1._BIX.BPKG */
                }

                Method (_BST, 0, Serialized)  // _BST: Battery Status
                {
                    Name (PKG1, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    ADBG ("Primary internal battery _BST called")
                    If (ECAV)
                    {
                        PKG1 [Zero] = (B1XT & 0x07)
                        If ((B1XT & One))
                        {
                            ADBG ("Primary internal battery discharging")
                            Local1 = ((B1B2 (BDK0, BDK1) * Ones) & 0xFFFF)
                            Local0 = (Local1 * B1B2 (BDP0, BDP1))
                            Local0 /= 0x03E8
                            PKG1 [One] = Local0
                        }
                        Else
                        {
                            ADBG ("Primary internal battery charging")
                            Local0 = (B1B2 (BDK0, BDK1) * B1B2 (BDP0, BDP1))
                            Local0 /= 0x03E8
                            PKG1 [One] = Local0
                        }

                        PKG1 [0x02] = ((B1B2 (BDL0, BDL1) * B1B2 (BDP0, BDP1)
                            ) / 0x03E8)
                        PKG1 [0x03] = B1B2 (BDJ0, BDJ1)
                    }

                    Return (PKG1) /* \_SB_.PCI0.LPCB.EC__.BAT1._BST.PKG1 */
                }

                Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                {
                    If (ECAV)
                    {
                        If (((B1B2 (BDM0, BDM1) != Zero) && (B1B2 (BDJ0, 
                            BDJ1) != Zero)))
                        {
                            If ((B1B2 (BDP0, BDP1) != Zero))
                            {
                                ADBG ("New battery trip point set")
                                Local0 = ((Arg0 * 0x03E8) / B1B2 (BDP0, BDP1))
                                BTP0 = Local0
                                BTP1 = (Local0 >> 0x08)
                            }
                            Else
                            {
                                ADBG ("New battery trip point was not set because design voltage is 0")
                            }
                        }
                    }

                    Return (Zero)
                }

                Method (_PCL, 0, NotSerialized)  // _PCL: Power Consumer List
                {
                    Return (Package (0x01)
                    {
                        _SB
                    })
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.BATX) /* External reference */
            }
        }

        Device (RFSD)
        {
            If (_OSI ("Darwin"))
            {
                Name (_HID, "MSHW0090")  // _HID: Hardware ID
                Name (_CID, "MSHW0090")  // _CID: Compatible ID
                Name (_UID, One)  // _UID: Unique ID
                Name (IBUF, Buffer (0x0400){})
                Name (RFTV, Zero)
                Name (RFTW, Buffer (0x02)
                {
                     0x00, 0x00                                       // ..
                })
                CreateByteField (RFTW, Zero, RTLB)
                CreateByteField (RFTW, One, RTHB)
                Name (RFSA, Zero)
                Name (RFIX, Zero)
                Name (Q64C, Zero)
                Name (RFTQ, Buffer (0x08)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                })
                Mutex (RFMT, 0x00)
                Name (RFCI, Zero)
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If ((ECAV == One))
                    {
                        If ((XUFL & 0x08))
                        {
                            ADBG ("EC reported that it supports the RFSD interface")
                            Local0 = Acquire (RFMT, 0x2710)
                            If (Local0)
                            {
                                ADBG ("RFSD EC Mutex can not be acquired")
                                Return (Zero)
                            }

                            Local0 = Zero
                            If ((RSTX & 0x80))
                            {
                                ADBG ("EC RFSD status register in wrong initial state")
                                Release (RFMT)
                                Return (Zero)
                            }

                            XCMD = One
                            Stall (0x19)
                            While (!(RSTX & 0x80))
                            {
                                If ((RSTX & 0x0F))
                                {
                                    Break
                                }

                                If ((Local0 > 0x0A))
                                {
                                    ADBG ("Timeout while excuting GET_INTERFACES command")
                                    XCMD = 0x10
                                    Release (RFMT)
                                    Return (Zero)
                                }

                                Sleep (0x05)
                                Local0++
                            }

                            If ((RSTX & 0x0F))
                            {
                                ADBG ("EC indicated error while executing GET_INTERFACES command")
                                XCMD = 0x10
                                Release (RFMT)
                                Return (Zero)
                            }

                            If ((B1B2 (BDI0, BDI1) & One))
                            {
                                ADBG ("EC supports RFSD interface")
                                Release (RFMT)
                                Return (0x0F)
                            }
                        }
                    }

                    ADBG ("EC does not support RFSD interface")
                    Return (Zero)
                }

                Method (WTCA, 0, NotSerialized)
                {
                    Local0 = Zero
                    Stall (0x19)
                    While (!(RSTX & 0x80))
                    {
                        If ((RSTX & 0x0F))
                        {
                            Break
                        }

                        If ((Local0 > 0x64))
                        {
                            ADBG ("Timeout while excuting a command")
                            Return (Zero)
                        }

                        Sleep (0x05)
                        Local0++
                    }

                    If ((RSTX & 0x0F))
                    {
                        ADBG ("EC indicated error while executing a command")
                        Return (Zero)
                    }

                    Return (One)
                }

                Method (GRFA, 0, Serialized)
                {
                    Acquire (RFMT, 0xFFFF)
                    XCMD = 0x02
                    If ((WTCA () == Zero))
                    {
                        XCMD = 0x10
                        Release (RFMT)
                        Return (Zero)
                    }

                    RFSA = B1B2 (BDI0, BDI1)
                    Release (RFMT)
                    Return (One)
                }

                Method (GRFB, 1, Serialized)
                {
                    Acquire (RFMT, 0xFFFF)
                    BDI1 = (Arg0 >> 0x08)
                    BDI0 = Arg0
                    XCMD = 0x03
                    If ((WTCA () == Zero))
                    {
                        XCMD = 0x10
                        Release (RFMT)
                        Return (Zero)
                    }

                    RFTW = B1B2 (BDI0, BDI1)
                    RTHB = Zero
                    Release (RFMT)
                    Return (One)
                }

                Method (GRFW, 1, Serialized)
                {
                    Acquire (RFMT, 0xFFFF)
                    BDI1 = (Arg0 >> 0x08)
                    BDI0 = Arg0
                    XCMD = 0x04
                    If ((WTCA () == Zero))
                    {
                        XCMD = 0x10
                        Release (RFMT)
                        Return (Zero)
                    }

                    RFTW = B1B2 (BDI0, BDI1)
                    Release (RFMT)
                    Return (One)
                }

                Method (GRFM, 3, Serialized)
                {
                    If (((Arg1 + Arg2) > 0x0400))
                    {
                        Return (Zero)
                    }

                    Acquire (RFMT, 0xFFFF)
                    XCMD = 0x08
                    BDI1 = ((Arg0 + Arg1) >> 0x08)
                    BDI0 = (Arg0 + Arg1)
                    BDI1 = (Arg2 >> 0x08)
                    BDI0 = Arg2
                    If ((WTCA () == Zero))
                    {
                        XCMD = 0x10
                        Release (RFMT)
                        Return (Zero)
                    }

                    XCMD = 0x05
                    If ((WTCA () == Zero))
                    {
                        XCMD = 0x10
                        Release (RFMT)
                        Return (Zero)
                    }

                    Local0 = Zero
                    While ((Arg2 > Local0))
                    {
                        RFTW = B1B2 (BDI0, BDI1)
                        IBUF [(Arg1 + Local0)] = RTLB /* \_SB_.PCI0.LPCB.EC__.RFSD.RTLB */
                        Local0++
                        IBUF [(Arg1 + Local0)] = RTHB /* \_SB_.PCI0.LPCB.EC__.RFSD.RTHB */
                        Local0++
                    }

                    If ((RSTX & 0x0F))
                    {
                        ADBG ("EC indicated error while executing read multiple command")
                        XCMD = 0x10
                        Release (RFMT)
                        Return (Zero)
                    }

                    Release (RFMT)
                    Return (One)
                }

                Method (GRFT, 1, Serialized)
                {
                    Acquire (RFMT, 0xFFFF)
                    If ((RFTV == Zero))
                    {
                        Release (RFMT)
                        Return (Zero)
                    }

                    If ((RFIX >= Arg0))
                    {
                        Mid (IBUF, Zero, Arg0, Local1)
                        Release (RFMT)
                        Return (Local1)
                    }

                    Local0 = Zero
                    While ((Arg0 > (RFIX + 0x0100)))
                    {
                        If ((GRFM (RFSA, RFIX, 0x0100) == One))
                        {
                            RFIX += 0x0100
                        }
                        Else
                        {
                            RFIX = Zero
                            Release (RFMT)
                            Return (Zero)
                        }
                    }

                    Local0 = (Arg0 - RFIX) /* \_SB_.PCI0.LPCB.EC__.RFSD.RFIX */
                    If ((Local0 != Zero))
                    {
                        If ((GRFM (RFSA, RFIX, Local0) == One))
                        {
                            RFIX += Local0
                        }
                        Else
                        {
                            RFIX = Zero
                            Release (RFMT)
                            Return (Zero)
                        }
                    }

                    Mid (IBUF, Zero, RFIX, Local1)
                    Release (RFMT)
                    Return (Local1)
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("bae38c2a-6c4e-4be1-9102-cbba77b39b02") /* Unknown UUID */))
                    {
                        If ((Arg2 == Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0xFF, 0x01                                       // ..
                            })
                        }

                        If ((Arg2 == One))
                        {
                            Local0 = ToInteger (DerefOf (Arg3 [Zero]))
                            Local1 = ToInteger (DerefOf (Arg3 [One]))
                            Local2 = ((Local1 << 0x08) + Local0)
                            Return (GRFT (Local2))
                        }

                        If ((Arg2 == 0x02))
                        {
                            If ((GRFB (0x28) == One))
                            {
                                RFCI = RTLB /* \_SB_.PCI0.LPCB.EC__.RFSD.RTLB */
                                Return (RFCI) /* \_SB_.PCI0.LPCB.EC__.RFSD.RFCI */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        If ((Arg2 == 0x03))
                        {
                            Return (RRCX) /* \_SB_.PCI0.LPCB.EC__.RRCX */
                        }

                        If ((Arg2 == 0x04))
                        {
                            BDY0 = Arg3
                            BDY1 = (Arg3 >> 0x08)
                            BDY2 = (Arg3 >> 0x10)
                            BDY3 = (Arg3 >> 0x18)
                        }

                        If ((Arg2 == 0x05))
                        {
                            Return (Zero)
                        }

                        If ((Arg2 == 0x06))
                        {
                            Return (B1B4 (BDY0, BDY1, BDY2, BDY3))
                        }

                        If ((Arg2 == 0x07))
                        {
                            If ((GRFW (0x043E) == One))
                            {
                                Return (ToInteger (RFTW))
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        If ((Arg2 == 0x08))
                        {
                            Local0 = Zero
                            Local1 = 0x40
                            Local1 += 0x06
                            Local2 = 0x04
                            While ((Local0 < 0x04))
                            {
                                If ((GRFW (Local1) != One))
                                {
                                    Return (Buffer (One)
                                    {
                                         0x00                                             // .
                                    })
                                }

                                RFTQ [Local2] = RTLB /* \_SB_.PCI0.LPCB.EC__.RFSD.RTLB */
                                Local2++
                                RFTQ [Local2] = RTHB /* \_SB_.PCI0.LPCB.EC__.RFSD.RTHB */
                                Local2++
                                Local0++
                                Local1 -= 0x02
                                If ((Local2 > 0x07))
                                {
                                    Local2 = Zero
                                }
                            }

                            Return (RFTQ) /* \_SB_.PCI0.LPCB.EC__.RFSD.RFTQ */
                        }
                    }

                    Return (Buffer (One)
                    {
                         0x00                                             // .
                    })
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.RFSX) /* External reference */
            }
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        ThermalZone (TZ00)
        {
            If (_OSI ("Darwin"))
            {
                Method (_TMP, 0, Serialized)  // _TMP: Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return ((0x0AAC + ((B1B2 (\_SB.PCI0.LPCB.EC.BDA0, \_SB.PCI0.LPCB.EC.BDA1) / 0x10) * 0x0A)
                            ))
                    }

                    Return (0x0AAC)
                }

                Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return ((0x0AAC + ((B1B2 (\_SB.PCI0.LPCB.EC.BDE0, \_SB.PCI0.LPCB.EC.BDE1) / 0x10) * 0x0A)
                            ))
                    }

                    Return (0xFFFF)
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.XZ00) /* External reference */
            }
        }

        ThermalZone (TZ01)
        {
            If (_OSI ("Darwin"))
            {
                Method (_TMP, 0, Serialized)  // _TMP: Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return ((0x0AAC + ((B1B2 (\_SB.PCI0.LPCB.EC.BDB0, \_SB.PCI0.LPCB.EC.BDB1) / 0x10) * 0x0A)
                            ))
                    }

                    Return (0x0AAC)
                }

                Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return ((0x0AAC + ((B1B2 (\_SB.PCI0.LPCB.EC.BDF0, \_SB.PCI0.LPCB.EC.BDF1) / 0x10) * 0x0A)
                            ))
                    }

                    Return (0xFFFF)
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.XZ01) /* External reference */
            }
        }

        ThermalZone (TZ02)
        {
            If (_OSI ("Darwin"))
            {
                Method (_TMP, 0, Serialized)  // _TMP: Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return (B1B2 (\_SB.PCI0.LPCB.EC.BDX0, \_SB.PCI0.LPCB.EC.BDX1))
                    }

                    Return (0x0AAC)
                }

                Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return (B1B2 (\_SB.PCI0.LPCB.EC.BDG0, \_SB.PCI0.LPCB.EC.BDG1))
                    }

                    Return (0xFFFF)
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.XZ02) /* External reference */
            }
        }

        ThermalZone (TZ03)
        {
            If (_OSI ("Darwin"))
            {
                Method (_TMP, 0, Serialized)  // _TMP: Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return ((0x0AAC + ((B1B2 (\_SB.PCI0.LPCB.EC.BDD0, \_SB.PCI0.LPCB.EC.BDD1) / 0x10) * 0x0A)
                            ))
                    }

                    Return (0x0AAC)
                }

                Method (_HOT, 0, Serialized)  // _HOT: Hot Temperature
                {
                    If ((\_SB.PCI0.LPCB.EC.ECAV == One))
                    {
                        Return ((0x0AAC + ((B1B2 (\_SB.PCI0.LPCB.EC.BDH0, \_SB.PCI0.LPCB.EC.BDH1) / 0x10) * 0x0A)
                            ))
                    }

                    Return (0xFFFF)
                }
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.XZ03) /* External reference */
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                ADBG ("_L17")
                If ((\_SB.GGIV (0x02020017) == Zero))
                {
                    \_SB.SGII (0x02020017, Zero)
                    Local0 = One
                    Notify (\_SB.LID0, 0x80) // Status Change
                }
                Else
                {
                    \_SB.SGII (0x02020017, One)
                    Local0 = Zero
                }

                If ((LIDS != Local0))
                {
                    LIDS = Local0
                    If ((\_SB.LID0.LOEN () == Zero))
                    {
                        If (IGDS)
                        {
                            If ((LIDS == Zero))
                            {
                                \_SB.PCI0.GFX0.CLID = 0x80000000
                            }

                            If ((LIDS == One))
                            {
                                \_SB.PCI0.GFX0.CLID = 0x80000003
                            }
                        }

                        If ((LIDS == Zero))
                        {
                            Notify (\_SB.LID0, 0x80) // Status Change
                        }

                        Return (Zero)
                    }

                    If (IGDS)
                    {
                        If (\_SB.PCI0.GFX0.GLID (LIDS))
                        {
                            \_SB.PCI0.GFX0.CLID |= 0x80000000
                        }
                    }

                    Notify (\_SB.LID0, 0x80) // Status Change
                }
            }
            Else
            {
                Return (\_GPE.XL17 ())
            }
        }
    }
}

