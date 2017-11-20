.class public final Lcom/google/glass/maps/RenderMapLoadingTask;
.super Lcom/google/glass/deferredcontent/LoadingTask;
.source "RenderMapLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/deferredcontent/LoadingTask",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final mapHelper:Lcom/google/glass/maps/MapHelper;

.field private final mapView:Landroid/widget/ImageView;

.field private final renderRequest:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/RenderMapLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mapHelper"    # Lcom/google/glass/maps/MapHelper;
    .param p3, "renderRequest"    # Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;
    .param p4, "mapView"    # Landroid/widget/ImageView;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/deferredcontent/LoadingTask;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/google/glass/maps/RenderMapLoadingTask;->mapHelper:Lcom/google/glass/maps/MapHelper;

    .line 30
    iput-object p3, p0, Lcom/google/glass/maps/RenderMapLoadingTask;->renderRequest:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    .line 31
    iput-object p4, p0, Lcom/google/glass/maps/RenderMapLoadingTask;->mapView:Landroid/widget/ImageView;

    .line 32
    return-void
.end method


# virtual methods
.method protected bindContent(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/glass/maps/RenderMapLoadingTask;->mapView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 59
    return-void
.end method

.method protected bridge synthetic bindContent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/RenderMapLoadingTask;->bindContent(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected getUserEventTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "sma"

    return-object v0
.end method

.method protected loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "isCancelled"    # Lcom/google/glass/util/Condition;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/RenderMapLoadingTask;->mapHelper:Lcom/google/glass/maps/MapHelper;

    iget-object v3, p0, Lcom/google/glass/maps/RenderMapLoadingTask;->renderRequest:Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;

    invoke-virtual {v1, v3}, Lcom/google/glass/maps/MapHelper;->renderMap(Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderRequest;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/google/glass/maps/RenderMapLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Interrupted while rendering map for timeline item"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    move-object v1, v2

    .line 49
    goto :goto_0

    .line 50
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v1, Lcom/google/glass/maps/RenderMapLoadingTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to render map for timeline item"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 52
    goto :goto_0
.end method

.method protected bridge synthetic loadContent(Lcom/google/glass/util/Condition;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/google/glass/maps/RenderMapLoadingTask;->loadContent(Lcom/google/glass/util/Condition;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected prepareContent(F)V
    .locals 0
    .param p1, "absScrollVelocity"    # F

    .prologue
    .line 40
    return-void
.end method
