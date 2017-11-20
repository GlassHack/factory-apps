.class final Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$4;
.super Ljava/lang/Object;
.source "UploadPhotoUtil.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil;->createAlbum(Lcom/google/android/apps/lightcycle/util/Callback;Lcom/google/android/apps/lightcycle/gallery/data/PicasaRequestContext;)V
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
.field final synthetic val$callback:Lcom/google/android/apps/lightcycle/util/Callback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/util/Callback;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$4;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 2
    .param p1, "response"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$4;->val$callback:Lcom/google/android/apps/lightcycle/util/Callback;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/apps/lightcycle/util/Callback;->onCallback(Ljava/lang/Object;)V

    .line 178
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 174
    check-cast p1, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/UploadPhotoUtil$4;->onCallback(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    return-void
.end method
