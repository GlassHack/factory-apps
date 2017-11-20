.class final Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;
.super Ljava/lang/Object;
.source "UploadPhotoUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->createAlbumAndUpload(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

.field final synthetic val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

.field final synthetic val$entity:Lorg/apache/http/HttpEntity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/util/ProgressCallback;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Ljava/lang/String;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$entity:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;->androidContext:Landroid/content/Context;

    sget v2, Lcom/google/android/apps/lightcycle/R$string;->progress_finding_album:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/lightcycle/util/ProgressCallback;->onNewProgressMessage(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;)V

    invoke-static {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->access$300(Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/Callback;)V

    .line 107
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 83
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->onCallback(Ljava/lang/Boolean;)V

    return-void
.end method
