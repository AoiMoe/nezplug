# Microsoft Developer Studio Project File - Name="nezplug" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** 編集しないでください **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=nezplug - Win32 Release
!MESSAGE これは有効なﾒｲｸﾌｧｲﾙではありません。 このﾌﾟﾛｼﾞｪｸﾄをﾋﾞﾙﾄﾞするためには NMAKE を使用してください。
!MESSAGE [ﾒｲｸﾌｧｲﾙのｴｸｽﾎﾟｰﾄ] ｺﾏﾝﾄﾞを使用して実行してください
!MESSAGE 
!MESSAGE NMAKE /f "nezplug.mak".
!MESSAGE 
!MESSAGE NMAKE の実行時に構成を指定できます
!MESSAGE ｺﾏﾝﾄﾞ ﾗｲﾝ上でﾏｸﾛの設定を定義します。例:
!MESSAGE 
!MESSAGE NMAKE /f "nezplug.mak" CFG="nezplug - Win32 Release"
!MESSAGE 
!MESSAGE 選択可能なﾋﾞﾙﾄﾞ ﾓｰﾄﾞ:
!MESSAGE 
!MESSAGE "nezplug - Win32 Release" ("Win32 (x86) Static Library" 用)
!MESSAGE "nezplug - Win32 Debug" ("Win32 (x86) Static Library" 用)
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "nezplug - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\Release"
# PROP BASE Intermediate_Dir "..\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\Release"
# PROP Intermediate_Dir "..\Release"
# PROP Target_Dir ""
MTL=midl.exe
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\..\Release\nezplug.tlb" /win32
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\..\Release\nezplug.tlb" /win32
# ADD BASE CPP /nologo /MT /W3 /GX /Ox /Ot /Gy /I "nezvm\machine" /I "nezvm\device" /I "nezvm\cpu" /I "common\nez" /I "zlib" /I "." /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "_MBCS" /FR /GF /c
# ADD CPP /nologo /MT /W3 /GX /O2 /I "nezvm\machine" /I "nezvm\device" /I "nezvm\cpu" /I "common\nez" /I "zlib" /I "." /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "_MBCS" /FR /GF /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# SUBTRACT BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ELSEIF  "$(CFG)" == "nezplug - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\Debug"
# PROP BASE Intermediate_Dir "..\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\Debug"
# PROP Intermediate_Dir "..\Debug"
# PROP Target_Dir ""
MTL=midl.exe
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\..\Debug\nezplug.tlb" /win32
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\..\Debug\nezplug.tlb" /win32
# ADD BASE CPP /nologo /MTd /W4 /GX /ZI /Od /I "nezvm\machine" /I "nezvm\device" /I "nezvm\cpu" /I "common\nez" /I "zlib" /I "." /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "_MBCS" /FR /GZ /c
# ADD CPP /nologo /MTd /W4 /GX /ZI /Od /I "nezvm\machine" /I "nezvm\device" /I "nezvm\cpu" /I "common\nez" /I "zlib" /I "." /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "_MBCS" /FR /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo

!ENDIF 

# Begin Target

# Name "nezplug - Win32 Release"
# Name "nezplug - Win32 Debug"
# Begin Group "cpu"

# PROP Default_Filter ""
# Begin Group "6502"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km2a03m.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6280.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6280m.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6502.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6502cd.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6502ct.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6502ex.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6502ft.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6502m.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km6502ot.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km65c02.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\km65c02m.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\km6502\kmconfig.h
# End Source File
# End Group
# Begin Group "z80"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmdmg.c
DEP_CPP_KMDMG=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\cpu\kmz80\kmz80i.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmevent.c
DEP_CPP_KMEVE=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmevent.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmr800.c
DEP_CPP_KMR80=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\cpu\kmz80\kmz80i.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmtypes.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmz80.c
DEP_CPP_KMZ80=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\cpu\kmz80\kmz80i.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmz80.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmz80c.c
DEP_CPP_KMZ80C=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\cpu\kmz80\kmz80i.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmz80i.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\kmz80t.c
DEP_CPP_KMZ80T=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\cpu\kmz80\kmz80i.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\cpu\kmz80\makeft.c
# End Source File
# End Group
# End Group
# Begin Group "device"

