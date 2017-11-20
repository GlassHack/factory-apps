.class Lcom/google/glass/mosaic/MosaicView$1;
.super Ljava/lang/Object;
.source "MosaicView.java"

# interfaces
.implements Lcom/google/glass/deferredcontent/LoadingTask$CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/mosaic/MosaicView;->bindImageView(Lcom/google/glass/mosaic/ImageLoader;Lcom/google/glass/util/CachedBitmapFactory;Landroid/widget/FrameLayout;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/mosaic/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/mosaic/MosaicView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/mosaic/MosaicView;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Z)V
    .locals 6
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 339
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 340
    invoke-static {}, Lcom/google/glass/mosaic/MosaicView;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Completed loading task: %s, number left: %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v5}, Lcom/google/glass/mosaic/MosaicView;->access$000(Lcom/google/glass/mosaic/MosaicView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    monitor-enter v2

    .line 343
    if-nez p1, :cond_0

    .line 344
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/google/glass/mosaic/MosaicView;->access$202(Lcom/google/glass/mosaic/MosaicView;Z)Z

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v3}, Lcom/google/glass/mosaic/MosaicView;->access$010(Lcom/google/glass/mosaic/MosaicView;)I

    .line 347
    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v3}, Lcom/google/glass/mosaic/MosaicView;->access$000(Lcom/google/glass/mosaic/MosaicView;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v3}, Lcom/google/glass/mosaic/MosaicView;->access$300(Lcom/google/glass/mosaic/MosaicView;)Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 348
    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v3}, Lcom/google/glass/mosaic/MosaicView;->access$300(Lcom/google/glass/mosaic/MosaicView;)Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/mosaic/MosaicView$1;->this$0:Lcom/google/glass/mosaic/MosaicView;

    invoke-static {v4}, Lcom/google/glass/mosaic/MosaicView;->access$200(Lcom/google/glass/mosaic/MosaicView;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    invoke-interface {v3, v0}, Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;->onCellsLoaded(Z)V

    .line 350
    :cond_1
    monitor-exit v2

    .line 351
    return-void

    :cond_2
    move v0, v1

    .line 348
    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
