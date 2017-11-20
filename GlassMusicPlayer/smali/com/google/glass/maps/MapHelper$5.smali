.class Lcom/google/glass/maps/MapHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/b;


# instance fields
.field final synthetic this$0:Lcom/google/glass/maps/MapHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/maps/MapHelper;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/google/glass/maps/MapHelper$5;->this$0:Lcom/google/glass/maps/MapHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/o;
    .locals 1

    .prologue
    .line 324
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/google/glass/maps/MapHelper$5;->apply([B)Lcom/google/common/util/concurrent/o;

    move-result-object v0

    return-object v0
.end method

.method public apply([B)Lcom/google/common/util/concurrent/o;
    .locals 4

    .prologue
    .line 328
    invoke-static {}, Lcom/google/common/util/concurrent/u;->a()Lcom/google/common/util/concurrent/u;

    move-result-object v1

    .line 329
    new-instance v2, Lcom/google/glass/maps/MapHelper$5$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/glass/maps/MapHelper$5$1;-><init>(Lcom/google/glass/maps/MapHelper$5;[BLcom/google/common/util/concurrent/u;)V

    .line 339
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 338
    invoke-virtual {v2, v0, v3}, Lcom/google/glass/maps/MapHelper$5$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 340
    return-object v1
.end method
