.class public Lcom/google/glass/net/ProtoRequestDispatcherPool;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MAX_SIZE:I = 0x8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authUtils:Lcom/google/glass/auth/AuthUtils;

.field private currentIndex:I

.field private dispatchers:Ljava/util/List;

.field private final httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    .line 37
    iput-object p2, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->authUtils:Lcom/google/glass/auth/AuthUtils;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    .line 39
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method createDispatcher(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;ZLjava/util/concurrent/Executor;)Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    invoke-direct {v0, p1, p3, p4, p2}, Lcom/google/glass/net/ProtoRequestDispatcher;-><init>(Lcom/google/glass/net/HttpRequestDispatcher;ZLjava/util/concurrent/Executor;Lcom/google/glass/auth/AuthUtils;)V

    return-object v0
.end method

.method public declared-synchronized getRequestDispatcher()Lcom/google/glass/net/ProtoRequestDispatcher;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x0

    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 53
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 54
    invoke-virtual {v0}, Lcom/google/glass/net/ProtoRequestDispatcher;->isBusy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 77
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 52
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_2
    :goto_2
    :try_start_1
    iget v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-ge v0, v5, :cond_3

    iget v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-gt v0, v1, :cond_3

    .line 63
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->httpRequestDispatcher:Lcom/google/glass/net/HttpRequestDispatcher;

    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->authUtils:Lcom/google/glass/auth/AuthUtils;

    const/4 v2, 0x0

    .line 64
    invoke-static {}, Lcom/google/glass/async/MainThreadExecutorManager;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 63
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/glass/net/ProtoRequestDispatcherPool;->createDispatcher(Lcom/google/glass/net/HttpRequestDispatcher;Lcom/google/glass/auth/AuthUtils;ZLjava/util/concurrent/Executor;)Lcom/google/glass/net/ProtoRequestDispatcher;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    const-class v1, Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v2, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;-><init>(Lcom/google/glass/net/ProtoRequestDispatcherPool;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2}, Lcom/google/glass/net/ProtoRequestDispatcherPool$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->dispatchers:Ljava/util/List;

    iget v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/net/ProtoRequestDispatcher;

    .line 73
    iget v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    .line 74
    iget v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I

    if-lt v1, v5, :cond_0

    .line 75
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/glass/net/ProtoRequestDispatcherPool;->currentIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
