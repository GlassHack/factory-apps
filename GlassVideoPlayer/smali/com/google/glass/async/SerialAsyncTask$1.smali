.class Lcom/google/glass/async/SerialAsyncTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/SerialAsyncTask;

.field final synthetic val$preLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/glass/async/SerialAsyncTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/async/SerialAsyncTask$1;->this$0:Lcom/google/glass/async/SerialAsyncTask;

    iput-object p2, p0, Lcom/google/glass/async/SerialAsyncTask$1;->val$preLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/async/SerialAsyncTask$1;->this$0:Lcom/google/glass/async/SerialAsyncTask;

    invoke-virtual {v0}, Lcom/google/glass/async/SerialAsyncTask;->serialOnPreExecute()V

    .line 46
    iget-object v0, p0, Lcom/google/glass/async/SerialAsyncTask$1;->val$preLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 47
    return-void
.end method
