.class public final Lcom/google/glass/camera/CameraConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_NOTIFY_PHOTO_DELETION:Ljava/lang/String; = "com.google.glass.camera.photosync.ACTION_NOTIFY_PHOTO_DELETION"

.field public static final ACTION_TRIGGER_PHOTO_SYNC:Ljava/lang/String; = "com.google.glass.camera.photosync.ACTION_TRIGGER_PHOTO_SYNC"

.field public static final CAMERA_PRELOAD_TIME_MILLIS:I = 0x7d0

.field public static final DCIM_DIRECTORY:Ljava/lang/String;

.field public static final DCIM_DIRECTORY_RELATIVE:Ljava/lang/String;

.field public static final FADE_VIEWFINDER_DURATION_MILLIS:J = 0xc8L

.field public static final GCAM_POSTVIEW_BITS_PER_PIXEL:I = 0x20

.field public static final HQ_POSTVIEW_FORMAT:I = 0x11

.field public static final KEY_EXTRA_DELETED_TIMELINE_ID:Ljava/lang/String; = "KEY_EXTRA_DELETED_TIMELINE_ID"

.field public static final KEY_IS_INITIAL_CONNECTION:Ljava/lang/String; = "KEY_IS_INITIAL_CONNECTION"

.field public static final PICTURE_FILENAME_EXTENSION:Ljava/lang/String; = ".jpg"

.field public static final PICTURE_MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field public static final PREVIEW_FORMAT:I = 0x11

.field public static final RECORD_VIDEO_SIZE:Lcom/google/glass/camera/Size;

.field public static final THUMBNAIL_JPEG_QUALITY:I = 0x5a

.field public static final VIDEO_FILENAME_EXTENSION:Ljava/lang/String; = ".mp4"

.field public static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/mp4"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 32
    new-instance v0, Lcom/google/glass/camera/Size;

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/google/glass/camera/Size;-><init>(II)V

    sput-object v0, Lcom/google/glass/camera/CameraConstants;->RECORD_VIDEO_SIZE:Lcom/google/glass/camera/Size;

    .line 64
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY_RELATIVE:Ljava/lang/String;

    .line 69
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY_RELATIVE:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/google/glass/camera/CameraConstants;->DCIM_DIRECTORY:Ljava/lang/String;

    .line 68
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method
