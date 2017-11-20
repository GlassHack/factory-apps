.class public Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "packagesChangedReceiver"

    .line 31
    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    return-void
.end method

.method private constructor <init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    .line 45
    return-void
.end method

.method static synthetic access$000()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->packagesChangedReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    .locals 4

    .prologue
    .line 106
    const-class v1, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    new-instance v2, Lcom/google/android/glass/app/VoiceTriggerManager;

    invoke-direct {v2, v0}, Lcom/google/android/glass/app/VoiceTriggerManager;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v3, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-direct {v3, v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;-><init>(Lcom/google/android/glass/app/VoiceTriggerManager;)V

    .line 111
    invoke-virtual {v3, v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->subscribeToPackageChanges(Landroid/content/Context;)V

    .line 112
    new-instance v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    invoke-direct {v0, v3}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;-><init>(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)V

    sput-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    .line 115
    :cond_0
    sget-object v0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getTriggerExtrasBundle(ZJ)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    const-string v2, "trigger_method"

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 153
    const-string v0, "trigger_time"

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 154
    return-object v1

    .line 150
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static declared-synchronized setInstanceForTest(Lcom/google/glass/voice/NativeAppVoiceMenuHelper;)V
    .locals 2

    .prologue
    .line 120
    const-class v1, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 121
    sput-object p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->instance:Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v1

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

.method public getTriggers()Ljava/util/List;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-virtual {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->getVoiceTriggers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTriggers(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 129
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers()Ljava/util/List;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$400(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Lcom/google/android/glass/app/VoiceTriggerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/app/VoiceTriggerManager;->load(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public removeTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->triggerProvider:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;

    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;->access$200(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$CachingVoiceTriggerProvider;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method
