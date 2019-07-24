/* WIN32 standard headers */
#include "common/win32/win32l.h"
#undef NOGDI
#undef NOFONTSIG	/* WIN32SDK bug */
#include <windows.h>
/* ANSI standard headers */
#include <stdlib.h>
/* Libraries headers */
#include "hspsdk/hspdll.h"
/* Project headers */
#include "common/nsfsdk/nsfsdk.h"
#include "zlib/nez.h"
#include "snddrv/snddrv.h"
#include "ui/version.h"
#include "nezplug.h"
#include "ui/nezplug/Dialog.h"

void NSFSDKAPI NSFSDK_LoadSetting(HNSF hnsf, char *file);
void NSFSDKAPI NSFSDK_OpenFileInfoDlg(HINSTANCE p1, HWND p2);
void NSFSDKAPI NSFSDK_OpenMemViewDlg(HINSTANCE p1, HWND p2);
void NSFSDKAPI NSFSDK_OpenChMaskDlg(HINSTANCE p1, HWND p2);
void NSFSDKAPI NSFSDK_OpenIOViewDlg(HINSTANCE p1, HWND p2);
void NSFSDKAPI NSFSDK_OpenDumpDlg(HINSTANCE p1, HWND p2);

static struct HSPXXX_T
{
	int songno;
	HNSF hnsf;
	SOUNDDEVICE *psd;
	SOUNDDEVICEPDI pdi;
} hspxxx = { -1, NULL, NULL};

BOOL WINAPI HSPNEZVersion(int p1, int p2, int p3, int p4)
{
	return -HSP_VERSION;
}

static void HSPNSFWriteProc(void *lpargs, void *lpbuf, unsigned len)
{
	NSFSDK_Render(hspxxx.hnsf, lpbuf, len >> 2);
}

static void HSPNSFTermProc(void *lpargs)
{
}

BOOL WINAPI HSPNSFStop(int p1, int p2, int p3, int p4)
{
	SOUNDDEVICE *psd = hspxxx.psd;
	if (psd)
	{
		hspxxx.psd = NULL;
		psd->Term(psd);
	}
	return 0;
}
BOOL WINAPI HSPNSFPlay(BMSCR *p1, int p2, int p3, int p4)
{
	SOUNDDEVICEINITDATA sdid;
	HSPNSFStop(0,0,0,0);
	if (!hspxxx.hnsf) return -1;
	sdid.freq = 44100;
	sdid.ch = 2;
	sdid.bit = 16;
	sdid.lpargs = 0;
	sdid.Write = HSPNSFWriteProc;
	sdid.Term = HSPNSFTermProc;
	if (p1) hspxxx.pdi.hwnd = p1->hwnd;
	sdid.ppdi = &hspxxx.pdi;
	if (hspxxx.songno > 0) NSFSDK_SetSongNo(hspxxx.hnsf, hspxxx.songno);
	NSFSDK_SetFrequency(hspxxx.hnsf, sdid.freq);
	NSFSDK_SetChannel(hspxxx.hnsf, sdid.ch);
	NSFSDK_Reset(hspxxx.hnsf);
	hspxxx.psd = CreateSoundDevice(&sdid);
	return 0;
}

BOOL WINAPI HSPNSFPlayDX(BMSCR *p1, int p2, int p3, int p4)
{
	SOUNDDEVICEINITDATA sdid;
	HSPNSFStop(0,0,0,0);
	if (!hspxxx.hnsf) return -1;
	sdid.freq = 44100;
	sdid.ch = 2;
	sdid.bit = 16;
	sdid.lpargs = 0;
	sdid.Write = HSPNSFWriteProc;
	sdid.Term = HSPNSFTermProc;
	if (p1) hspxxx.pdi.hwnd = p1->hwnd;
	sdid.ppdi = &hspxxx.pdi;
	if (hspxxx.songno > 0) NSFSDK_SetSongNo(hspxxx.hnsf, hspxxx.songno);
	NSFSDK_SetFrequency(hspxxx.hnsf, sdid.freq);
	NSFSDK_SetChannel(hspxxx.hnsf, sdid.ch);
	NSFSDK_Reset(hspxxx.hnsf);
	hspxxx.psd = CreateSoundDeviceDX(&sdid);
	return 0;
}