# PROP Default_Filter ""
# Begin Group "nes"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\nezvm\device\nes\logtable.c
DEP_CPP_LOGTA=\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\logtable.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_apu.c
DEP_CPP_S_APU=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_apu.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_apu.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_fds.c
DEP_CPP_S_FDS=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\s_fds.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_fds.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_fds1.c
DEP_CPP_S_FDS1=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_fds.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_fds2.c
DEP_CPP_S_FDS2=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_fds.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_fds3.c
DEP_CPP_S_FDS3=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_fds.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_fme7.c
DEP_CPP_S_FME=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_fme7.h"\
	".\nezvm\device\s_psg.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_fme7.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_mmc5.c
DEP_CPP_S_MMC=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_mmc5.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_mmc5.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_n106.c
DEP_CPP_S_N10=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_n106.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_n106.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_vrc6.c
DEP_CPP_S_VRC=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_vrc6.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_vrc6.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_vrc7.c
DEP_CPP_S_VRC7=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\logtable.h"\
	".\nezvm\device\nes\s_vrc7.h"\
	".\nezvm\device\opl\s_opl.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\nes\s_vrc7.h
# End Source File
# End Group
# Begin Group "opll"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\nezvm\device\opl\s_deltat.c
DEP_CPP_S_DEL=\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\opl\s_deltat.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\opl\s_deltat.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\opl\s_opl.c
DEP_CPP_S_OPL=\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\opl\ill\i_fmpac.h"\
	".\nezvm\device\opl\ill\i_fmunit.h"\
	".\nezvm\device\opl\ill\i_vrc7.h"\
	".\nezvm\device\opl\s_deltat.h"\
	".\nezvm\device\opl\s_opl.h"\
	".\nezvm\device\opl\s_opltbl.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\opl\s_opl.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\opl\s_opltbl.c
DEP_CPP_S_OPLT=\
	".\nezvm\device\opl\s_opltbl.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\opl\s_opltbl.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\nezvm\device\divfix.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\kmsnddev.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_dmg.c
DEP_CPP_S_DMG=\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_dmg.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_dmg.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_hes.c
DEP_CPP_S_HES=\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_hes.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_hes.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_hesad.c
DEP_CPP_S_HESA=\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\opl\s_deltat.h"\
	".\nezvm\device\s_hesad.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_hesad.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_logtbl.c
DEP_CPP_S_LOG=\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_logtbl.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_psg.c
DEP_CPP_S_PSG=\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\device\s_psg.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_psg.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_scc.c
DEP_CPP_S_SCC=\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\device\s_scc.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_scc.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_sng.c
DEP_CPP_S_SNG=\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_logtbl.h"\
	".\nezvm\device\s_sng.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\device\s_sng.h
# End Source File
# End Group
# Begin Group "format"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\nezvm\machine\audiohandler.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\audiosys.c
DEP_CPP_AUDIO=\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\audiosys.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\handler.c
DEP_CPP_HANDL=\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\handler.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_gbr.c
DEP_CPP_M_GBR=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_dmg.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_gbr.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_gbr.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_hes.c
DEP_CPP_M_HES=\
	".\nezvm\cpu\km6502\km6280.h"\
	".\nezvm\cpu\km6502\km6280m.h"\
	".\nezvm\cpu\km6502\km6502cd.h"\
	".\nezvm\cpu\km6502\km6502ct.h"\
	".\nezvm\cpu\km6502\km6502ex.h"\
	".\nezvm\cpu\km6502\km6502ft.h"\
	".\nezvm\cpu\km6502\km6502ot.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_hes.h"\
	".\nezvm\device\s_hesad.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_hes.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_hes.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_kss.c
DEP_CPP_M_KSS=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\opl\s_opl.h"\
	".\nezvm\device\s_psg.h"\
	".\nezvm\device\s_scc.h"\
	".\nezvm\device\s_sng.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_kss.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_kss.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_nsd.c
DEP_CPP_M_NSD=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsd.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_nsd.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_nsf.c
DEP_CPP_M_NSF=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\nes\s_apu.h"\
	".\nezvm\device\nes\s_fds.h"\
	".\nezvm\device\nes\s_fme7.h"\
	".\nezvm\device\nes\s_mmc5.h"\
	".\nezvm\device\nes\s_n106.h"\
	".\nezvm\device\nes\s_vrc6.h"\
	".\nezvm\device\nes\s_vrc7.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_nsf.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_sgc.c
DEP_CPP_M_SGC=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\opl\s_opl.h"\
	".\nezvm\device\s_sng.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_sgc.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_sgc.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_zxay.c
DEP_CPP_M_ZXA=\
	".\nezvm\cpu\kmz80\kmevent.h"\
	".\nezvm\cpu\kmz80\kmtypes.h"\
	".\nezvm\cpu\kmz80\kmz80.h"\
	".\nezvm\device\divfix.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\device\s_psg.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_zxay.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\m_zxay.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\nsf6502.c
