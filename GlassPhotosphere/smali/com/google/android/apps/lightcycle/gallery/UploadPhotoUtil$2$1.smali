.class Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;
.super Ljava/lang/Object;
.source "UploadPhotoUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->onCallback(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;->onCallback(Ljava/lang/String;)V

    return-void
.end method

.method public onCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "albumUrl"    # Ljava/lang/String;

    .prologue
    .line 96
    if-nez p1, :cond_0

    .line 97
    invoke-static {}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Even though album got created, we cannot get the URL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;

    iget-object v0, v0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$fileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;

    iget-object v1, v1, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$entity:Lorg/apache/http/HttpEntity;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;

    iget-object v2, v2, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$context:Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;

    iget-object v3, v3, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$2;->val$callback:Lcom/google/android/apps/lightcycle/util/ProgressCallback;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->access$100(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;Lcom/google/android/apps/lightcycle/util/ProgressCallback;)V

    goto :goto_0
.end method