BOOL WINAPI HSPNSFPlayEx(BMSCR *p1, int p2, int p3, int p4)
{
	SOUNDDEVICEINITDATA sdid;
	HSPNSFStop(0,0,0,0);
	if (!hspxxx.hnsf) return -1;
	sdid.freq = p2 ? p2 : 44100 ;
	sdid.ch = p3 ? p3 : 2 ;
	sdid.bit = p4 ? p4 : 16 ;
	sdid.lpargs = 0;
	sdid.Write = HSPNSFWriteProc;
	sdid.Term = HSPNSFTermProc;
	if (p1) hspxxx.pdi.hwnd = p1->hwnd;
	sdid.ppdi = &hspxxx.pdi;
	if (hspxxx.songno > 0) NSFSDK_SetSongNo(hspxxx.hnsf, hspxxx.songno);
	NSFSDK_SetFrequency(hspxxx.hnsf, sdid.freq);
	NSFSDK_SetChannel(hspxxx.hnsf, sdid.ch);
	NSFSDK_Reset(hspxxx.hnsf);
	hspxxx.psd = CreateSoundDevice(&sdid);
	return 0;
}

BOOL WINAPI HSPNSFPlayDXEx(BMSCR *p1, int p2, int p3, int p4)
{
	SOUNDDEVICEINITDATA sdid;
	HSPNSFStop(0,0,0,0);
	if (!hspxxx.hnsf) return -1;
	sdid.freq = p2 ? p2 : 44100 ;
	sdid.ch = p3 ? p3 : 2 ;
	sdid.bit = p4 ? p4 : 16 ;
	sdid.lpargs = 0;
	sdid.Write = HSPNSFWriteProc;
	sdid.Term = HSPNSFTermProc;
	if (p1) hspxxx.pdi.hwnd = p1->hwnd;
	sdid.ppdi = &hspxxx.pdi;
	if (hspxxx.songno > 0) NSFSDK_SetSongNo(hspxxx.hnsf, hspxxx.songno);
	NSFSDK_SetFrequency(hspxxx.hnsf, sdid.freq);
	NSFSDK_SetChannel(hspxxx.hnsf, sdid.ch);
	NSFSDK_Reset(hspxxx.hnsf);
	hspxxx.psd = CreateSoundDeviceDX(&sdid);
	return 0;
}

BOOL WINAPI HSPNSFPlayIni(BMSCR *p1, char *p2, int p3, int p4)
{
	SOUNDDEVICEINITDATA sdid;
	HSPNSFStop(0,0,0,0);
	if (!hspxxx.hnsf) return -1;
	sdid.ch = 2;
	sdid.bit = 16 ;
	sdid.lpargs = 0;
	sdid.Write = HSPNSFWriteProc;
	sdid.Term = HSPNSFTermProc;
	if (p1) hspxxx.pdi.hwnd = p1->hwnd;
	sdid.ppdi = &hspxxx.pdi;
	if (hspxxx.songno > 0) NSFSDK_SetSongNo(hspxxx.hnsf, hspxxx.songno);
	if(!p2)NSFSDK_LoadSetting(hspxxx.hnsf, "nezplug.ini");
	  else NSFSDK_LoadSetting(hspxxx.hnsf, p2);
	sdid.freq = NSFSDK_GetFrequency(hspxxx.hnsf);
//	sdid.ch = NSFSDK_GetChannel(hspxxx.hnsf);
	NSFSDK_SetChannel(hspxxx.hnsf, sdid.ch);
	NSFSDK_Reset(hspxxx.hnsf);
	hspxxx.psd = CreateSoundDevice(&sdid);
	return 0;
}

