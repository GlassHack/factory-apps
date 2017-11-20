.class Lcom/google/glass/tutorial/TutorialService$1;
.super Landroid/database/DataSetObserver;
.source "TutorialService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/tutorial/TutorialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/tutorial/TutorialService;

.field private final updateTutorialsRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/glass/tutorial/TutorialService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/tutorial/TutorialService;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialService$1;->this$0:Lcom/google/glass/tutorial/TutorialService;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 44
    new-instance v0, Lcom/google/glass/tutorial/TutorialService$1$1;

    invoke-direct {v0, p0}, Lcom/google/glass/tutorial/TutorialService$1$1;-><init>(Lcom/google/glass/tutorial/TutorialService$1;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialService$1;->updateTutorialsRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialService$1;->updateTutorialsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method
