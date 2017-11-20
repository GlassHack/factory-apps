.class Lcom/google/glass/net/ProtoRequestDispatcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# instance fields
.field final synthetic this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

.field final synthetic val$errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$responseParserReference:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/google/glass/net/ProtoRequestDispatcher;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->this$0:Lcom/google/glass/net/ProtoRequestDispatcher;

    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$responseParserReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 386
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$errorCodeReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 390
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 391
    return-void
.end method

.method public onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$responseParserReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcher$2;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 396
    return-void
.end method