BOOL WINAPI HSPNSFPlayIniDX(BMSCR *p1, char *p2, int p3, int p4)
{
	SOUNDDEVICEINITDATA sdid;
	HSPNSFStop(0,0,0,0);
	if (!hspxxx.hnsf) return -1;
	sdid.ch = 2;
	sdid.bit = 16 ;
	sdid.lpargs = 0;
	sdid.Write = HSPNSFWriteProc;
	sdid.Term = HSPNSFTermProc;
	if (p1) hspxxx.pdi.hwnd = p1->hwnd;
	sdid.ppdi = &hspxxx.pdi;
	if (hspxxx.songno > 0) NSFSDK_SetSongNo(hspxxx.hnsf, hspxxx.songno);
	if(!p2)NSFSDK_LoadSetting(hspxxx.hnsf, "nezplug.ini");
	  else NSFSDK_LoadSetting(hspxxx.hnsf, p2);
	sdid.freq = NSFSDK_GetFrequency(hspxxx.hnsf);
//	sdid.ch = NSFSDK_GetChannel(hspxxx.hnsf);
	NSFSDK_SetChannel(hspxxx.hnsf, sdid.ch);
	NSFSDK_Reset(hspxxx.hnsf);
	hspxxx.psd = CreateSoundDeviceDX(&sdid);
	return 0;
}

BOOL WINAPI HSPNSFClose(BMSCR *p1, int p2, int p3, int p4)
{
	HSPNSFStop(0,0,0,0);
	if (hspxxx.hnsf)
	{
		NSFSDK_Terminate(hspxxx.hnsf);
		hspxxx.hnsf = NULL;
	}
	return 0;
}

BOOL WINAPI HSPNSFOpen(BMSCR *p1, char *p2, int p3, void *p4)
{
	DWORD size;
	void *pbuf;
	hspxxx.pdi.hwnd = p1->hwnd;
	HSPNSFClose(0,0,0,0);
	size = NEZ_extract(p2, &pbuf);
	if (size)
	{
		hspxxx.hnsf = NSFSDK_Load(pbuf, size);
		free(pbuf);
		if (hspxxx.hnsf) return 0;
	}
	return -1;
}

BOOL WINAPI HSPNSFOpenMemory(void *p1, int p2, int p3, void *p4)
{
	DWORD size;
	void *pbuf;
	HSPNSFClose(0,0,0,0);
	if (p2)
	{
		size = NEZ_extractMem(p1, p2, &pbuf);
		if (size)
		{
			hspxxx.hnsf = NSFSDK_Load(pbuf, size);
			free(pbuf);
			if (hspxxx.hnsf) return 0;
		}
		else
		{
			hspxxx.hnsf = NSFSDK_Load(p1, p2);
			if (hspxxx.hnsf) return 0;
		}
	}
	return -1;
}

BOOL WINAPI HSPNSFSongNo(int p1, int p2, int p3, int p4)
{
	if (p1) hspxxx.songno = p1;
	return 0-NSFSDK_GetSongNo(hspxxx.hnsf);
}

BOOL WINAPI HSPNSFVolume(int p1, int p2, int p3, int p4)
{
	NSFSDK_Volume(hspxxx.hnsf, p1);
	return 0;
}

BOOL WINAPI HSPNSFClean(BMSCR *p1, int p2, int p3, int p4)
{
	HSPNSFClose(0,0,0,0);
	return 0;
}

BOOL WINAPI HSPNSFGetSongStart(int p1, int p2, int p3, int p4)
{
	return 0-NSFSDK_GetSongStart(hspxxx.hnsf);
}

BOOL WINAPI HSPNSFGetSongMax(int p1, int p2, int p3, int p4)
{
	return 0-NSFSDK_GetSongMax(hspxxx.hnsf);
}

BOOL WINAPI HSPNSFGetChannel(int p1, int p2, int p3, int p4)
{
	return 0-NSFSDK_GetChannel(hspxxx.hnsf);
}

