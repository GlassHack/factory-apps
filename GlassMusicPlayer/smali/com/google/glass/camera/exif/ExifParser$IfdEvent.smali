.class Lcom/google/glass/camera/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    iput p1, p0, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;->ifd:I

    .line 896
    iput-boolean p2, p0, Lcom/google/glass/camera/exif/ExifParser$IfdEvent;->isRequested:Z

    .line 897
    return-void
.end method
