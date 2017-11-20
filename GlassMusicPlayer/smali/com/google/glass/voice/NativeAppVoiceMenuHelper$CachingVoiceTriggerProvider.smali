.class Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cachedTriggers:Ljava/util/List;

.field private final invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final triggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;

.field private final updateListeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/glass/app/VoiceTriggerManager;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->cachedTriggers:Ljava/util/List;

    .line 50
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->updateListeners:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput-object p1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->triggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;

    .line 57
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->updateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Lcom/google/android/glass/app/VoiceTriggerManager;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->triggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;

    return-object v0
.end method

.method private static createBroadcastReceiverIntentFilter()Landroid/content/IntentFilter;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 63
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    const-string v0, "package"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 69
    return-object v1
.end method


# virtual methods
.method public declared-synchronized getVoiceTriggers()Ljava/util/List;
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Reloading triggers"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->triggerManager:Lcom/google/android/glass/app/VoiceTriggerManager;

    invoke-virtual {v0}, Lcom/google/android/glass/app/VoiceTriggerManager;->load()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->cachedTriggers:Ljava/util/List;

    .line 98
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 101
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->cachedTriggers:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0
.end method

.method public subscribeToPackageChanges(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->createBroadcastReceiverIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;-><init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 88
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider$1;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 89
    return-void
.end method
