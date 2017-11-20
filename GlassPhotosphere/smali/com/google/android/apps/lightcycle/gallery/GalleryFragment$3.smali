.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;
.super Ljava/lang/Thread;
.source "GalleryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 245
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    const-wide/16 v1, 0x10

    :try_start_0
    invoke-static {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_1
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 253
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 254
    new-instance v1, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3$1;-><init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 248
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 262
    :cond_1
    return-void
.end method
