.class Lcom/google/glass/async/SerialAsyncTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/SerialAsyncTask;

.field final synthetic val$postLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/glass/async/SerialAsyncTask;Ljava/lang/Object;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/glass/async/SerialAsyncTask$2;->this$0:Lcom/google/glass/async/SerialAsyncTask;

    iput-object p2, p0, Lcom/google/glass/async/SerialAsyncTask$2;->val$result:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/glass/async/SerialAsyncTask$2;->val$postLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/async/SerialAsyncTask$2;->this$0:Lcom/google/glass/async/SerialAsyncTask;

    iget-object v1, p0, Lcom/google/glass/async/SerialAsyncTask$2;->val$result:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/glass/async/SerialAsyncTask;->serialOnPostExecute(Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/google/glass/async/SerialAsyncTask$2;->val$postLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    return-void
.end method
