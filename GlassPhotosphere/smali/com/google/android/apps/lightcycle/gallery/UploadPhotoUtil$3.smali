.class final Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;
.super Ljava/lang/Object;
.source "UploadPhotoUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->uploadPhotoToAlbum(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/Callback",
        "<",
        "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

.field final synthetic val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 1
    .param p1, "panoramaUrl"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/gallery/request/SetDescriptionTask;->setDescriptionAsync(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    invoke-interface {v0, p1}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onDone(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 136
    check-cast p1, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$3;->onCallback(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    return-void
.end method
