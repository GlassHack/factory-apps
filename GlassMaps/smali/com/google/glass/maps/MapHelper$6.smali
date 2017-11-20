.class Lcom/google/glass/maps/MapHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;

.field final synthetic val$future:Lcom/google/common/util/concurrent/o;

.field final synthetic val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;Lcom/google/common/util/concurrent/o;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$6;->this$0:Lcom/google/glass/maps/MapHelper;

    iput-object p2, p0, Lcom/google/glass/maps/MapHelper$6;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    iput-object p3, p0, Lcom/google/glass/maps/MapHelper$6;->val$future:Lcom/google/common/util/concurrent/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/maps/MapHelper$6;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$6;->val$future:Lcom/google/common/util/concurrent/o;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/o;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {v1, v0}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapRendered(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 371
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Interrupted"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 366
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$6;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    invoke-interface {v0}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapFailed()V

    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    invoke-static {}, Lcom/google/glass/maps/MapHelper;->access$900()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "ExecutionException"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/google/glass/maps/MapHelper$6;->val$listener:Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;

    invoke-interface {v0}, Lcom/google/glass/maps/MapHelper$OnMapRenderedListener;->onMapFailed()V

    goto :goto_0
.end method
