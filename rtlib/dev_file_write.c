/* file device */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "fb.h"

/*:::::*/
int fb_DevFileWrite( struct _FB_FILE *handle, const void* value, size_t valuelen )
{
    FILE *fp;

    FB_LOCK();

    fp = (FILE*) handle->opaque;

	if( fp == NULL ) {
		FB_UNLOCK();
		return fb_ErrorSetNum( FB_RTERROR_ILLEGALFUNCTIONCALL );
	}

	/* do write */
	if( fwrite( value, 1, valuelen, fp ) != valuelen ) {
		FB_UNLOCK();
		return fb_ErrorSetNum( FB_RTERROR_FILEIO );
	}

	FB_UNLOCK();

	return fb_ErrorSetNum( FB_RTERROR_OK );
}