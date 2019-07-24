/*
	NSF SDK API - Win32
	Author:   Mamiya (mamiya@proc.org.tohoku.ac.jp)
	Language: ANSI-C
	License:  PDS
	Required DirectX3 or later vresion
*/

/* #define NSFSDKAPI __declspec(dllexport) */

#include "nsfsdk.h"
#include "nezplug.h"

typedef struct NSFSDK_TAG
{
	unsigned volume;
	NEZ_PLAY *ctx;
}  NSFSDK_TAG;

HNSF NSFSDKAPI NSFSDK_Load(void *pData, unsigned uSize)
{
	NSFSDK_TAG *d = XMALLOC(sizeof(NSFSDK_TAG));
	if (d)
	{
		d->ctx = NEZNew();
		if (d->ctx)
		{
			d->volume = 0;
			if (!NEZLoad(d->ctx, pData, uSize)) return d;
		}
	}

	if (d)
	{
		if (d->ctx)
		  NEZDelete(d->ctx);
		XFREE(d);
	}
	return 0;
}

void NSFSDKAPI NSFSDK_SetSongNo(HNSF hnsf, unsigned uSongNo)
{
	if (hnsf == 0) return;
	NEZSetSongNo(hnsf->ctx, uSongNo);
}

void NSFSDKAPI NSFSDK_SetFrequency(HNSF hnsf, unsigned freq)
{
	if (hnsf == 0) return;
	NEZSetFrequency(hnsf->ctx, freq);
}

void NSFSDKAPI NSFSDK_SetNosefartFilter(HNSF hnsf, unsigned filter)
{
	if (hnsf == 0) return;
	NEZSetFilter(hnsf->ctx, filter);
}


void NSFSDKAPI NSFSDK_SetChannel(HNSF hnsf, unsigned ch)
{
	if (hnsf == 0) return;
	NEZSetChannel(hnsf->ctx, ch);
}

void NSFSDKAPI NSFSDK_Reset(HNSF hnsf)
{
	if (hnsf == 0) return;
	NEZReset(hnsf->ctx);
	NEZVolume(hnsf->ctx, hnsf->volume);
}

void NSFSDKAPI NSFSDK_Volume(HNSF hnsf, unsigned uVolume)
{
	if (hnsf == 0) return;
	hnsf->volume = uVolume;
	NEZVolume(hnsf->ctx, hnsf->volume);
}

void NSFSDKAPI NSFSDK_Render(HNSF hnsf, void *bufp, unsigned buflen)
{
	if (hnsf == 0) return;
	NEZRender(hnsf->ctx, bufp, buflen);
}

void NSFSDKAPI NSFSDK_Terminate(HNSF hnsf)
{
	if (hnsf == 0) return;
	NEZDelete(hnsf->ctx);
	XFREE(hnsf);
}

unsigned NSFSDKAPI NSFSDK_GetSongNo(HNSF hnsf)
{
	if (hnsf == 0) return 0;
	return NEZGetSongNo(hnsf->ctx);
}

unsigned NSFSDKAPI NSFSDK_GetSongStart(HNSF hnsf)
{
	if (hnsf == 0) return 0;
	return NEZGetSongStart(hnsf->ctx);
}

unsigned NSFSDKAPI NSFSDK_GetSongMax(HNSF hnsf)
{
	unsigned ret;
	if (hnsf == 0) return 0;
	ret = NEZGetSongMax(hnsf->ctx);
	if (!ret) return 256;
	return ret;
}

unsigned NSFSDKAPI NSFSDK_GetChannel(HNSF hnsf)
{
	if (hnsf == 0) return 1;
	return NEZGetChannel(hnsf->ctx);
}

unsigned NSFSDKAPI NSFSDK_GetFrequency(HNSF hnsf)
{
	if (hnsf == 0) return 1;
	return NEZGetFrequency(hnsf->ctx);
}

void NSFSDKAPI NSFSDK_GetFileInfo(char **p1, char **p2, char **p3, char **p4)
{
	NEZGetFileInfo(p1,p2,p3,p4);
}
