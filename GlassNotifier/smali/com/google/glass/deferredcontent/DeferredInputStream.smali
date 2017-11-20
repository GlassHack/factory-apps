.class public Lcom/google/glass/deferredcontent/DeferredInputStream;
.super Ljava/io/InputStream;
.source "DeferredInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/deferredcontent/DeferredInputStream$Client;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static timeoutMillis:J


# instance fields
.field private final client:Lcom/google/glass/deferredcontent/DeferredInputStream$Client;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private content:Ljava/io/InputStream;

.field private final contentCondition:Ljava/util/concurrent/locks/Condition;

.field private final contentLock:Ljava/util/concurrent/locks/Lock;

.field private final context:Landroid/content/Context;

.field private inputStream:Ljava/io/InputStream;

.field private final loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final readContentInputStream:Ljava/io/InputStream;

.field private final waitForContentInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/deferredcontent/DeferredInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/deferredcontent/DeferredInputStream;->timeoutMillis:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/deferredcontent/DeferredInputStream$Client;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/google/glass/deferredcontent/DeferredInputStream$Client;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentLock:Ljava/util/concurrent/locks/Lock;

    .line 46
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentCondition:Ljava/util/concurrent/locks/Condition;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream$1;

    invoke-direct {v0, p0}, Lcom/google/glass/deferredcontent/DeferredInputStream$1;-><init>(Lcom/google/glass/deferredcontent/DeferredInputStream;)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->waitForContentInputStream:Ljava/io/InputStream;

    .line 113
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream$2;

    invoke-direct {v0, p0}, Lcom/google/glass/deferredcontent/DeferredInputStream$2;-><init>(Lcom/google/glass/deferredcontent/DeferredInputStream;)V

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->readContentInputStream:Ljava/io/InputStream;

    .line 131
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->waitForContentInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->inputStream:Ljava/io/InputStream;

    .line 134
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {p2}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->context:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->client:Lcom/google/glass/deferredcontent/DeferredInputStream$Client;

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->content:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->loaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/deferredcontent/DeferredInputStream;)Lcom/google/glass/deferredcontent/DeferredInputStream$Client;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->client:Lcom/google/glass/deferredcontent/DeferredInputStream$Client;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcom/google/glass/deferredcontent/DeferredInputStream;->timeoutMillis:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentCondition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/deferredcontent/DeferredInputStream;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->emptyInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/glass/deferredcontent/DeferredInputStream;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->inputStream:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->readContentInputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/glass/deferredcontent/DeferredInputStream;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/deferredcontent/DeferredInputStream;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private emptyInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 261
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream$4;

    invoke-direct {v0, p0}, Lcom/google/glass/deferredcontent/DeferredInputStream$4;-><init>(Lcom/google/glass/deferredcontent/DeferredInputStream;)V

    return-object v0
.end method

.method static setTimeoutMillisForTest(J)J
    .locals 2
    .param p0, "timeoutMillis"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 272
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 273
    sget-wide v0, Lcom/google/glass/deferredcontent/DeferredInputStream;->timeoutMillis:J

    .line 274
    .local v0, "ret":J
    sput-wide p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->timeoutMillis:J

    .line 275
    return-wide v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 248
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->content:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/google/glass/deferredcontent/DeferredInputStream;->emptyInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->content:Ljava/io/InputStream;

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 257
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->content:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 258
    return-void

    .line 255
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->contentLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public createLoadingTask()Lcom/google/glass/deferredcontent/LoadingTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 147
    new-instance v0, Lcom/google/glass/deferredcontent/DeferredInputStream$3;

    iget-object v1, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/deferredcontent/DeferredInputStream$3;-><init>(Lcom/google/glass/deferredcontent/DeferredInputStream;Landroid/content/Context;)V

    .line 225
    .local v0, "task":Lcom/google/glass/deferredcontent/LoadingTask;, "Lcom/google/glass/deferredcontent/LoadingTask<*>;"
    return-object v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/glass/deferredcontent/DeferredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method
