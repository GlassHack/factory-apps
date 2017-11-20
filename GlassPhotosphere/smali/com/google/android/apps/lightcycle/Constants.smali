.class public Lcom/google/android/apps/lightcycle/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ANDROID_BLUE:[F

.field public static final ANDROID_GRAY:[F

.field public static final BACKGROUND_BLACK:[F

.field public static final DESIRED_LARGE_SOURCE_IMAGE_WIDTH:I = 0x640

.field public static final DESIRED_PREVIEW_IMAGE_HEIGHT:I = 0xf0

.field public static final DESIRED_PREVIEW_IMAGE_WIDTH:I = 0x140

.field public static final DESIRED_SMALL_SOURCE_IMAGE_WIDTH:I = 0x4b0

.field public static final GRAY:[F

.field public static final GREEN:[F

.field public static final GROUND_PLANE_COLOR:[F

.field public static final MAX_NUM_LARGE_SOURCE_IMAGES:I = 0x6

.field public static final THUMBNAIL_ASPECT_RATIO:F = 4.0f

.field public static final THUMBNAIL_WIDTH:I = 0x3e8

.field public static final TRANSPARENT_GRAY:[F

.field public static final TRANSPARENT_WHITE:[F

.field public static final USE_BLENDED_PREVIEW:Z

.field public static final WHITE:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 36
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->GRAY:[F

    .line 37
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_GRAY:[F

    .line 39
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->GREEN:[F

    .line 40
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_BLUE:[F

    .line 41
    new-array v0, v1, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->ANDROID_GRAY:[F

    .line 42
    new-array v0, v1, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->BACKGROUND_BLACK:[F

    .line 43
    new-array v0, v1, [F

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->WHITE:[F

    .line 44
    new-array v0, v1, [F

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->TRANSPARENT_WHITE:[F

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/google/android/apps/lightcycle/Constants;->GROUND_PLANE_COLOR:[F

    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x3ed6d5d0    # 0.4196f
        0x3ed6d5d0    # 0.4196f
        0x3ed6d5d0    # 0.4196f
        0x3f800000    # 1.0f
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x3ed6d5d0    # 0.4196f
        0x3ed6d5d0    # 0.4196f
        0x3ed6d5d0    # 0.4196f
        0x3f000000    # 0.5f
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 40
    :array_3
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f35c28f    # 0.71f
        0x3f65e354    # 0.898f
        0x3f800000    # 1.0f
    .end array-data

    .line 41
    :array_4
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    .line 42
    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 43
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 44
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    .line 45
    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
