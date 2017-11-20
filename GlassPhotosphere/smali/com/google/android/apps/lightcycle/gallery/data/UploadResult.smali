.class public Lcom/google/android/apps/lightcycle/gallery/data/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field public final albumUrl:Ljava/lang/String;

.field public final context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

.field public final fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "albumUrl"    # Ljava/lang/String;
    .param p3, "context"    # Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/data/UploadResult;->fileName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/data/UploadResult;->albumUrl:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/data/UploadResult;->context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    .line 23
    return-void
.end method
