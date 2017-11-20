.class Lcom/google/glass/mosaic/MosaicHelper$3;
.super Ljava/lang/Object;
.source "MosaicHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/mosaic/MosaicHelper;->renderMosaicToJpeg(Landroid/net/Uri;Lcom/google/glass/mosaic/ImageLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/mosaic/MosaicHelper;

.field final synthetic val$imageLoader:Lcom/google/glass/mosaic/ImageLoader;

.field final synthetic val$view:Lcom/google/glass/mosaic/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;Lcom/google/glass/mosaic/ImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/mosaic/MosaicHelper;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicHelper$3;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    iput-object p2, p0, Lcom/google/glass/mosaic/MosaicHelper$3;->val$view:Lcom/google/glass/mosaic/MosaicView;

    iput-object p3, p0, Lcom/google/glass/mosaic/MosaicHelper$3;->val$imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 227
    invoke-static {}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->getInstance()Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/deferredcontent/DeferredContentLoader$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/deferredcontent/DeferredContentLoader;

    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicHelper$3;->val$view:Lcom/google/glass/mosaic/MosaicView;

    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper$3;->val$imageLoader:Lcom/google/glass/mosaic/ImageLoader;

    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicHelper$3;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    .line 228
    invoke-static {v3}, Lcom/google/glass/mosaic/MosaicHelper;->access$200(Lcom/google/glass/mosaic/MosaicHelper;)Lcom/google/glass/util/CachedBitmapFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/mosaic/MosaicView;->loadImages(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/util/SparseArray;)Ljava/util/List;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lcom/google/glass/deferredcontent/DeferredContentLoader;->load(Ljava/util/List;)V

    .line 229
    return-void
.end method
