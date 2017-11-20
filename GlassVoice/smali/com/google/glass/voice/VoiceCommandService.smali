.class public Lcom/google/glass/voice/VoiceCommandService;
.super Landroid/app/Service;
.source "VoiceCommandService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final binder:Landroid/os/IBinder;

.field final listenerMap:Ljava/util/Map;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/google/glass/voice/VoiceCommandService$VoiceCommandServiceListener;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "listenerMap"
    .end annotation
.end field

.field private final onConnectTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "onConnectTasks"
    .end annotation
.end field

.field voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/VoiceCommandService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->onConnectTasks:Ljava/util/Queue;

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->listenerMap:Ljava/util/Map;

    .line 47
    new-instance v0, Lcom/google/glass/voice/VoiceCommandService$1;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommandService$1;-><init>(Lcom/google/glass/voice/VoiceCommandService;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->binder:Landroid/os/IBinder;

    .line 218
    new-instance v0, Lcom/google/glass/voice/VoiceCommandService$2;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.google.glass.voice"

    const-string v3, "com.google.glass.voice.VoiceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/VoiceCommandService$2;-><init>(Lcom/google/glass/voice/VoiceCommandService;Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    return-void
.end method

.method static synthetic access$200()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/glass/voice/VoiceCommandService;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/VoiceCommandService;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceCommandService;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/glass/voice/VoiceCommandService;->runOnVoiceServiceBound(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/voice/VoiceCommandService;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceCommandService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->onConnectTasks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/VoiceCommandService;)Lcom/google/glass/util/SafeServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/VoiceCommandService;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    return-object v0
.end method

.method private runOnVoiceServiceBound(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 132
    iget-object v1, p0, Lcom/google/glass/voice/VoiceCommandService;->onConnectTasks:Ljava/util/Queue;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceBinder:Lcom/google/glass/voice/IVoiceService;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->onConnectTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    monitor-exit v1

    .line 139
    return-void

    .line 136
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 247
    iget-object v0, p0, Lcom/google/glass/voice/VoiceCommandService;->voiceServiceConnection:Lcom/google/glass/util/SafeServiceConnection;

    invoke-virtual {v0, p0}, Lcom/google/glass/util/SafeServiceConnection;->bind(Landroid/content/Context;)Lcom/google/glass/util/SafeServiceConnection;

    .line 248
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 263
    new-instance v0, Lcom/google/glass/voice/VoiceCommandService$3;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceCommandService$3;-><init>(Lcom/google/glass/voice/VoiceCommandService;)V

    invoke-direct {p0, v0}, Lcom/google/glass/voice/VoiceCommandService;->runOnVoiceServiceBound(Ljava/lang/Runnable;)V

    .line 279
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method
