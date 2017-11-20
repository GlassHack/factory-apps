.class Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field isRequested:Z

.field tag:Lcom/google/glass/camera/exif/ExifTag;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/exif/ExifTag;Z)V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 905
    iput-object p1, p0, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;->tag:Lcom/google/glass/camera/exif/ExifTag;

    .line 906
    iput-boolean p2, p0, Lcom/google/glass/camera/exif/ExifParser$ExifTagEvent;->isRequested:Z

    .line 907
    return-void
.end method
