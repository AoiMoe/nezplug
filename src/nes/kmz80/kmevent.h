/*
  KMxxx event timer header
  by Mamiya
*/

#ifndef KMEVENT_H_
#define KMEVENT_H_

#include "kmtypes.h"
#ifdef __cplusplus
extern "C" {
#endif

#ifndef KMEVENT_ITEM_MAX
#define KMEVENT_ITEM_MAX 31 /* MAX 255 */
#endif

typedef struct KMEVENT_TAG KMEVENT;
typedef struct KMEVENT_ITEM_TAG KMEVENT_ITEM;
typedef Uint32 KMEVENT_ITEM_ID;
struct KMEVENT_ITEM_TAG {
	/* �����o���ڃA�N�Z�X�֎~ */
	void *user;
	void (*proc)(KMEVENT *event, KMEVENT_ITEM_ID curid, void *user);
	Uint32 count;	/* �C�x���g�������� */
#if KMEVENT_ITEM_MAX > 255
	Uint32 prev;		/* �o���������N���X�g */
	Uint32 next;		/* �o���������N���X�g */
	Uint8 sysflag;		/* ������ԃt���O */
	Uint8 flag2;		/* ���g�p */
	Uint8 d3;			/* ���g�p */
	Uint8 d4;			/* ���g�p */
#else
	Uint8 prev;		/* �o���������N���X�g */
	Uint8 next;		/* �o���������N���X�g */
	Uint8 sysflag;	/* ������ԃt���O */
	Uint8 flag2;	/* ���g�p */
#endif
};
struct KMEVENT_TAG {
	/* �����o���ڃA�N�Z�X�֎~ */
	KMEVENT_ITEM item[KMEVENT_ITEM_MAX + 1];
};

void kmevent_init(KMEVENT *kme);
KMEVENT_ITEM_ID kmevent_alloc(KMEVENT *kme);
void kmevent_free(KMEVENT *kme, KMEVENT_ITEM_ID curid);
void kmevent_settimer(KMEVENT *kme, KMEVENT_ITEM_ID curid, Uint32 time);
Uint32 kmevent_gettimer(KMEVENT *kme, KMEVENT_ITEM_ID curid, Uint32 *time);
void kmevent_setevent(KMEVENT *kme, KMEVENT_ITEM_ID curid, void (*proc)(), void *user);
void kmevent_process(KMEVENT *kme, Uint32 cycles);

#ifdef __cplusplus
}
#endif
#endif