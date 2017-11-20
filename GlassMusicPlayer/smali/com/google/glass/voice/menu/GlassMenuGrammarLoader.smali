.class public Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
.super Lcom/google/glass/voice/GrammarLoader;
.source "SourceFile"


# static fields
.field public static final TOP_LEVEL_MAIN_MENU:Ljava/lang/String; = "MAIN_MENU"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field final entityChangedReceiver:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

.field private final localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

.field private mainMenuItems:Ljava/util/List;

.field final triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;Lcom/google/glass/voice/menu/GlassMenuLauncher;)V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0, p2}, Lcom/google/glass/voice/GrammarLoader;-><init>(Lcom/google/glass/voice/GrammarStore;)V

    .line 54
    new-instance v0, Lcom/google/glass/async/PriorityThreadFactory;

    const/4 v1, 0x0

    const-class v2, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/backgroundExecutor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/glass/async/PriorityThreadFactory;-><init>(ILjava/lang/String;)V

    .line 55
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 61
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;-><init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->entityChangedReceiver:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;

    .line 63
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;

    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$1;-><init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;Lcom/google/glass/logging/FormattingLogger;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    .line 70
    new-instance v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$2;-><init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    .line 83
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    .line 84
    iput-object p3, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    .line 85
    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static getDisambiguationConfigName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    const-string v0, " "

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_DISAMBIGUATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDisambiguationGraph(Landroid/content/Context;)Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraphInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/jt;

    move-result-object v0

    return-object v0
.end method

.method static getDisambiguationGraph(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/jt;
    .locals 1

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraphInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/jt;

    move-result-object v0

    return-object v0
.end method

.method private static getDisambiguationGraphInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/jt;
    .locals 4

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getImplementedMirrorCommands(Landroid/content/Context;)Lcom/google/common/collect/jt;

    move-result-object v0

    move-object v1, v0

    .line 166
    :goto_0
    invoke-static {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/app/VoiceTrigger;

    .line 169
    invoke-static {p0, v0}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {v0}, Lcom/google/glass/voice/InvocationWrapper;->forTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v0

    .line 169
    invoke-interface {v1, v3, v0}, Lcom/google/common/collect/jt;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    :cond_0
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 172
    :cond_1
    return-object v1
.end method

.method static getImplementedMirrorCommands(Landroid/content/Context;)Lcom/google/common/collect/jt;
    .locals 8

    .prologue
    .line 202
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityCache;->getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ft;

    move-result-object v2

    .line 203
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v3

    .line 204
    invoke-interface {v2}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-interface {v2, v0}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v1}, Lcom/google/glass/voice/InvocationWrapper;->forMirror(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v1

    .line 207
    invoke-interface {v3, v5, v1}, Lcom/google/common/collect/jt;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_1
    return-object v3
.end method

.method private getVoiceMenuHelper()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    return-object v0
.end method

.method private reloadDisambiguationConfigs()V
    .locals 9

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    .line 103
    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraph(Landroid/content/Context;)Lcom/google/common/collect/jt;

    move-result-object v3

    .line 104
    invoke-interface {v3}, Lcom/google/common/collect/jt;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    invoke-interface {v3, v0}, Lcom/google/common/collect/jt;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 107
    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    .line 108
    invoke-static {v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationConfigName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 109
    new-array v6, v2, [Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/InvocationWrapper;

    .line 112
    add-int/lit8 v2, v1, 0x1

    iget-object v8, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/google/glass/voice/InvocationWrapper;->loadLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    move v1, v2

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getGrammarStore()Lcom/google/glass/voice/GrammarStore;

    move-result-object v0

    new-instance v1, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v1, v6}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    invoke-interface {v0, v5, v1}, Lcom/google/glass/voice/GrammarStore;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 117
    :cond_2
    return-void
.end method

.method private declared-synchronized reloadTopLevelConfig()V
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getVoiceMainMenuItems()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->mainMenuItems:Ljava/util/List;

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->mainMenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->mainMenuItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_0
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->S34MMS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sget-object v1, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->forMixedMode([Ljava/lang/String;Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getGrammarStore()Lcom/google/glass/voice/GrammarStore;

    move-result-object v1

    const-string v2, "MAIN_MENU"

    invoke-interface {v1, v2, v0}, Lcom/google/glass/voice/GrammarStore;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 136
    :cond_1
    :try_start_1
    new-instance v1, Lcom/google/glass/voice/VoiceConfig;

    .line 137
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method blockingReloadGrammars()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->reloadTopLevelConfig()V

    .line 98
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->reloadDisambiguationConfigs()V

    .line 99
    return-void
.end method

.method public declared-synchronized getMainMenuItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 121
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->mainMenuItems:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerForUpdates()V
    .locals 3

    .prologue
    .line 177
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering for updates"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->entityChangedReceiver:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 181
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/LocaleChangedReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 182
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getVoiceMenuHelper()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->addTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->reloadGrammars()V

    .line 184
    return-void
.end method

.method protected reloadGrammars()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$3;-><init>(Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public unregisterForUpdates()V
    .locals 3

    .prologue
    .line 192
    sget-object v0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistering for updates"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->entityChangedReceiver:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 196
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/LocaleChangedReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 197
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getVoiceMenuHelper()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->removeTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V

    .line 198
    return-void
.end method
