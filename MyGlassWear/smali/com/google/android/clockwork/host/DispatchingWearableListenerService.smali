.class public Lcom/google/android/clockwork/host/DispatchingWearableListenerService;
.super Lcom/google/android/gms/wearable/WearableListenerService;
.source "DispatchingWearableListenerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WearableDLS"

.field static final listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

.field private static sDumpables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/wearable/util/Dumpable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->sDumpables:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-direct {v0}, Lcom/google/android/clockwork/host/ListenerDispatcher;-><init>()V

    sput-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/wearable/WearableListenerService;-><init>()V

    return-void
.end method

.method public static addDumpable(Ljava/lang/String;Lcom/google/android/wearable/util/Dumpable;)V
    .locals 2
    .param p0, "serviceName"    # Ljava/lang/String;
    .param p1, "dumpable"    # Lcom/google/android/wearable/util/Dumpable;

    .prologue
    .line 76
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->sDumpables:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->sDumpables:Ljava/util/Map;

    invoke-static {v0, p2, p3}, Lcom/google/android/wearable/util/DumpUtil;->dumpDumpables(Ljava/util/Map;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V
    .locals 3
    .param p1, "dataEvents"    # Lcom/google/android/gms/wearable/DataEventBuffer;

    .prologue
    .line 40
    const-string v0, "WearableDLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "WearableDLS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/host/ListenerDispatcher;->onDataChanged(Lcom/google/android/gms/wearable/DataEventBuffer;)V

    .line 44
    return-void
.end method

.method public onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V
    .locals 3
    .param p1, "messageEvent"    # Lcom/google/android/gms/wearable/MessageEvent;

    .prologue
    .line 48
    const-string v0, "WearableDLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "WearableDLS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMessageReceived: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/host/ListenerDispatcher;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    .line 52
    return-void
.end method

.method public onPeerConnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 3
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 56
    const-string v0, "WearableDLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "WearableDLS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/host/ListenerDispatcher;->onPeerConnected(Lcom/google/android/gms/wearable/Node;)V

    .line 60
    return-void
.end method

.method public onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V
    .locals 3
    .param p1, "peer"    # Lcom/google/android/gms/wearable/Node;

    .prologue
    .line 64
    const-string v0, "WearableDLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "WearableDLS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeerDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    sget-object v0, Lcom/google/android/clockwork/host/DispatchingWearableListenerService;->listener:Lcom/google/android/clockwork/host/ListenerDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/clockwork/host/ListenerDispatcher;->onPeerDisconnected(Lcom/google/android/gms/wearable/Node;)V

    .line 68
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 32
    const-string v0, "WearableDLS"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "WearableDLS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
