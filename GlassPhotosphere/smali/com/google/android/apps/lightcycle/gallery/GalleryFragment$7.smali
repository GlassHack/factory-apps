.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->onUploadCompleted(Lcom/google/android/apps/lightcycle/gallery/data/PhotoUrls;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onDone(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 388
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;->onDone(Ljava/lang/Void;)V

    return-void
.end method

.method public onDone(Ljava/lang/Void;)V
    .locals 2
    .param p1, "ignore"    # Ljava/lang/Void;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1500(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->UPLOAD_SUCCESSFUL:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 398
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1200(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 399
    return-void
.end method

.method public onNewProgressMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$7;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1200(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 392
    return-void
.end method