DEP_CPP_NSF65=\
	".\nezvm\cpu\km6502\km2a03m.h"\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\km6502cd.h"\
	".\nezvm\cpu\km6502\km6502ct.h"\
	".\nezvm\cpu\km6502\km6502ex.h"\
	".\nezvm\cpu\km6502\km6502ft.h"\
	".\nezvm\cpu\km6502\km6502ot.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\nsf6502.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\songinfo.c
DEP_CPP_SONGI=\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\nestypes.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\machine\songinfo.h
# End Source File
# End Group
# Begin Group "nez"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\common\nez\memzip.c
DEP_CPP_MEMZI=\
	".\common\nez\memzip.h"\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	
# End Source File
# Begin Source File

SOURCE=.\common\nez\memzip.h
# End Source File
# Begin Source File

SOURCE=.\common\nez\nez.c
DEP_CPP_NEZ_C=\
	".\common\nez\memzip.h"\
	".\common\nez\nez.h"\
	".\common\nez\nezuzext.h"\
	
# End Source File
# Begin Source File

SOURCE=.\common\nez\nez.h
# End Source File
# Begin Source File

SOURCE=.\common\nez\nezuzext.h
# End Source File
# End Group
# Begin Group "zlib"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\zlib\adler32.c
DEP_CPP_ADLER=\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	
# End Source File
# Begin Source File

SOURCE=.\zlib\crc32.c
DEP_CPP_CRC32=\
	".\zlib\crc32.h"\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	".\zlib\zutil.h"\
	
# End Source File
# Begin Source File

SOURCE=.\zlib\crc32.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inffast.c
DEP_CPP_INFFA=\
	".\zlib\inffast.h"\
	".\zlib\inflate.h"\
	".\zlib\inftrees.h"\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	".\zlib\zutil.h"\
	
# End Source File
# Begin Source File

SOURCE=.\zlib\inffast.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inffixed.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inflate.c
DEP_CPP_INFLA=\
	".\zlib\inffast.h"\
	".\zlib\inffixed.h"\
	".\zlib\inflate.h"\
	".\zlib\inftrees.h"\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	".\zlib\zutil.h"\
	
# End Source File
# Begin Source File

SOURCE=.\zlib\inflate.h
# End Source File
# Begin Source File

SOURCE=.\zlib\inftrees.c
DEP_CPP_INFTR=\
	".\zlib\inftrees.h"\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	".\zlib\zutil.h"\
	
# End Source File
# Begin Source File

SOURCE=.\zlib\inftrees.h
# End Source File
# Begin Source File

SOURCE=.\zlib\uncompr.c
DEP_CPP_UNCOM=\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	
# End Source File
# Begin Source File

SOURCE=.\zlib\zconf.h
# End Source File
# Begin Source File

SOURCE=.\zlib\zlib.h
# End Source File
# Begin Source File

SOURCE=.\zlib\zutil.c
DEP_CPP_ZUTIL=\
	".\zlib\zconf.h"\
	".\zlib\zlib.h"\
	".\zlib\zutil.h"\
	
# End Source File
# Begin Source File

SOURCE=.\zlib\zutil.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\nezvm\neserr.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\nestypes.h
# End Source File
# Begin Source File

SOURCE=.\nezvm\nezvm.c
DEP_CPP_NEZPL=\
	".\nezvm\cpu\km6502\km6502.h"\
	".\nezvm\cpu\km6502\kmconfig.h"\
	".\nezvm\device\kmsnddev.h"\
	".\nezvm\machine\audiohandler.h"\
	".\nezvm\machine\audiosys.h"\
	".\nezvm\machine\handler.h"\
	".\nezvm\machine\m_gbr.h"\
	".\nezvm\machine\m_hes.h"\
	".\nezvm\machine\m_kss.h"\
	".\nezvm\machine\m_nsd.h"\
	".\nezvm\machine\m_nsf.h"\
	".\nezvm\machine\m_sgc.h"\
	".\nezvm\machine\m_zxay.h"\
	".\nezvm\machine\nsf6502.h"\
	".\nezvm\machine\songinfo.h"\
	".\nezvm\neserr.h"\
	".\nezvm\nestypes.h"\
	".\nezvm\nezvm.h"\
	
# End Source File
# Begin Source File

SOURCE=.\nezvm\nezvm.h
# End Source File
# End Target
# End Project
