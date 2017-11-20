.class final Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;
.super Ljava/lang/Object;
.source "UploadPhotoUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

.field final synthetic val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

.field final synthetic val$entity:Lorg/apache/http/HttpEntity;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$entity:Lorg/apache/http/HttpEntity;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iput-object p4, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "albumUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$entity:Lorg/apache/http/HttpEntity;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->access$000(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$entity:Lorg/apache/http/HttpEntity;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$1;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->access$100(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    goto :goto_0
.end method
