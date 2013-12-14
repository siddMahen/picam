#include <stdio.h>
#include <stdint.h>
#include <string.h>

#include <picam.h>

int main(int agrc, char** argv){
	FILE *file = fopen("img.jpeg", "w+");

	long len = 0;
	PicamParams *prms = malloc(sizeof(PicamParams));
	prms->exposure = 2;
	prms->meterMode = 1;
	prms->imageFX = 0;
	prms->awbMode = 3;
	prms->ISO = 1000;
	prms->sharpness = 0;
	prms->contrast = 0;
	prms->brightness = 65;
	prms->saturation = 0;
	prms->videoStabilisation = 1;
	prms->exposureCompensation = 1;
	prms->rotation = 0;
	prms->hflip = 0;
	prms->vflip = 0;
	prms->shutter_speed = 0;
	prms->videoProfile = 0;
	prms->videoBitrate = 17000000;
	prms->videoFramerate = 30;
	prms->quantisationParameter = 0;
	prms->inlineHeaders = 0;

	char *img = (char *)takePhoto(prms, &len);
	free(prms);

	printf("Took a picture!\n");

	fwrite(img, 1, len, file);
	fclose(file);
	return 0;
}
