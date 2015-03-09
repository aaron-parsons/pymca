ctypedef unsigned char uint8_t  # TODO use libc.stdint when available

cdef extern from "Colormap.h":
    void colormapFillPixmap(void * data,
                            unsigned int type,
                            unsigned long length,
                            double startValue,
                            double endValue,
                            unsigned int isLog10Mapping,
                            uint8_t * RGBAColormap,
                            unsigned int colormapLength,
                            uint8_t * RGBAPixmapOut) nogil

    void initFastLog10() nogil
    double fastLog10(double value) nogil
