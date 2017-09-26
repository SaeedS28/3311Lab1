/*
 * Class TIME_MEASUREMENT
 */

#include "eif_macros.h"


#ifdef __cplusplus
extern "C" {
#endif

static const EIF_TYPE_INDEX egt_0_963 [] = {0xFF01,222,0xFFFF};
static const EIF_TYPE_INDEX egt_1_963 [] = {0xFF01,239,962,0xFFFF};
static const EIF_TYPE_INDEX egt_2_963 [] = {0xFF01,962,0xFFFF};
static const EIF_TYPE_INDEX egt_3_963 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_4_963 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_5_963 [] = {0xFF01,962,0xFFFF};
static const EIF_TYPE_INDEX egt_6_963 [] = {0xFF01,962,0xFFFF};
static const EIF_TYPE_INDEX egt_7_963 [] = {0,0xFFFF};
static const EIF_TYPE_INDEX egt_8_963 [] = {0xFF01,14,0xFFFF};
static const EIF_TYPE_INDEX egt_9_963 [] = {0xFF01,222,0xFFFF};
static const EIF_TYPE_INDEX egt_10_963 [] = {0xFF01,222,0xFFFF};
static const EIF_TYPE_INDEX egt_11_963 [] = {0xFF01,15,0xFFFF};
static const EIF_TYPE_INDEX egt_12_963 [] = {0xFF01,962,0xFFFF};
static const EIF_TYPE_INDEX egt_13_963 [] = {0xFF01,955,0xFFFF};
static const EIF_TYPE_INDEX egt_14_963 [] = {0xFF01,222,0xFFFF};
static const EIF_TYPE_INDEX egt_15_963 [] = {0xFF01,222,0xFFFF};


static const struct desc_info desc_963[] = {
	{EIF_GENERIC(NULL), 0xFFFFFFFF, 0xFFFFFFFF},
	{EIF_GENERIC(egt_0_963), 0, 0xFFFFFFFF},
	{EIF_GENERIC(egt_1_963), 1, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 2, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 3, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 4, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 5, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 6, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 7, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 8, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0183 /*193*/), 9, 0xFFFFFFFF},
	{EIF_GENERIC(egt_2_963), 10, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 11, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 12, 0xFFFFFFFF},
	{EIF_GENERIC(egt_3_963), 13, 0xFFFFFFFF},
	{EIF_GENERIC(egt_4_963), 14, 0xFFFFFFFF},
	{EIF_GENERIC(egt_5_963), 15, 0xFFFFFFFF},
	{EIF_GENERIC(egt_6_963), 16, 0xFFFFFFFF},
	{EIF_GENERIC(egt_7_963), 17, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 18, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 19, 0xFFFFFFFF},
	{EIF_GENERIC(egt_8_963), 20, 0xFFFFFFFF},
	{EIF_GENERIC(egt_9_963), 21, 0xFFFFFFFF},
	{EIF_GENERIC(egt_10_963), 22, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 23, 0xFFFFFFFF},
	{EIF_GENERIC(egt_11_963), 24, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 25, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 26, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 27, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0785 /*962*/), 28, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01B3 /*217*/), 29, 0xFFFFFFFF},
	{EIF_GENERIC(egt_12_963), 30, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 13293, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 13294, 0xFFFFFFFF},
	{EIF_GENERIC(egt_13_963), 13295, 0xFFFFFFFF},
	{EIF_GENERIC(egt_14_963), 13296, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 13300, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 13301, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 13302, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 13297, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 13298, 0xFFFFFFFF},
	{EIF_GENERIC(egt_15_963), 13299, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x01A1 /*208*/), 0x00, 0xFFFFFFFF},
	{EIF_NON_GENERIC(0x0189 /*196*/), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
	{EIF_GENERIC(NULL), 0x00, 0xFFFFFFFF},
};
void Init963(void)
{
	IDSC(desc_963, 0, 962);
	IDSC(desc_963 + 1, 1, 962);
	IDSC(desc_963 + 32, 387, 962);
	IDSC(desc_963 + 36, 384, 962);
	IDSC(desc_963 + 42, 383, 962);
}


#ifdef __cplusplus
}
#endif
