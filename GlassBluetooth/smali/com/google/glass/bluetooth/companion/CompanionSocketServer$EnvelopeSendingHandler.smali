.class final Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;
.super Landroid/os/Handler;
.source "CompanionSocketServer.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/companion/CompanionSocketServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EnvelopeSendingHandler"
.end annotation


# static fields
.field private static final WHAT_GENERIC_ENVELOPE:I = -0x1


# instance fields
.field private final companionConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/bluetooth/companion/CompanionConnection;",
            ">;"
        }
    .end annotation
.end field

.field private lastLocationProviderId:I

.field private final locationProviderIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sendLocationEnvelopeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/bluetooth/companion/CompanionConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 936
    .local p2, "companionConnectionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/bluetooth/companion/CompanionConnection;>;"
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 917
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->sendLocationEnvelopeLock:Ljava/lang/Object;

    .line 924
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->locationProviderIds:Ljava/util/Map;

    .line 932
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->lastLocationProviderId:I

    .line 937
    iput-object p2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->companionConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 938
    return-void
.end method

.method static synthetic access$1200(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;
    .locals 1
    .param p0, "x0"    # Ljava/util/concurrent/atomic/AtomicReference;

    .prologue
    .line 906
    invoke-static {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->createOnNewThread(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;
    .param p1, "x1"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 906
    invoke-direct {p0, p1, p2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->sendLocationEnvelope(Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V

    return-void
.end method

.method private static createOnNewThread(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/glass/bluetooth/companion/CompanionConnection;",
            ">;)",
            "Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;"
        }
    .end annotation

    .prologue
    .line 946
    .local p0, "companionConnectionRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/google/glass/bluetooth/companion/CompanionConnection;>;"
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CompanionEnvelopeSendingThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 947
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 948
    new-instance v1, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;-><init>(Landroid/os/Looper;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-object v1
.end method

.method private getLocationProviderId(Ljava/lang/String;)I
    .locals 4
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 978
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->locationProviderIds:Ljava/util/Map;

    monitor-enter v2

    .line 979
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->locationProviderIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 980
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    .line 986
    :goto_0
    return v1

    .line 984
    :cond_0
    iget v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->lastLocationProviderId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->lastLocationProviderId:I

    .line 985
    iget-object v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->locationProviderIds:Ljava/util/Map;

    iget v3, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->lastLocationProviderId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget v1, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->lastLocationProviderId:I

    monitor-exit v2

    goto :goto_0

    .line 987
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 1
    .param p1, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 957
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 958
    return-void
.end method

.method private sendLocationEnvelope(Ljava/lang/String;Lcom/google/glass/companion/Proto$Envelope;)V
    .locals 3
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "envelope"    # Lcom/google/glass/companion/Proto$Envelope;

    .prologue
    .line 967
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->getLocationProviderId(Ljava/lang/String;)I

    move-result v0

    .line 968
    .local v0, "providerId":I
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->sendLocationEnvelopeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 969
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->removeMessages(I)V

    .line 970
    invoke-virtual {p0, v0, p2}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 971
    monitor-exit v2

    .line 972
    return-void

    .line 971
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1005
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 992
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/google/glass/companion/Proto$Envelope;

    .line 995
    .local v1, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    iget-object v2, p0, Lcom/google/glass/bluetooth/companion/CompanionSocketServer$EnvelopeSendingHandler;->companionConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/bluetooth/companion/CompanionConnection;

    .line 996
    .local v0, "connectionCopy":Lcom/google/glass/bluetooth/companion/CompanionConnection;
    if-nez v0, :cond_0

    .line 1000
    :goto_0
    return-void

    .line 999
    :cond_0
    invoke-virtual {v0}, Lcom/google/glass/bluetooth/companion/CompanionConnection;->getEnvelopeSender()Lcom/google/glass/bluetooth/companion/EnvelopeSender;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/bluetooth/companion/EnvelopeSender;->sendEnvelope(Lcom/google/glass/companion/Proto$Envelope;)Z

    goto :goto_0
.end method
