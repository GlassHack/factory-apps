.class Lcom/google/glass/boutique/GlasswareCardHelper$5;
.super Ljava/lang/Object;
.source "GlasswareCardHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/boutique/GlasswareCardHelper;->removeGlasswareCard(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

.field final synthetic val$retryAttempt:I

.field final synthetic val$timelineItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/boutique/GlasswareCardHelper;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/boutique/GlasswareCardHelper;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5;->this$0:Lcom/google/glass/boutique/GlasswareCardHelper;

    iput-object p2, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5;->val$timelineItemId:Ljava/lang/String;

    iput p3, p0, Lcom/google/glass/boutique/GlasswareCardHelper$5;->val$retryAttempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;

    invoke-direct {v1, p0}, Lcom/google/glass/boutique/GlasswareCardHelper$5$1;-><init>(Lcom/google/glass/boutique/GlasswareCardHelper$5;)V

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method
