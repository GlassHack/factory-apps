.class Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->deletePano(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;I)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    iput p2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;->val$which:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 503
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1500(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;->DELETE_SESSION:Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/util/AnalyticsHelper;->trackPage(Lcom/google/android/apps/lightcycle/util/AnalyticsHelper$Page;)V

    .line 505
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1600(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;->val$which:I

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getSessionId(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1700(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)Lcom/google/android/apps/lightcycle/storage/StorageManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/apps/lightcycle/storage/StorageManager;->deleteSession(Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment$9;->this$0:Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;

    invoke-static {v1}, Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;->access$1800(Lcom/google/android/apps/lightcycle/gallery/GalleryFragment;)V

    .line 509
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 510
    return-void
.end method
