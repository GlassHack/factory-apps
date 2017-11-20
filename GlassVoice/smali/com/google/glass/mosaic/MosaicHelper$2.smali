.class Lcom/google/glass/mosaic/MosaicHelper$2;
.super Ljava/lang/Object;
.source "MosaicHelper.java"

# interfaces
.implements Lcom/google/glass/mosaic/MosaicView$CellsLoadedListener;


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

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$loadTimer:Lcom/google/glass/time/Stopwatch;

.field final synthetic val$resultFuture:Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

.field final synthetic val$view:Lcom/google/glass/mosaic/MosaicView;


# direct methods
.method constructor <init>(Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/mosaic/MosaicView;Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;Lcom/google/glass/time/Stopwatch;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/mosaic/MosaicHelper;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    iput-object p2, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$view:Lcom/google/glass/mosaic/MosaicView;

    iput-object p3, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$resultFuture:Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

    iput-object p4, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$loadTimer:Lcom/google/glass/time/Stopwatch;

    iput-object p5, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellsLoaded(Z)V
    .locals 5
    .param p1, "allCellsLoadedSuccessfully"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->this$0:Lcom/google/glass/mosaic/MosaicHelper;

    iget-object v1, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$view:Lcom/google/glass/mosaic/MosaicView;

    iget-object v2, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$resultFuture:Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;

    iget-object v3, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$loadTimer:Lcom/google/glass/time/Stopwatch;

    iget-object v4, p0, Lcom/google/glass/mosaic/MosaicHelper$2;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/glass/mosaic/MosaicHelper;->handleCellsLoaded(Lcom/google/glass/mosaic/MosaicView;Lcom/google/glass/mosaic/MosaicHelper$MosaicFuture;Lcom/google/glass/time/Stopwatch;Ljava/lang/String;)V

    .line 217
    return-void
.end method
