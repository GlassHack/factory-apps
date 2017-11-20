.class Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;
.super Ljava/lang/Object;
.source "IncrementalAligner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageData"
.end annotation


# instance fields
.field public final filename:Ljava/lang/String;

.field public final rotation:[F

.field public final thumbnailTextureId:I


# direct methods
.method constructor <init>(Ljava/lang/String;[FI)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "rotation"    # [F
    .param p3, "thumbnailTextureId"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->filename:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->rotation:[F

    .line 27
    iput p3, p0, Lcom/google/android/apps/lightcycle/panorama/IncrementalAligner$ImageData;->thumbnailTextureId:I

    .line 28
    return-void
.end method
