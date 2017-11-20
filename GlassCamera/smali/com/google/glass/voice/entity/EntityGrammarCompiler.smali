.class public Lcom/google/glass/voice/entity/EntityGrammarCompiler;
.super Lcom/google/glass/voice/GrammarLoader;
.source "EntityGrammarCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field final entityChangedReceiver:Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final entitySetHashCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/glass/entity/EntitySet;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/GrammarStore;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grammarStore"    # Lcom/google/glass/voice/GrammarStore;

    .prologue
    .line 47
    invoke-direct {p0, p2}, Lcom/google/glass/voice/GrammarLoader;-><init>(Lcom/google/glass/voice/GrammarStore;)V

    .line 36
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->entitySetHashCodes:Ljava/util/Map;

    .line 99
    new-instance v1, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;-><init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;)V

    iput-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->entityChangedReceiver:Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;

    .line 101
    new-instance v1, Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;

    iget-object v2, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-direct {v1, p0, v2}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$1;-><init>(Lcom/google/glass/voice/entity/EntityGrammarCompiler;Lcom/google/glass/logging/FormattingLogger;)V

    iput-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 48
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->context:Landroid/content/Context;

    .line 50
    invoke-static {}, Lcom/google/glass/entity/EntitySet;->values()[Lcom/google/glass/entity/EntitySet;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 51
    .local v0, "entitySet":Lcom/google/glass/entity/EntitySet;
    iget-object v4, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->entitySetHashCodes:Ljava/util/Map;

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "entitySet":Lcom/google/glass/entity/EntitySet;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->invalidateGrammars()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/entity/EntityGrammarCompiler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/entity/EntityGrammarCompiler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->isRequiredToRecompileGrammars()Z

    move-result v0

    return v0
.end method

.method static final computeSpeakableEntityHashCode(Ljava/util/List;)I
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    new-instance v1, Lcom/google/android/util/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/android/util/ArraySet;-><init>(I)V

    .line 79
    .local v1, "nameSet":Lcom/google/android/util/ArraySet;, "Lcom/google/android/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 80
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    invoke-static {v2}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/util/ArraySet;->hashCode()I

    move-result v2

    return v2
.end method

.method public static getConfigName(Lcom/google/glass/entity/EntitySet;)Ljava/lang/String;
    .locals 1
    .param p0, "entitySet"    # Lcom/google/glass/entity/EntitySet;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/glass/entity/EntitySet;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getSpeakableEntityHashCode(Lcom/google/glass/entity/EntitySet;)I
    .locals 1
    .param p1, "config"    # Lcom/google/glass/entity/EntitySet;

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->getEntities(Lcom/google/glass/entity/EntitySet;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->computeSpeakableEntityHashCode(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private invalidateGrammars()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    .line 124
    iget-object v7, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Invalidating grammars"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    invoke-static {}, Lcom/google/glass/entity/EntitySet;->values()[Lcom/google/glass/entity/EntitySet;

    move-result-object v8

    array-length v9, v8

    move v7, v6

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v3, v8, v7

    .line 126
    .local v3, "entitySet":Lcom/google/glass/entity/EntitySet;
    invoke-virtual {p0, v3}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->getEntities(Lcom/google/glass/entity/EntitySet;)Ljava/util/List;

    move-result-object v1

    .line 127
    .local v1, "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    iget-object v6, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->entitySetHashCodes:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->computeSpeakableEntityHashCode(Ljava/util/List;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v6, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v3}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->getConfigName(Lcom/google/glass/entity/EntitySet;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "configName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->getGrammarStore()Lcom/google/glass/voice/GrammarStore;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/google/glass/voice/GrammarStore;->unloadConfig(Ljava/lang/String;)V

    .line 125
    :goto_1
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 136
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 137
    .local v5, "phrases":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 138
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 139
    .local v2, "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    sget-object v6, Lcom/google/glass/entity/EntitySet;->SHARE_TARGETS:Lcom/google/glass/entity/EntitySet;

    invoke-virtual {v6, v3}, Lcom/google/glass/entity/EntitySet;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->context:Landroid/content/Context;

    .line 140
    invoke-static {v6, v2}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v6

    .line 141
    :goto_3
    aput-object v6, v5, v4

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 141
    :cond_1
    invoke-static {v2}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 144
    .end local v2    # "entity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->getGrammarStore()Lcom/google/glass/voice/GrammarStore;

    move-result-object v6

    new-instance v10, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v10, v5}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    invoke-interface {v6, v0, v10}, Lcom/google/glass/voice/GrammarStore;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    goto :goto_1

    .line 146
    .end local v0    # "configName":Ljava/lang/String;
    .end local v1    # "entities":Ljava/util/List;, "Ljava/util/List<Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    .end local v3    # "entitySet":Lcom/google/glass/entity/EntitySet;
    .end local v4    # "i":I
    .end local v5    # "phrases":[Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final isRequiredToRecompileGrammars()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-static {}, Lcom/google/glass/entity/EntitySet;->values()[Lcom/google/glass/entity/EntitySet;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 91
    .local v0, "entitySet":Lcom/google/glass/entity/EntitySet;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->getSpeakableEntityHashCode(Lcom/google/glass/entity/EntitySet;)I

    move-result v6

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->entitySetHashCodes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v6, v1, :cond_0

    .line 92
    const/4 v1, 0x1

    .line 96
    .end local v0    # "entitySet":Lcom/google/glass/entity/EntitySet;
    :goto_1
    return v1

    .line 90
    .restart local v0    # "entitySet":Lcom/google/glass/entity/EntitySet;
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .end local v0    # "entitySet":Lcom/google/glass/entity/EntitySet;
    :cond_1
    move v1, v2

    .line 96
    goto :goto_1
.end method


# virtual methods
.method public getEntities(Lcom/google/glass/entity/EntitySet;)Ljava/util/List;
    .locals 1
    .param p1, "config"    # Lcom/google/glass/entity/EntitySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/glass/entity/EntitySet;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    invoke-virtual {p1, v0}, Lcom/google/glass/entity/EntitySet;->getEntityList(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/entity/EntityList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/entity/EntityList;->getEntities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceConfig(Lcom/google/glass/entity/EntitySet;)Lcom/google/glass/voice/VoiceConfig;
    .locals 5
    .param p1, "entitySet"    # Lcom/google/glass/entity/EntitySet;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->getGrammarStore()Lcom/google/glass/voice/GrammarStore;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/entity/EntitySet;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/voice/GrammarStore;->getLoadedConfig(Ljava/lang/String;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v0

    .line 114
    .local v0, "loadedConfig":Lcom/google/glass/voice/VoiceConfig;
    if-nez v0, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "No config loaded for entity set %s, returning OFF instead."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/google/glass/voice/VoiceConfig;->OFF:Lcom/google/glass/voice/VoiceConfig;

    .line 118
    .end local v0    # "loadedConfig":Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    return-object v0
.end method

.method public registerForUpdates()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Registering for entity updates"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->entityChangedReceiver:Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 156
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 157
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 158
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/LocaleChangedReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 159
    invoke-direct {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->invalidateGrammars()V

    .line 160
    return-void
.end method

.method public setTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Lcom/google/glass/voice/entity/EntityGrammarCompiler;
    .locals 0
    .param p1, "timelineItem"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->timelineItem:Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 58
    invoke-direct {p0}, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->invalidateGrammars()V

    .line 59
    return-object p0
.end method

.method public unregisterForUpdates()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unregistering for entity updates"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->entityChangedReceiver:Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 171
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/entity/EntityGrammarCompiler$EntityChangedBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 172
    iget-object v0, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    iget-object v1, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 173
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/google/glass/voice/entity/EntityGrammarCompiler;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/LocaleChangedReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 174
    return-void
.end method
