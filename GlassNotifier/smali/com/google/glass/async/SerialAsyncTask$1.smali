.class Lcom/google/glass/async/SerialAsyncTask$1;
.super Ljava/lang/Object;
.source "SerialAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/async/SerialAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/async/SerialAsyncTask;

.field final synthetic val$preLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/glass/async/SerialAsyncTask;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/async/SerialAsyncTask;

    .prologue
    .line 40
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask$1;, "Lcom/google/glass/async/SerialAsyncTask$1;"
    iput-object p1, p0, Lcom/google/glass/async/SerialAsyncTask$1;->this$0:Lcom/google/glass/async/SerialAsyncTask;

    iput-object p2, p0, Lcom/google/glass/async/SerialAsyncTask$1;->val$preLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    .local p0, "this":Lcom/google/glass/async/SerialAsyncTask$1;, "Lcom/google/glass/async/SerialAsyncTask$1;"
    iget-object v0, p0, Lcom/google/glass/async/SerialAsyncTask$1;->this$0:Lcom/google/glass/async/SerialAsyncTask;

    invoke-virtual {v0}, Lcom/google/glass/async/SerialAsyncTask;->serialOnPreExecute()V

    .line 44
    iget-object v0, p0, Lcom/google/glass/async/SerialAsyncTask$1;->val$preLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 45
    return-void
.end method