BOOL WINAPI HSPNSFGetFileInfo(char *p1, char *p2, char *p3, char *p4)
{
	char *pb1,*pb2,*pb3,*pb4;
	NSFSDK_GetFileInfo(&pb1,&pb2,&pb3,&pb4);
	if(p1) if(pb1) XMEMCPY(p1, pb1,33);
	if(p2) if(pb2)  XMEMCPY(p2, pb2,33);
	if(p3) if(pb3)  XMEMCPY(p3, pb3,33);
	if(p4) if(pb4)  XMEMCPY(p4, pb4,1024);
	return 0;
}

BOOL WINAPI HSPNSFOpenFileInfoDlg(BMSCR *p1, int p2, int p3, int p4)
{
	NSFSDK_OpenFileInfoDlg(GetDLLInstance(), p1->hwnd);
	return 0;
}

BOOL WINAPI HSPNSFOpenMemViewDlg(BMSCR *p1, int p2, int p3, int p4)
{
	NSFSDK_OpenMemViewDlg(GetDLLInstance(), p1->hwnd);
	return 0;
}

BOOL WINAPI HSPNSFOpenChMaskDlg(BMSCR *p1, int p2, int p3, int p4)
{
	NSFSDK_OpenChMaskDlg(GetDLLInstance(), p1->hwnd);
	return 0;
}

BOOL WINAPI HSPNSFOpenIOViewDlg(BMSCR *p1, int p2, int p3, int p4)
{
	NSFSDK_OpenIOViewDlg(GetDLLInstance(), p1->hwnd);
	return 0;
}

BOOL WINAPI HSPNSFOpenDumpDlg(BMSCR *p1, int p2, int p3, int p4)
{
	NSFSDK_OpenDumpDlg(GetDLLInstance(), p1->hwnd);
	return 0;
}

/* glue - these seem unnecessary, but somehow exported. */
void NSFSDKAPI NSFSDK_OpenFileInfoDlg(HINSTANCE p1, HWND p2)
{
	NEZFileInfoDlg(p1, p2);
}

void NSFSDKAPI NSFSDK_OpenMemViewDlg(HINSTANCE p1, HWND p2)
{
	NEZMemViewDlg(p1, p2);
}

void NSFSDKAPI NSFSDK_OpenChMaskDlg(HINSTANCE p1, HWND p2)
{
	NEZChMaskDlg(p1, p2);
}

void NSFSDKAPI NSFSDK_OpenIOViewDlg(HINSTANCE p1, HWND p2)
{
	NEZIOViewDlg(p1, p2);
}

void NSFSDKAPI NSFSDK_OpenDumpDlg(HINSTANCE p1, HWND p2)
{
	NEZDumpDlg(p1, p2);
}

static void GetSettingString(LPCSTR lpKey, LPCSTR lpDefault, LPSTR lpBuf, DWORD nSize, char *file)
{
	GetPrivateProfileString("NEZplug", lpKey, lpDefault, lpBuf, nSize, file);
}
static void SetSettingString(LPCSTR lpKey, LPCSTR lpStr, char *file)
{
	WritePrivateProfileString("NEZplug", lpKey, lpStr, file);
}

static int GetSettingInt(LPCSTR lpKey, int iDefault, char *file)
{
	char buf[128], dbuf[128];
	wsprintf(dbuf, "%d", iDefault);
	GetPrivateProfileString("NEZplug", lpKey, dbuf, buf, sizeof(buf), file);
	return atoi(buf);
}
static void SetSettingInt(LPCSTR lpKey, int iInt, char *file)
{
	char buf[128];
	wsprintf(buf, "%d", iInt);
	WritePrivateProfileString("NEZplug", lpKey, buf, file);
}

