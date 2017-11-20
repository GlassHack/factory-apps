.class public Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;
.super Lcom/google/glass/voice/GrammarLoader;
.source "GlassMenuGrammarLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$Provider;,
        Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "grammarStore"    # Lcom/google/glass/voice/GrammarStore;
    .param p3, "launcher"    # Lcom/google/glass/voice/menu/GlassMenuLauncher;

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
    .param p0, "label"    # Ljava/lang/String;

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

.method static getDisambiguationGraph(Landroid/content/Context;)Lcom/google/common/collect/Multimap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/InvocationWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraphInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method static getDisambiguationGraph(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/Multimap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/InvocationWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraphInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method private static getDisambiguationGraphInternal(Landroid/content/Context;Ljava/lang/String;)Lcom/google/common/collect/Multimap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/InvocationWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-static {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getImplementedMirrorCommands(Landroid/content/Context;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 166
    .local v0, "graph":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    :goto_0
    invoke-static {p0}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v3

    .line 167
    .local v3, "voiceMenuHelper":Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    invoke-virtual {v3, p1}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->getTriggers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 168
    .local v1, "packageSpecificTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/glass/app/VoiceTrigger;

    .line 169
    .local v2, "trigger":Lcom/google/android/glass/app/VoiceTrigger;
    invoke-static {p0, v2}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;Lcom/google/android/glass/app/VoiceTrigger;)Ljava/lang/String;

    move-result-object v5

    .line 170
    invoke-static {v2}, Lcom/google/glass/voice/InvocationWrapper;->forTrigger(Lcom/google/android/glass/app/VoiceTrigger;)Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v6

    .line 169
    invoke-interface {v0, v5, v6}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v0    # "graph":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    .end local v1    # "packageSpecificTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    .end local v2    # "trigger":Lcom/google/android/glass/app/VoiceTrigger;
    .end local v3    # "voiceMenuHelper":Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    :cond_0
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    .restart local v0    # "graph":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    goto :goto_0

    .line 172
    .restart local v1    # "packageSpecificTriggers":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/glass/app/VoiceTrigger;>;"
    .restart local v3    # "voiceMenuHelper":Lcom/google/glass/voice/NativeAppVoiceMenuHelper;
    :cond_1
    return-object v0
.end method

.method static getImplementedMirrorCommands(Landroid/content/Context;)Lcom/google/common/collect/Multimap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/InvocationWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->getSharedInstance()Lcom/google/glass/entity/EntityCache;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/entity/EntityCache;->getSpeakableMirrorCommandEntities()Lcom/google/common/collect/ListMultimap;

    move-result-object v4

    .line 203
    .local v4, "mirrorCommandEntities":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/Integer;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;>;"
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v2

    .line 204
    .local v2, "implementedMirrorCommands":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    invoke-interface {v4}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    .local v0, "commandType":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {p0, v6}, Lcom/google/glass/voice/VoiceTriggerUtils;->getLabel(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "commandTypeLabel":Ljava/lang/String;
    invoke-interface {v4, v0}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .line 208
    .local v3, "implementingEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7, v3}, Lcom/google/glass/voice/InvocationWrapper;->forMirror(ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/InvocationWrapper;

    move-result-object v7

    .line 207
    invoke-interface {v2, v1, v7}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    .end local v0    # "commandType":Ljava/lang/Integer;
    .end local v1    # "commandTypeLabel":Ljava/lang/String;
    .end local v3    # "implementingEntity":Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    :cond_1
    return-object v2
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
    .locals 12

    .prologue
    .line 102
    iget-object v9, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    .line 103
    invoke-static {v9}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationGraph(Landroid/content/Context;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 104
    .local v0, "commandDisambiguationGraph":Lcom/google/common/collect/Multimap;, "Lcom/google/common/collect/Multimap<Ljava/lang/String;Lcom/google/glass/voice/InvocationWrapper;>;"
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 105
    .local v7, "label":Ljava/lang/String;
    invoke-interface {v0, v7}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v4

    .line 106
    .local v4, "implementations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/glass/voice/InvocationWrapper;>;"
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v3

    .line 107
    .local v3, "implementationCount":I
    const/4 v10, 0x1

    if-le v3, v10, :cond_0

    .line 108
    invoke-static {v7}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getDisambiguationConfigName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "configName":Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/String;

    .line 110
    .local v1, "commands":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 111
    .local v5, "index":I
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/glass/voice/InvocationWrapper;

    .line 112
    .local v8, "wrapper":Lcom/google/glass/voice/InvocationWrapper;
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    iget-object v11, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    invoke-virtual {v8, v11}, Lcom/google/glass/voice/InvocationWrapper;->loadLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v5

    move v5, v6

    .line 113
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 114
    .end local v8    # "wrapper":Lcom/google/glass/voice/InvocationWrapper;
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getGrammarStore()Lcom/google/glass/voice/GrammarStore;

    move-result-object v10

    new-instance v11, Lcom/google/glass/voice/VoiceConfig;

    invoke-direct {v11, v1}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    invoke-interface {v10, v2, v11}, Lcom/google/glass/voice/GrammarStore;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;

    goto :goto_0

    .line 117
    .end local v1    # "commands":[Ljava/lang/String;
    .end local v2    # "configName":Ljava/lang/String;
    .end local v3    # "implementationCount":I
    .end local v4    # "implementations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/glass/voice/InvocationWrapper;>;"
    .end local v5    # "index":I
    .end local v7    # "label":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private declared-synchronized reloadTopLevelConfig()V
    .locals 5

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->launcher:Lcom/google/glass/voice/menu/GlassMenuLauncher;

    invoke-virtual {v3}, Lcom/google/glass/voice/menu/GlassMenuLauncher;->getVoiceMainMenuItems()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->mainMenuItems:Ljava/util/List;

    .line 126
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 127
    .local v1, "literals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->mainMenuItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->mainMenuItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    sget-object v3, Lcom/google/glass/util/Labs$Feature;->S34MMS:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v3}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    sget-object v4, Lcom/google/glass/voice/OpenEndedMode;->VOICE_SEARCH:Lcom/google/glass/voice/OpenEndedMode;

    invoke-static {v3, v4}, Lcom/google/glass/voice/VoiceConfig;->forMixedMode([Ljava/lang/String;Lcom/google/glass/voice/OpenEndedMode;)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v3

    const/4 v4, 0x1

    .line 134
    invoke-virtual {v3, v4}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;

    move-result-object v2

    .line 139
    .local v2, "topLevel":Lcom/google/glass/voice/VoiceConfig;
    :goto_1
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getGrammarStore()Lcom/google/glass/voice/GrammarStore;

    move-result-object v3

    const-string v4, "MAIN_MENU"

    invoke-interface {v3, v4, v2}, Lcom/google/glass/voice/GrammarStore;->reloadConfig(Ljava/lang/String;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/VoiceConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 136
    .end local v2    # "topLevel":Lcom/google/glass/voice/VoiceConfig;
    :cond_1
    :try_start_1
    new-instance v4, Lcom/google/glass/voice/VoiceConfig;

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v4, v3}, Lcom/google/glass/voice/VoiceConfig;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/glass/voice/VoiceConfig;->setShouldSaveAudio(Z)Lcom/google/glass/voice/VoiceConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .restart local v2    # "topLevel":Lcom/google/glass/voice/VoiceConfig;
    goto :goto_1

    .line 125
    .end local v0    # "i":I
    .end local v1    # "literals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "topLevel":Lcom/google/glass/voice/VoiceConfig;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

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
    .locals 4

    .prologue
    .line 177
    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Registering for updates"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 180
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->entityChangedReceiver:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 181
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/LocaleChangedReceiver;->registerAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 182
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getVoiceMenuHelper()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->addTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V

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
    .locals 4

    .prologue
    .line 192
    sget-object v1, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unregistering for updates"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    .line 195
    .local v0, "registrar":Lcom/google/glass/context/BroadcastReceiverRegistrar;
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->entityChangedReceiver:Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader$EntityChangeBroadcastReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 196
    iget-object v1, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->localeChangedReceiver:Lcom/google/glass/voice/LocaleChangedReceiver;

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v0}, Lcom/google/glass/voice/LocaleChangedReceiver;->unregisterAsync(Ljava/util/concurrent/Executor;Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 197
    invoke-direct {p0}, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->getVoiceMenuHelper()Lcom/google/glass/voice/NativeAppVoiceMenuHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/GlassMenuGrammarLoader;->triggerCacheListener:Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;

    invoke-virtual {v1, v2}, Lcom/google/glass/voice/NativeAppVoiceMenuHelper;->removeTriggerCacheUpdateListener(Lcom/google/glass/voice/NativeAppVoiceMenuHelper$TriggerCacheUpdateListener;)V

    .line 198
    return-void
.end method
