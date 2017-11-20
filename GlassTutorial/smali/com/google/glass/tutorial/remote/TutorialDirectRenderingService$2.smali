.class Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$2;
.super Landroid/database/DataSetObserver;
.source "TutorialDirectRenderingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$2;->this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService$2;->this$0:Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;

    invoke-static {v1}, Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;->access$200(Lcom/google/glass/tutorial/remote/TutorialDirectRenderingService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    return-void
.end method
