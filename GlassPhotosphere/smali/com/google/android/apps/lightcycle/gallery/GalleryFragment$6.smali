.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$6;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->uploadPhoto(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/lightcycle/util/ProgressCallback",
        "<",
        "Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$6;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
    .locals 1
    .param p1, "panoUrl"    # Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$6;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1400(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    .line 362
    return-void
.end method

.method public bridge synthetic onDone(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 353
    check-cast p1, Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$6;->onDone(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V

    return-void
.end method

.method public onNewProgressMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$6;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1200(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 357
    return-void
.end method
