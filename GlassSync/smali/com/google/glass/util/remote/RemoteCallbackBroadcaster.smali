.class public Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;
.super Ljava/lang/Object;
.source "RemoteCallbackBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;,
        Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Callback::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<TCallback;>;"
        }
    .end annotation
.end field

.field private final registrationCount:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->registrationCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 116
    return-void
.end method

.method private broadcastToAll(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, "operation":Lcom/google/glass/util/remote/RemoteCallbackOperation;, "Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->beginBroadcast()I

    move-result v1

    .line 176
    .local v1, "callbackCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 178
    :try_start_0
    iget-object v4, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    .line 179
    .local v0, "callback":Landroid/os/IInterface;, "TCallback;"
    invoke-interface {p1, v0}, Lcom/google/glass/util/remote/RemoteCallbackOperation;->doOperation(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "callback":Landroid/os/IInterface;, "TCallback;"
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    :catch_0
    move-exception v2

    .line 181
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Remote callback exception"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 184
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->finishBroadcast()V

    .line 185
    return-void
.end method

.method private broadcastToTopOfStack(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, "operation":Lcom/google/glass/util/remote/RemoteCallbackOperation;, "Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->beginBroadcast()I

    move-result v0

    .line 152
    .local v0, "callbackCount":I
    if-lez v0, :cond_2

    .line 155
    const-wide/high16 v3, -0x8000000000000000L

    .line 156
    .local v3, "maxId":J
    const/4 v7, 0x0

    .line 157
    .local v7, "top":Landroid/os/IInterface;, "TCallback;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 158
    :try_start_0
    iget-object v8, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 159
    .local v5, "registrationId":J
    cmp-long v8, v5, v3

    if-lez v8, :cond_0

    .line 160
    move-wide v3, v5

    .line 161
    iget-object v8, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    .line 157
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v5    # "registrationId":J
    :cond_1
    invoke-interface {p1, v7}, Lcom/google/glass/util/remote/RemoteCallbackOperation;->doOperation(Landroid/os/IInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v2    # "i":I
    .end local v3    # "maxId":J
    .end local v7    # "top":Landroid/os/IInterface;, "TCallback;"
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->finishBroadcast()V

    .line 172
    return-void

    .line 167
    .restart local v2    # "i":I
    .restart local v3    # "maxId":J
    .restart local v7    # "top":Landroid/os/IInterface;, "TCallback;"
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v8, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v9, "Remote callback exception"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v8, v1, v9, v10}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected final beginBroadcast()I
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized clear()V
    .locals 4

    .prologue
    .line 77
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->beginBroadcast()I

    move-result v1

    .line 78
    .local v1, "callbackCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 79
    iget-object v3, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    .line 80
    .local v0, "callback":Landroid/os/IInterface;, "TCallback;"
    iget-object v3, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "callback":Landroid/os/IInterface;, "TCallback;"
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->finishBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 77
    .end local v1    # "callbackCount":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 114
    return-void
.end method

.method public final declared-synchronized doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 4
    .param p1, "audience"    # Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p2, "operation":Lcom/google/glass/util/remote/RemoteCallbackOperation;, "Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$1;->$SwitchMap$com$google$glass$util$remote$RemoteCallbackBroadcaster$BroadcastTo:[I

    invoke-virtual {p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 141
    new-instance v0, Ljava/lang/AssertionError;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected audience: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->broadcastToAll(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->broadcastToTopOfStack(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final declared-synchronized doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/util/remote/RemoteCallbackOperation",
            "<TCallback;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, "operation":Lcom/google/glass/util/remote/RemoteCallbackOperation;, "Lcom/google/glass/util/remote/RemoteCallbackOperation<TCallback;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;->ALL:Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackBroadcaster$BroadcastTo;Lcom/google/glass/util/remote/RemoteCallbackOperation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finishBroadcast()V
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    iget-object v0, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 106
    return-void
.end method

.method protected onRegister(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TCallback;"
    return-void
.end method

.method protected onUnregister(Landroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TCallback;"
    return-void
.end method

.method public final register(Landroid/os/IInterface;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TCallback;"
    const/4 v4, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    iget-object v2, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->registrationCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    .line 40
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 41
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Registered callback"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->onRegister(Landroid/os/IInterface;)V

    .line 46
    :goto_0
    return v0

    .line 44
    :cond_0
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to register callback"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final unregister(Landroid/os/IInterface;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallback;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;, "Lcom/google/glass/util/remote/RemoteCallbackBroadcaster<TCallback;>;"
    .local p1, "callback":Landroid/os/IInterface;, "TCallback;"
    const/4 v3, 0x0

    .line 63
    iget-object v1, p0, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->callbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 64
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 65
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unregistered callback"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->onUnregister(Landroid/os/IInterface;)V

    .line 70
    :goto_0
    return v0

    .line 68
    :cond_0
    sget-object v1, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to unregister callback"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