void NSFSDKAPI NSFSDK_LoadSetting(HNSF hnsf, char *file)
{
	if (hnsf == 0) return;
	if (file == 0) return;

	{
		extern int NSF_noise_random_reset;
		NSF_noise_random_reset  = GetSettingInt("NSFNoiseRandomReset", 0, file);
		SetSettingInt("NSFNoiseRandomReset", NSF_noise_random_reset, file);
	}
	{
		extern int Namco106_Realmode;
		Namco106_Realmode = GetSettingInt("Namco106RealMode", 1, file);
		SetSettingInt("Namco106RealMode", Namco106_Realmode, file);
	}
	{
		extern int Namco106_Volume;
		Namco106_Volume = GetSettingInt("Namco106Volume", 16, file);
		SetSettingInt("Namco106Volume", Namco106_Volume, file);
	}
	{
		extern int NSF_2A03Type;
		NSF_2A03Type  = GetSettingInt("2A03Type", 1, file);
		SetSettingInt("2A03Type", NSF_2A03Type, file);
	}
	{
		extern int FDS_RealMode;
		FDS_RealMode = GetSettingInt("FDSRealMode", 3, file);
		SetSettingInt("FDSRealMode", FDS_RealMode, file);
	}
	{
		extern int GBAMode;
		GBAMode = GetSettingInt("GBAMode", 0, file);
		SetSettingInt("GBAMode", GBAMode, file);
	}
	{
		extern int LowPassFilterLevel;
		LowPassFilterLevel = GetSettingInt("LowPassFilterLevel", 16, file);
		if (LowPassFilterLevel <  0) LowPassFilterLevel =  0;
		if (LowPassFilterLevel > 32) LowPassFilterLevel = 32;
		SetSettingInt("LowPassFilterLevel", LowPassFilterLevel, file);
	}
	{
		extern int NESAPUVolume;
		NESAPUVolume = GetSettingInt("NESAPUVolume", 64, file);
		if (NESAPUVolume < 0) NESAPUVolume =  0;
		if (NESAPUVolume > 255) NESAPUVolume = 255;
		SetSettingInt("NESAPUVolume", NESAPUVolume, file);
	}
	{
		extern int NESRealDAC;
		NESRealDAC = GetSettingInt("NESRealDAC", 1, file);
		SetSettingInt("NESRealDAC", NESRealDAC, file);
	}
	{
		extern int MSXPSGType;
		MSXPSGType = GetSettingInt("MSXPSGType", 1, file);
		SetSettingInt("MSXPSGType", MSXPSGType, file);
	}
	{
		extern int MSXPSGVolume;
		MSXPSGVolume = GetSettingInt("MSXPSGVolume", 64, file);
		if (MSXPSGVolume < 0) MSXPSGVolume =  0;
		if (MSXPSGVolume > 255) MSXPSGVolume = 255;
		SetSettingInt("MSXPSGVolume", MSXPSGVolume, file);
	}
	{
		extern char ColecoBIOSFilePath[0x200];
		GetSettingString("ColecoBIOSFilePath", "", ColecoBIOSFilePath, sizeof(ColecoBIOSFilePath), file);
		SetSettingString("ColecoBIOSFilePath", ColecoBIOSFilePath, file);
	}
	{
		int frequency;
		frequency = GetSettingInt("Frequency", 44100, file);
		if (frequency < 8000) frequency = 44100;
		if (frequency > 192000) frequency = 44100;
		SetSettingInt("Frequency", frequency, file);
		NEZSetFrequency(hnsf->ctx, frequency);
	}
/*	{
		int channel;
		channel = GetSettingInt("Channel", 2, file);
		if (channel < 1) channel = 1;
		if (channel > 2) channel = 2;
		SetSettingInt("Channel", channel, file);
		NEZSetChannel(hnsf->ctx, channel);
	}
*/	{
		int filtertype;
		filtertype = GetSettingInt("FilterType", 0, file);
		SetSettingInt("FilterType", filtertype, file);
		NEZSetFilter(hnsf->ctx, filtertype);
	}

}
