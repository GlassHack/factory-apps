.class Lcom/google/glass/camera/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 881
    iput p1, p0, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;->type:I

    .line 882
    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput p1, p0, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;->type:I

    .line 886
    iput p2, p0, Lcom/google/glass/camera/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 887
    return-void
.end method
