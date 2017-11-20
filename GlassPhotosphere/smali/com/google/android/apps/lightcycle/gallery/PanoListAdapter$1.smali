.class Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;
.super Ljava/lang/Object;
.source "PanoListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->getThumbnail(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$thumbnailView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    iput-object p2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->val$thumbnailView:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 284
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 285
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->val$thumbnailView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->access$000(Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Ljava/util/Map;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    new-instance v0, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->val$thumbnailView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter$1;->this$0:Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;

    invoke-static {v3}, Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;->access$000(Lcom/google/android/apps/lightcycle/gallery/PanoListAdapter;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Ljava/util/Map;)V

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/gallery/LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
