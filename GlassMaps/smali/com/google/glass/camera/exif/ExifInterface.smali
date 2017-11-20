.class public Lcom/google/glass/camera/exif/ExifInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATETIME_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd kk:mm:ss"

.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final DEFINITION_NULL:I = 0x0

.field private static final GPS_DATE_FORMAT_STR:Ljava/lang/String; = "yyyy:MM:dd"

.field public static final IFD_NULL:I = -0x1

.field private static final NULL_ARGUMENT_STRING:Ljava/lang/String; = "Argument is null"

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_NULL:I = -0x1

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;

.field private static sOffsetTags:Ljava/util/HashSet;


# instance fields
.field private mData:Lcom/google/glass/camera/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 74
    const/16 v0, 0x100

    .line 75
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 76
    const/16 v0, 0x101

    .line 77
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 78
    const/16 v0, 0x102

    .line 79
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 80
    const/16 v0, 0x103

    .line 81
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 82
    const/16 v0, 0x106

    .line 83
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 84
    const/16 v0, 0x10e

    .line 85
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 86
    const/16 v0, 0x10f

    .line 87
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MAKE:I

    .line 88
    const/16 v0, 0x110

    .line 89
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MODEL:I

    .line 90
    const/16 v0, 0x111

    .line 91
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 92
    const/16 v0, 0x112

    .line 93
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 94
    const/16 v0, 0x115

    .line 95
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 96
    const/16 v0, 0x116

    .line 97
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 98
    const/16 v0, 0x117

    .line 99
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 100
    const/16 v0, 0x11a

    .line 101
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 102
    const/16 v0, 0x11b

    .line 103
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 104
    const/16 v0, 0x11c

    .line 105
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 106
    const/16 v0, 0x128

    .line 107
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 108
    const/16 v0, 0x12d

    .line 109
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 110
    const/16 v0, 0x131

    .line 111
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 112
    const/16 v0, 0x132

    .line 113
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 114
    const/16 v0, 0x13b

    .line 115
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ARTIST:I

    .line 116
    const/16 v0, 0x13e

    .line 117
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 118
    const/16 v0, 0x13f

    .line 119
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 120
    const/16 v0, 0x211

    .line 121
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 122
    const/16 v0, 0x212

    .line 123
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 124
    const/16 v0, 0x213

    .line 125
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 126
    const/16 v0, 0x214

    .line 127
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 128
    const/16 v0, -0x7d68

    .line 129
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 130
    const/16 v0, -0x7897

    .line 131
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 132
    const/16 v0, -0x77db

    .line 133
    invoke-static {v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 135
    const/16 v0, 0x201

    .line 136
    invoke-static {v4, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 137
    const/16 v0, 0x202

    .line 138
    invoke-static {v4, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 140
    const/16 v0, -0x7d66

    .line 141
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 142
    const/16 v0, -0x7d63

    .line 143
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 144
    const/16 v0, -0x77de

    .line 145
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 146
    const/16 v0, -0x77dc

    .line 147
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 148
    const/16 v0, -0x77d9

    .line 149
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 150
    const/16 v0, -0x77d8

    .line 151
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_OECF:I

    .line 152
    const/16 v0, -0x7000

    .line 153
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 154
    const/16 v0, -0x6ffd

    .line 155
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 156
    const/16 v0, -0x6ffc

    .line 157
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 158
    const/16 v0, -0x6eff

    .line 159
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 160
    const/16 v0, -0x6efe

    .line 161
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 162
    const/16 v0, -0x6dff

    .line 163
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 164
    const/16 v0, -0x6dfe

    .line 165
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 166
    const/16 v0, -0x6dfd

    .line 167
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 168
    const/16 v0, -0x6dfc

    .line 169
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 170
    const/16 v0, -0x6dfb

    .line 171
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 172
    const/16 v0, -0x6dfa

    .line 173
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 174
    const/16 v0, -0x6df9

    .line 175
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 176
    const/16 v0, -0x6df8

    .line 177
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 178
    const/16 v0, -0x6df7

    .line 179
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FLASH:I

    .line 180
    const/16 v0, -0x6df6

    .line 181
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 182
    const/16 v0, -0x6dec

    .line 183
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 184
    const/16 v0, -0x6d84

    .line 185
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 186
    const/16 v0, -0x6d7a

    .line 187
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 188
    const/16 v0, -0x6d70

    .line 189
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 190
    const/16 v0, -0x6d6f

    .line 191
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 192
    const/16 v0, -0x6d6e

    .line 193
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 194
    const/16 v0, -0x6000

    .line 195
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 196
    const/16 v0, -0x5fff

    .line 197
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 198
    const/16 v0, -0x5ffe

    .line 199
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 200
    const/16 v0, -0x5ffd

    .line 201
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 202
    const/16 v0, -0x5ffc

    .line 203
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 204
    const/16 v0, -0x5ffb

    .line 205
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 206
    const/16 v0, -0x5df5

    .line 207
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 208
    const/16 v0, -0x5df4

    .line 209
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 210
    const/16 v0, -0x5df2

    .line 211
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 212
    const/16 v0, -0x5df1

    .line 213
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 214
    const/16 v0, -0x5df0

    .line 215
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 216
    const/16 v0, -0x5dec

    .line 217
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 218
    const/16 v0, -0x5deb

    .line 219
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 220
    const/16 v0, -0x5de9

    .line 221
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 222
    const/16 v0, -0x5d00

    .line 223
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 224
    const/16 v0, -0x5cff

    .line 225
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 226
    const/16 v0, -0x5cfe

    .line 227
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 228
    const/16 v0, -0x5bff

    .line 229
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 230
    const/16 v0, -0x5bfe

    .line 231
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 232
    const/16 v0, -0x5bfd

    .line 233
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 234
    const/16 v0, -0x5bfc

    .line 235
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 236
    const/16 v0, -0x5bfb

    .line 237
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 238
    const/16 v0, -0x5bfa

    .line 239
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 240
    const/16 v0, -0x5bf9

    .line 241
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 242
    const/16 v0, -0x5bf8

    .line 243
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_CONTRAST:I

    .line 244
    const/16 v0, -0x5bf7

    .line 245
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SATURATION:I

    .line 246
    const/16 v0, -0x5bf6

    .line 247
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 248
    const/16 v0, -0x5bf5

    .line 249
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 250
    const/16 v0, -0x5bf4

    .line 251
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 252
    const/16 v0, -0x5be0

    .line 253
    invoke-static {v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 256
    invoke-static {v2, v3}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 258
    invoke-static {v2, v4}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 260
    invoke-static {v2, v1}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 262
    invoke-static {v2, v5}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 264
    invoke-static {v2, v2}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 265
    const/4 v0, 0x5

    .line 266
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 267
    const/4 v0, 0x6

    .line 268
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 269
    const/4 v0, 0x7

    .line 270
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 271
    const/16 v0, 0x8

    .line 272
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 273
    const/16 v0, 0x9

    .line 274
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 275
    const/16 v0, 0xa

    .line 276
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 277
    const/16 v0, 0xb

    .line 278
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 279
    const/16 v0, 0xc

    .line 280
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 281
    const/16 v0, 0xd

    .line 282
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 283
    const/16 v0, 0xe

    .line 284
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 285
    const/16 v0, 0xf

    .line 286
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 287
    const/16 v0, 0x10

    .line 288
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 289
    const/16 v0, 0x11

    .line 290
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 291
    const/16 v0, 0x12

    .line 292
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 293
    const/16 v0, 0x13

    .line 294
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 295
    const/16 v0, 0x14

    .line 296
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 297
    const/16 v0, 0x15

    .line 298
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 299
    const/16 v0, 0x16

    .line 300
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 301
    const/16 v0, 0x17

    .line 302
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 303
    const/16 v0, 0x18

    .line 304
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 305
    const/16 v0, 0x19

    .line 306
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 307
    const/16 v0, 0x1a

    .line 308
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 309
    const/16 v0, 0x1b

    .line 310
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 311
    const/16 v0, 0x1c

    .line 312
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 313
    const/16 v0, 0x1d

    .line 314
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 315
    const/16 v0, 0x1e

    .line 316
    invoke-static {v2, v0}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 319
    invoke-static {v5, v4}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 327
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 339
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/google/glass/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    new-instance v0, Lcom/google/glass/camera/exif/ExifData;

    sget-object v1, Lcom/google/glass/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    .line 1949
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1950
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1951
    const-string v0, "UTC"

    .line 1952
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 714
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 715
    return-void
.end method

.method protected static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 2053
    if-eqz p0, :cond_0

    .line 2055
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2060
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static convertLatOrLongToDouble([Lcom/google/glass/camera/exif/Rational;Ljava/lang/String;)D
    .locals 8

    .prologue
    .line 1911
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/Rational;->toDouble()D

    move-result-wide v0

    .line 1912
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/google/glass/camera/exif/Rational;->toDouble()D

    move-result-wide v2

    .line 1913
    const/4 v4, 0x2

    aget-object v4, p0, v4

    invoke-virtual {v4}, Lcom/google/glass/camera/exif/Rational;->toDouble()D

    move-result-wide v4

    .line 1914
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v6

    add-double/2addr v0, v2

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double v2, v4, v2

    add-double/2addr v0, v2

    .line 1915
    const-string v2, "S"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "W"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 1916
    :cond_0
    neg-double v0, v0

    .line 1918
    :cond_1
    return-wide v0

    .line 1920
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static defineTag(IS)I
    .locals 2

    .prologue
    .line 348
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x0

    .line 2044
    new-array v1, v4, [B

    .line 2045
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 2046
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2047
    invoke-virtual {p2, v1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2048
    invoke-virtual {p1, v1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_0

    .line 2050
    :cond_0
    return-void
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1

    .prologue
    .line 2347
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getAllowedIfdsFromInfo(I)[I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2351
    invoke-static {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v2

    .line 2352
    invoke-static {}, Lcom/google/glass/camera/exif/IfdData;->getIfds()[I

    move-result-object v3

    .line 2353
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 2354
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_1

    .line 2355
    shr-int v5, v2, v1

    and-int/lit8 v5, v5, 0x1

    .line 2356
    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2357
    aget v5, v3, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2354
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2360
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2361
    const/4 v0, 0x0

    .line 2368
    :goto_1
    return-object v0

    .line 2363
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [I

    .line 2365
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 2366
    add-int/lit8 v0, v1, 0x1

    aput v4, v2, v1

    move v1, v0

    .line 2367
    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 2368
    goto :goto_1
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    .prologue
    .line 2404
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2383
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 2396
    :cond_1
    return v0

    .line 2387
    :cond_2
    invoke-static {}, Lcom/google/glass/camera/exif/IfdData;->getIfds()[I

    move-result-object v4

    move v3, v1

    move v0, v1

    .line 2388
    :goto_0
    const/4 v2, 0x5

    if-ge v3, v2, :cond_1

    .line 2389
    array-length v5, p0

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget v6, p0, v2

    .line 2390
    aget v7, v4, v3

    if-ne v7, v6, :cond_4

    .line 2391
    const/4 v2, 0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2388
    :cond_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 2389
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getOrientationValueForRotation(I)S
    .locals 2

    .prologue
    .line 1861
    rem-int/lit16 v0, p0, 0x168

    .line 1862
    if-gez v0, :cond_0

    .line 1863
    add-int/lit16 v0, v0, 0x168

    .line 1865
    :cond_0
    const/16 v1, 0x5a

    if-ge v0, v1, :cond_1

    .line 1866
    const/4 v0, 0x1

    .line 1872
    :goto_0
    return v0

    .line 1867
    :cond_1
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_2

    .line 1868
    const/4 v0, 0x6

    goto :goto_0

    .line 1869
    :cond_2
    const/16 v1, 0x10e

    if-ge v0, v1, :cond_3

    .line 1870
    const/4 v0, 0x3

    goto :goto_0

    .line 1872
    :cond_3
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1883
    packed-switch p0, :pswitch_data_0

    .line 1893
    :goto_0
    :pswitch_0
    return v0

    .line 1887
    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    .line 1889
    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    .line 1891
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 1883
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1

    .prologue
    .line 363
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1

    .prologue
    .line 356
    int-to-short v0, p0

    return v0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 1

    .prologue
    .line 2400
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private initTagInfo()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000

    const/high16 v7, 0x70000

    const/high16 v6, 0x50000

    const/high16 v5, 0x30000

    const/high16 v4, 0x20000

    .line 2080
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 2083
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2084
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MAKE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2094
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2096
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2098
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2102
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_X_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2118
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int v3, v0, v5

    or-int/lit16 v3, v3, 0x300

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2120
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2122
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2124
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2126
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2128
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2130
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2132
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MAKE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2134
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MODEL:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SOFTWARE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2138
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ARTIST:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2140
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COPYRIGHT:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2142
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_IFD:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2144
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IFD:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 2150
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2151
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2153
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 2159
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2160
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXIF_VERSION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2162
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2164
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2166
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2168
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2170
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2172
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2174
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2176
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_USER_COMMENT:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2178
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xd

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2180
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2182
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2184
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2186
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x21

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_F_NUMBER:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2196
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2198
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2200
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2202
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_OECF:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2204
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2206
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_METERING_MODE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2218
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FLASH:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SENSING_METHOD:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SCENE_TYPE:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_CFA_PATTERN:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2254
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2258
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2260
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2262
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_CONTRAST:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2264
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SATURATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2266
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SHARPNESS:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2268
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 2278
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2279
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_STATUS:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DOP:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_SPEED:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_TRACK:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    or-int/2addr v0, v5

    or-int/lit8 v0, v0, 0xb

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    .line 2341
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2342
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    or-int/2addr v0, v4

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    return-void

    .line 2080
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2372
    invoke-static {}, Lcom/google/glass/camera/exif/IfdData;->getIfds()[I

    move-result-object v3

    .line 2373
    invoke-static {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v4

    move v0, v1

    .line 2374
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 2375
    aget v5, v3, v0

    if-ne p1, v5, :cond_1

    shr-int v5, v4, v0

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_1

    move v1, v2

    .line 2379
    :cond_0
    return v1

    .line 2374
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static isOffsetTag(S)Z
    .locals 2

    .prologue
    .line 1483
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static toExifLatLong(D)[Lcom/google/glass/camera/exif/Rational;
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 2032
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 2033
    double-to-int v2, v0

    .line 2034
    int-to-double v3, v2

    sub-double/2addr v0, v3

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v3

    .line 2035
    double-to-int v3, v0

    .line 2036
    int-to-double v4, v3

    sub-double/2addr v0, v4

    const-wide v4, 0x40b7700000000000L    # 6000.0

    mul-double/2addr v0, v4

    .line 2037
    double-to-int v0, v0

    .line 2038
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/google/glass/camera/exif/Rational;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/glass/camera/exif/Rational;

    int-to-long v6, v2

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    aput-object v5, v1, v4

    const/4 v2, 0x1

    new-instance v4, Lcom/google/glass/camera/exif/Rational;

    int-to-long v5, v3

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    aput-object v4, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/google/glass/camera/exif/Rational;

    int-to-long v4, v0

    const-wide/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    aput-object v3, v1, v2

    return-object v1
.end method


# virtual methods
.method public addDateTimeStampTag(IJLjava/util/TimeZone;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1965
    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/google/glass/camera/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    if-ne p1, v1, :cond_1

    .line 1967
    :cond_0
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1968
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    .line 1969
    if-nez v1, :cond_2

    .line 1976
    :cond_1
    :goto_0
    return v0

    .line 1972
    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 1976
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addGpsDateTimeStampTag(J)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const-wide/16 v8, 0x1

    const/4 v0, 0x0

    .line 2012
    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v2

    .line 2013
    if-nez v2, :cond_1

    .line 2027
    :cond_0
    :goto_0
    return v0

    .line 2016
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 2017
    iget-object v2, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2018
    sget v2, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/glass/camera/exif/Rational;

    new-instance v4, Lcom/google/glass/camera/exif/Rational;

    iget-object v5, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xb

    .line 2019
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    aput-object v4, v3, v0

    new-instance v4, Lcom/google/glass/camera/exif/Rational;

    iget-object v5, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    .line 2020
    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    aput-object v4, v3, v1

    const/4 v4, 0x2

    new-instance v5, Lcom/google/glass/camera/exif/Rational;

    iget-object v6, p0, Lcom/google/glass/camera/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    .line 2021
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/glass/camera/exif/Rational;-><init>(JJ)V

    aput-object v5, v3, v4

    .line 2018
    invoke-virtual {p0, v2, v3}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v2

    .line 2023
    if-eqz v2, :cond_0

    .line 2026
    invoke-virtual {p0, v2}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    move v0, v1

    .line 2027
    goto :goto_0
.end method

.method public addGpsTags(DD)Z
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 1987
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/google/glass/camera/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v1

    .line 1988
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/google/glass/camera/exif/ExifInterface;->toExifLatLong(D)[Lcom/google/glass/camera/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v2

    .line 1989
    sget v3, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    cmpl-double v0, p1, v5

    if-ltz v0, :cond_1

    const-string v0, "N"

    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v3

    .line 1992
    sget v4, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double v0, p3, v5

    if-ltz v0, :cond_2

    const-string v0, "E"

    :goto_1
    invoke-virtual {p0, v4, v0}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1995
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_3

    .line 1996
    :cond_0
    const/4 v0, 0x0

    .line 2002
    :goto_2
    return v0

    .line 1989
    :cond_1
    const-string v0, "S"

    goto :goto_0

    .line 1992
    :cond_2
    const-string v0, "W"

    goto :goto_1

    .line 1998
    :cond_3
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 1999
    invoke-virtual {p0, v2}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 2000
    invoke-virtual {p0, v3}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 2001
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    .line 2002
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1498
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1499
    if-eqz v0, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move-object v0, v6

    .line 1512
    :cond_1
    :goto_0
    return-object v0

    .line 1502
    :cond_2
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1503
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1504
    if-eqz v3, :cond_3

    const/4 v5, 0x1

    .line 1505
    :goto_1
    invoke-static {v0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v6

    .line 1506
    goto :goto_0

    .line 1504
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1508
    :cond_4
    new-instance v0, Lcom/google/glass/camera/exif/ExifTag;

    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/camera/exif/ExifTag;-><init>(SSIIZ)V

    .line 1509
    invoke-virtual {v0, p3}, Lcom/google/glass/camera/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v6

    .line 1510
    goto :goto_0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 1523
    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1524
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method protected buildUninitializedTag(I)Lcom/google/glass/camera/exif/ExifTag;
    .locals 6

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1529
    if-nez v0, :cond_0

    .line 1530
    const/4 v0, 0x0

    .line 1537
    :goto_0
    return-object v0

    .line 1532
    :cond_0
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1533
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    .line 1534
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 1535
    :goto_1
    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1536
    new-instance v0, Lcom/google/glass/camera/exif/ExifTag;

    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/camera/exif/ExifTag;-><init>(SSIIZ)V

    goto :goto_0

    .line 1534
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public clearExif()V
    .locals 2

    .prologue
    .line 786
    new-instance v0, Lcom/google/glass/camera/exif/ExifData;

    sget-object v1, Lcom/google/glass/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    .line 787
    return-void
.end method

.method public deleteTag(I)V
    .locals 1

    .prologue
    .line 1615
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1616
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->deleteTag(II)V

    .line 1617
    return-void
.end method

.method public deleteTag(II)V
    .locals 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/google/glass/camera/exif/ExifData;->removeTag(SI)V

    .line 1607
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1133
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getAllTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V

    .line 1134
    return-void
.end method

.method public forceRewriteExif(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 1097
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    iget-object v3, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    .line 1100
    new-instance v0, Lcom/google/glass/camera/exif/ExifData;

    sget-object v1, Lcom/google/glass/camera/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    .line 1101
    const/4 v2, 0x0

    .line 1102
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1105
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1106
    invoke-direct {p0, v1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 1108
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->readExif([B)V

    .line 1109
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 1110
    invoke-virtual {p0, v0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->writeExif([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1117
    iput-object v3, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    .line 1120
    :cond_0
    return-void

    .line 1111
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1112
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1113
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1115
    :catchall_0
    move-exception v0

    :goto_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1117
    iput-object v3, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    throw v0

    .line 1115
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 1111
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getActualTagCount(II)I
    .locals 1

    .prologue
    .line 1434
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1435
    if-nez v0, :cond_0

    .line 1436
    const/4 v0, 0x0

    .line 1438
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAllTags()Ljava/util/List;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->getAllTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDefinedTagCount(I)I
    .locals 1

    .prologue
    .line 1417
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1418
    if-nez v0, :cond_0

    .line 1419
    const/4 v0, 0x0

    .line 1421
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1450
    if-nez v0, :cond_0

    .line 1451
    const/4 v0, -0x1

    .line 1453
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDefinedTagType(I)S
    .locals 1

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1465
    if-nez v0, :cond_0

    .line 1466
    const/4 v0, -0x1

    .line 1468
    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v0

    goto :goto_0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 962
    if-nez p1, :cond_0

    .line 963
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_0
    new-instance v0, Lcom/google/glass/camera/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/google/glass/camera/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/google/glass/camera/exif/ExifInterface;)V

    .line 966
    iget-object v1, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifOutputStream;->setExifData(Lcom/google/glass/camera/exif/ExifData;)V

    .line 967
    return-object v0
.end method

.method public getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 983
    if-nez p1, :cond_0

    .line 984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 986
    :cond_0
    const/4 v1, 0x0

    .line 988
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 993
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    .line 989
    :catch_0
    move-exception v0

    .line 990
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 991
    throw v0
.end method

.method public getLatLongAsDoubles()[D
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1933
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/google/glass/camera/exif/Rational;

    move-result-object v1

    .line 1934
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    .line 1935
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagRationalValues(I)[Lcom/google/glass/camera/exif/Rational;

    move-result-object v3

    .line 1936
    sget v0, Lcom/google/glass/camera/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    .line 1937
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    array-length v0, v1

    if-lt v0, v5, :cond_0

    array-length v0, v3

    if-ge v0, v5, :cond_1

    .line 1939
    :cond_0
    const/4 v0, 0x0

    .line 1944
    :goto_0
    return-object v0

    .line 1941
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 1942
    const/4 v5, 0x0

    invoke-static {v1, v2}, Lcom/google/glass/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/google/glass/camera/exif/Rational;Ljava/lang/String;)D

    move-result-wide v1

    aput-wide v1, v0, v5

    .line 1943
    const/4 v1, 0x1

    invoke-static {v3, v4}, Lcom/google/glass/camera/exif/ExifInterface;->convertLatOrLongToDouble([Lcom/google/glass/camera/exif/Rational;Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public getTag(I)Lcom/google/glass/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1192
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public getTag(II)Lcom/google/glass/camera/exif/ExifTag;
    .locals 2

    .prologue
    .line 1177
    invoke-static {p2}, Lcom/google/glass/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    .line 1180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-static {p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/google/glass/camera/exif/ExifData;->getTag(SI)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagByteValue(I)Ljava/lang/Byte;
    .locals 1

    .prologue
    .line 1295
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1296
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagByteValue(II)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public getTagByteValue(II)Ljava/lang/Byte;
    .locals 3

    .prologue
    .line 1284
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v1

    .line 1285
    if-eqz v1, :cond_0

    array-length v0, v1

    if-gtz v0, :cond_1

    .line 1286
    :cond_0
    const/4 v0, 0x0

    .line 1288
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/Byte;

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_0
.end method

.method public getTagByteValues(I)[B
    .locals 1

    .prologue
    .line 1371
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1372
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagByteValues(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getTagByteValues(II)[B
    .locals 1

    .prologue
    .line 1360
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1361
    if-nez v0, :cond_0

    .line 1362
    const/4 v0, 0x0

    .line 1364
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAsBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method protected getTagDefinition(SI)I
    .locals 2

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(Lcom/google/glass/camera/exif/ExifTag;)I
    .locals 4

    .prologue
    .line 1699
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getDataType()S

    move-result v0

    .line 1700
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getComponentCount()I

    move-result v1

    .line 1701
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getIfd()I

    move-result v2

    .line 1702
    invoke-virtual {p1}, Lcom/google/glass/camera/exif/ExifTag;->getTagId()S

    move-result v3

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/glass/camera/exif/ExifInterface;->getTagDefinitionForTag(SSII)I

    move-result v0

    return v0
.end method

.method protected getTagDefinitionForTag(SSII)I
    .locals 14

    .prologue
    .line 1706
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v6

    .line 1707
    if-nez v6, :cond_1

    .line 1708
    const/4 v1, -0x1

    .line 1730
    :cond_0
    :goto_0
    return v1

    .line 1710
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v7

    .line 1711
    const/4 v2, -0x1

    .line 1712
    array-length v8, v6

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v8, :cond_5

    aget v1, v6, v5

    .line 1713
    invoke-virtual {v7, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1714
    invoke-static {v3}, Lcom/google/glass/camera/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v9

    .line 1715
    invoke-static {v3}, Lcom/google/glass/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v10

    .line 1716
    invoke-static {v3}, Lcom/google/glass/camera/exif/ExifInterface;->getAllowedIfdsFromInfo(I)[I

    move-result-object v11

    .line 1717
    const/4 v3, 0x0

    .line 1718
    array-length v12, v11

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v12, :cond_2

    aget v13, v11, v4

    .line 1719
    move/from16 v0, p4

    if-ne v13, v0, :cond_4

    .line 1720
    const/4 v3, 0x1

    .line 1724
    :cond_2
    if-eqz v3, :cond_3

    move/from16 v0, p2

    if-ne v0, v9, :cond_3

    move/from16 v0, p3

    if-eq v0, v10, :cond_0

    if-eqz v10, :cond_0

    .line 1712
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 1718
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method protected getTagDefinitionsForTagId(S)[I
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1681
    invoke-static {}, Lcom/google/glass/camera/exif/IfdData;->getIfds()[I

    move-result-object v4

    .line 1682
    array-length v0, v4

    new-array v5, v0, [I

    .line 1684
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1685
    array-length v7, v4

    move v2, v3

    move v1, v3

    :goto_0
    if-ge v2, v7, :cond_0

    aget v0, v4, v2

    .line 1686
    invoke-static {v0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    .line 1687
    invoke-virtual {v6, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1688
    add-int/lit8 v0, v1, 0x1

    aput v8, v5, v1

    .line 1685
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1691
    :cond_0
    if-nez v1, :cond_1

    .line 1692
    const/4 v0, 0x0

    .line 1695
    :goto_2
    return-object v0

    :cond_1
    invoke-static {v5, v3, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2066
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2067
    invoke-direct {p0}, Lcom/google/glass/camera/exif/ExifInterface;->initTagInfo()V

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1277
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 1265
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v1

    .line 1266
    if-eqz v1, :cond_0

    array-length v0, v1

    if-gtz v0, :cond_1

    .line 1267
    :cond_0
    const/4 v0, 0x0

    .line 1269
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0
.end method

.method public getTagIntValues(I)[I
    .locals 1

    .prologue
    .line 1352
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1353
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    return-object v0
.end method

.method public getTagIntValues(II)[I
    .locals 1

    .prologue
    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1342
    if-nez v0, :cond_0

    .line 1343
    const/4 v0, 0x0

    .line 1345
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAsInts()[I

    move-result-object v0

    goto :goto_0
.end method

.method public getTagLongValue(I)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1257
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1258
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagLongValue(II)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTagLongValue(II)Ljava/lang/Long;
    .locals 3

    .prologue
    .line 1246
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v1

    .line 1247
    if-eqz v1, :cond_0

    array-length v0, v1

    if-gtz v0, :cond_1

    .line 1248
    :cond_0
    const/4 v0, 0x0

    .line 1250
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/Long;

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_0
.end method

.method public getTagLongValues(I)[J
    .locals 1

    .prologue
    .line 1333
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1334
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagLongValues(II)[J

    move-result-object v0

    return-object v0
.end method

.method public getTagLongValues(II)[J
    .locals 1

    .prologue
    .line 1322
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1323
    if-nez v0, :cond_0

    .line 1324
    const/4 v0, 0x0

    .line 1326
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAsLongs()[J

    move-result-object v0

    goto :goto_0
.end method

.method public getTagRationalValue(I)Lcom/google/glass/camera/exif/Rational;
    .locals 1

    .prologue
    .line 1314
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1315
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagRationalValue(II)Lcom/google/glass/camera/exif/Rational;

    move-result-object v0

    return-object v0
.end method

.method public getTagRationalValue(II)Lcom/google/glass/camera/exif/Rational;
    .locals 3

    .prologue
    .line 1303
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/google/glass/camera/exif/Rational;

    move-result-object v1

    .line 1304
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 1305
    :cond_0
    const/4 v0, 0x0

    .line 1307
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/glass/camera/exif/Rational;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/glass/camera/exif/Rational;-><init>(Lcom/google/glass/camera/exif/Rational;)V

    goto :goto_0
.end method

.method public getTagRationalValues(I)[Lcom/google/glass/camera/exif/Rational;
    .locals 1

    .prologue
    .line 1390
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1391
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagRationalValues(II)[Lcom/google/glass/camera/exif/Rational;

    move-result-object v0

    return-object v0
.end method

.method public getTagRationalValues(II)[Lcom/google/glass/camera/exif/Rational;
    .locals 1

    .prologue
    .line 1379
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1380
    if-nez v0, :cond_0

    .line 1381
    const/4 v0, 0x0

    .line 1383
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAsRationals()[Lcom/google/glass/camera/exif/Rational;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagStringValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1238
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1239
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagStringValue(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagStringValue(II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1227
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1228
    if-nez v0, :cond_0

    .line 1229
    const/4 v0, 0x0

    .line 1231
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagValue(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1214
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1215
    invoke-virtual {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagValue(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTagValue(II)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1201
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1202
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifTag;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTagsForIfdId(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/ExifData;->getAllTagsForIfd(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTagsForTagId(S)Ljava/util/List;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/ExifData;->getAllTagsForTagId(S)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()[B
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1757
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1761
    :goto_0
    return-object v0

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasUncompressedStrip()Z

    .line 1761
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailBytes()[B
    .locals 1

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->getCompressedThumbnail()[B

    move-result-object v0

    .line 1777
    :goto_0
    return-object v0

    .line 1774
    :cond_0
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasUncompressedStrip()Z

    .line 1777
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->getUserComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public isTagCountDefined(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1401
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1403
    if-nez v1, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isThumbnailCompressed()Z
    .locals 1

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->hasCompressedThumbnail()Z

    move-result v0

    return v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 4

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 739
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/glass/camera/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/google/glass/camera/exif/ExifReader;-><init>(Lcom/google/glass/camera/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/google/glass/camera/exif/ExifData;
    :try_end_0
    .catch Lcom/google/glass/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 745
    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    .line 746
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid exif format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readExif(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 757
    if-nez p1, :cond_0

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 760
    :cond_0
    const/4 v2, 0x0

    .line 762
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/google/glass/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 768
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 769
    return-void

    .line 764
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 765
    :goto_0
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 766
    throw v0

    .line 764
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public readExif([B)V
    .locals 1

    .prologue
    .line 725
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    .line 726
    return-void
.end method

.method public removeCompressedThumbnail()V
    .locals 2

    .prologue
    .line 1842
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/glass/camera/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1843
    return-void
.end method

.method public removeTagDefinition(I)V
    .locals 1

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1740
    return-void
.end method

.method public resetTagDefinitions()V
    .locals 1

    .prologue
    .line 1746
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 1747
    return-void
.end method

.method public rewriteExif(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1012
    .line 1016
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1020
    :try_start_1
    invoke-static {v1, p0}, Lcom/google/glass/camera/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/google/glass/camera/exif/ExifInterface;)Lcom/google/glass/camera/exif/ExifParser;
    :try_end_1
    .catch Lcom/google/glass/camera/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1026
    :try_start_2
    invoke-virtual {v2}, Lcom/google/glass/camera/exif/ExifParser;->getOffsetToExifEndFromSOF()I

    move-result v2

    int-to-long v4, v2

    .line 1029
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1033
    :try_start_3
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v7, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1034
    :try_start_4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 1035
    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 1036
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Filesize changed during operation"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1045
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v6, v7

    .line 1046
    :goto_0
    :try_start_5
    invoke-static {v6}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1047
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1049
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_1
    invoke-static {v6}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 1023
    :catch_1
    move-exception v0

    .line 1024
    :try_start_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif format : "

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1045
    :catch_2
    move-exception v0

    goto :goto_0

    .line 1040
    :cond_0
    :try_start_7
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 1044
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    .line 1049
    invoke-static {v6}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 1051
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 1052
    return v0

    .line 1049
    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1045
    :catch_3
    move-exception v0

    move-object v1, v6

    goto :goto_0
.end method

.method public rewriteExif(Ljava/nio/ByteBuffer;Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 1069
    :try_start_0
    new-instance v1, Lcom/google/glass/camera/exif/ExifModifier;

    invoke-direct {v1, p1, p0}, Lcom/google/glass/camera/exif/ExifModifier;-><init>(Ljava/nio/ByteBuffer;Lcom/google/glass/camera/exif/ExifInterface;)V

    .line 1072
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifTag;

    .line 1073
    invoke-virtual {v1, v0}, Lcom/google/glass/camera/exif/ExifModifier;->modifyTag(Lcom/google/glass/camera/exif/ExifTag;)V
    :try_end_0
    .catch Lcom/google/glass/camera/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid exif format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1075
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/google/glass/camera/exif/ExifModifier;->commit()Z
    :try_end_1
    .catch Lcom/google/glass/camera/exif/ExifInvalidFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    return v0
.end method

.method public setCompressedThumbnail(Landroid/graphics/Bitmap;)Z
    .locals 3

    .prologue
    .line 1831
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1832
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1833
    const/4 v0, 0x0

    .line 1835
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->setCompressedThumbnail([B)Z

    move-result v0

    goto :goto_0
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0}, Lcom/google/glass/camera/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1819
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/ExifData;->setCompressedThumbnail([B)V

    .line 1820
    const/4 v0, 0x1

    return v0
.end method

.method public setExif(Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->clearExif()V

    .line 779
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->setTags(Ljava/util/Collection;)V

    .line 780
    return-void
.end method

.method public setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;
    .locals 1

    .prologue
    .line 1583
    iget-object v0, p0, Lcom/google/glass/camera/exif/ExifInterface;->mData:Lcom/google/glass/camera/exif/ExifData;

    invoke-virtual {v0, p1}, Lcom/google/glass/camera/exif/ExifData;->addTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method public setTagDefinition(SISS[I)I
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 1635
    sget-object v0, Lcom/google/glass/camera/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1673
    :goto_0
    return v0

    .line 1638
    :cond_0
    invoke-static {p3}, Lcom/google/glass/camera/exif/ExifTag;->isValidType(S)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p2}, Lcom/google/glass/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1639
    invoke-static {p2, p1}, Lcom/google/glass/camera/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    .line 1640
    if-ne v2, v1, :cond_1

    move v0, v1

    .line 1641
    goto :goto_0

    .line 1643
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getTagDefinitionsForTagId(S)[I

    move-result-object v5

    .line 1644
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1647
    array-length v7, p5

    move v4, v3

    move v0, v3

    :goto_1
    if-ge v4, v7, :cond_4

    aget v8, p5, v4

    .line 1648
    if-ne p2, v8, :cond_2

    .line 1649
    const/4 v0, 0x1

    .line 1651
    :cond_2
    invoke-static {v8}, Lcom/google/glass/camera/exif/ExifTag;->isValidIfd(I)Z

    move-result v8

    if-nez v8, :cond_3

    move v0, v1

    .line 1652
    goto :goto_0

    .line 1647
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1655
    :cond_4
    if-nez v0, :cond_5

    move v0, v1

    .line 1656
    goto :goto_0

    .line 1659
    :cond_5
    invoke-static {p5}, Lcom/google/glass/camera/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v4

    .line 1661
    if-eqz v5, :cond_7

    .line 1662
    array-length v7, v5

    move v0, v3

    :goto_2
    if-ge v0, v7, :cond_7

    aget v3, v5, v0

    .line 1663
    invoke-virtual {v6, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 1664
    invoke-static {v3}, Lcom/google/glass/camera/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    .line 1665
    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    move v0, v1

    .line 1666
    goto :goto_0

    .line 1662
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1670
    :cond_7
    invoke-virtual {p0}, Lcom/google/glass/camera/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    shl-int/lit8 v1, v4, 0x18

    shl-int/lit8 v3, p3, 0x10

    or-int/2addr v1, v3

    or-int/2addr v1, p4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    move v0, v2

    .line 1671
    goto :goto_0

    :cond_8
    move v0, v1

    .line 1673
    goto :goto_0
.end method

.method public setTagValue(IILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1552
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getTag(II)Lcom/google/glass/camera/exif/ExifTag;

    move-result-object v0

    .line 1553
    if-nez v0, :cond_0

    .line 1554
    const/4 v0, 0x0

    .line 1556
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, p3}, Lcom/google/glass/camera/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTagValue(ILjava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1569
    invoke-virtual {p0, p1}, Lcom/google/glass/camera/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1570
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->setTagValue(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setTags(Ljava/util/Collection;)V
    .locals 2

    .prologue
    .line 1594
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/camera/exif/ExifTag;

    .line 1595
    invoke-virtual {p0, v0}, Lcom/google/glass/camera/exif/ExifInterface;->setTag(Lcom/google/glass/camera/exif/ExifTag;)Lcom/google/glass/camera/exif/ExifTag;

    goto :goto_0

    .line 1597
    :cond_0
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 817
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 821
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 822
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 823
    return-void
.end method

.method public writeExif(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 882
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 883
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_1
    const/4 v1, 0x0

    .line 887
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 888
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 889
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 895
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 892
    throw v0
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 835
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 839
    invoke-direct {p0, p1, v0}, Lcom/google/glass/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 840
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 841
    return-void
.end method

.method public writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 909
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 910
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 912
    :cond_1
    const/4 v1, 0x0

    .line 914
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 915
    invoke-direct {p0, p1, v1}, Lcom/google/glass/camera/exif/ExifInterface;->doExifStreamIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 916
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 922
    return-void

    .line 917
    :catch_0
    move-exception v0

    .line 918
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 919
    throw v0
.end method

.method public writeExif(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 936
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 937
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_1
    const/4 v2, 0x0

    .line 941
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :try_start_1
    invoke-virtual {p0, v1, p2}, Lcom/google/glass/camera/exif/ExifInterface;->writeExif(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 947
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 948
    return-void

    .line 943
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 944
    :goto_0
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 945
    throw v0

    .line 943
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 799
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 803
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 804
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 805
    return-void
.end method

.method public writeExif([BLjava/lang/String;)V
    .locals 3

    .prologue
    .line 855
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 856
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 858
    :cond_1
    const/4 v1, 0x0

    .line 860
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/glass/camera/exif/ExifInterface;->getExifWriterStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 861
    const/4 v0, 0x0

    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 862
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 868
    return-void

    .line 863
    :catch_0
    move-exception v0

    .line 864
    invoke-static {v1}, Lcom/google/glass/camera/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V

    .line 865
    throw v0
.end method
