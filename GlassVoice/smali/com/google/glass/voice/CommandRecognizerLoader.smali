.class public Lcom/google/glass/voice/CommandRecognizerLoader;
.super Ljava/lang/Object;
.source "CommandRecognizerLoader.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final asyncExecutor:Ljava/util/concurrent/Executor;

.field private final context:Landroid/content/Context;

.field private final loadedRecognizers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

.field final recognizersToDestroy:Ljava/util/Set;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/glass/voice/HotwordRecognizer;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/RecognizerFactory;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recognizerFactory"    # Lcom/google/glass/voice/RecognizerFactory;
    .param p3, "asyncExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    .line 43
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    .line 49
    iput-object p1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

    .line 51
    iput-object p3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/CommandRecognizerLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/CommandRecognizerLoader;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/voice/CommandRecognizerLoader;->destroyRecognizers()V

    return-void
.end method

.method private destroyRecognizers()V
    .locals 4

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 175
    .local v1, "recognizers":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 176
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/HotwordRecognizer;

    .line 178
    .local v0, "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    goto :goto_0

    .line 176
    .end local v0    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    .end local v1    # "recognizers":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 180
    .restart local v1    # "recognizers":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordRecognizer;>;"
    :cond_0
    return-void
.end method

.method static hash(Lcom/google/glass/voice/VoiceConfig;)I
    .locals 3
    .param p0, "voiceConfig"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getSensitivity()Lcom/google/glass/voice/VoiceConfig$Sensitivity;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p0}, Lcom/google/glass/voice/VoiceConfig;->getCustomPhrases()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized unloadHashes(Ljava/lang/Iterable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "hashes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 132
    .local v0, "hash":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 133
    .local v1, "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v1, :cond_0

    .line 134
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "hash":Ljava/lang/Integer;
    .end local v1    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 136
    .restart local v0    # "hash":Ljava/lang/Integer;
    .restart local v1    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    :try_start_1
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No recognizer to unload for %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 139
    .end local v0    # "hash":Ljava/lang/Integer;
    .end local v1    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized dumpState(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 199
    .local v0, "recognizerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/glass/voice/HotwordRecognizer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 198
    .end local v0    # "recognizerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/google/glass/voice/HotwordRecognizer;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 202
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, " Recognizers to destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized finalize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 187
    .local v0, "hash":I
    sget-object v1, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Command recognizer resources leaked for hash %s!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    .end local v0    # "hash":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 190
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    monitor-exit p0

    return-void
.end method

.method public getRecognizer(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 4
    .param p1, "voiceConfig"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 61
    invoke-static {p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->hash(Lcom/google/glass/voice/VoiceConfig;)I

    move-result v0

    .line 62
    .local v0, "hash":I
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/HotwordRecognizer;

    .line 64
    .local v1, "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v1, :cond_0

    .line 65
    monitor-exit p0

    .line 69
    .end local v1    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :goto_0
    return-object v1

    .line 67
    .restart local v1    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->load(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v1

    goto :goto_0

    .line 67
    .end local v1    # "recognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method load(Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;
    .locals 8
    .param p1, "voiceConfig"    # Lcom/google/glass/voice/VoiceConfig;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-static {p1}, Lcom/google/glass/voice/CommandRecognizerLoader;->hash(Lcom/google/glass/voice/VoiceConfig;)I

    move-result v0

    .line 92
    .local v0, "hash":I
    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    .line 94
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Have already loaded %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const/4 v1, 0x0

    monitor-exit p0

    .line 115
    :goto_0
    return-object v1

    .line 98
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizerFactory:Lcom/google/glass/voice/RecognizerFactory;

    iget-object v4, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->context:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/google/glass/voice/RecognizerFactory;->createRecognizer(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)Lcom/google/glass/voice/HotwordRecognizer;

    move-result-object v1

    .line 101
    .local v1, "newRecognizer":Lcom/google/glass/voice/HotwordRecognizer;
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Loaded recognizer for voiceConfig %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/HotwordRecognizer;

    .line 110
    .local v2, "previousRecognizer":Lcom/google/glass/voice/HotwordRecognizer;
    if-eqz v2, :cond_1

    .line 111
    sget-object v3, Lcom/google/glass/voice/CommandRecognizerLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Already have recognizer for hash %s, slating for destruction."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v3, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    monitor-exit p0

    goto :goto_0

    .end local v2    # "previousRecognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 98
    .end local v1    # "newRecognizer":Lcom/google/glass/voice/HotwordRecognizer;
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public loadAsync(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "voiceConfigs":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/VoiceConfig;

    .line 80
    .local v0, "voiceConfig":Lcom/google/glass/voice/VoiceConfig;
    iget-object v2, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/glass/voice/CommandRecognizerLoader$1;

    invoke-direct {v3, p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader$1;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;Lcom/google/glass/voice/VoiceConfig;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 87
    .end local v0    # "voiceConfig":Lcom/google/glass/voice/VoiceConfig;
    :cond_0
    return-void
.end method

.method public unload(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/VoiceConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "voiceConfigs":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/glass/voice/VoiceConfig;>;"
    new-instance v0, Lcom/google/glass/voice/CommandRecognizerLoader$2;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/CommandRecognizerLoader$2;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V

    invoke-static {p1, v0}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadHashes(Ljava/lang/Iterable;)V

    .line 128
    return-void
.end method

.method public unloadAll()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 164
    .local v0, "sets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->loadedRecognizers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-direct {p0, v0}, Lcom/google/glass/voice/CommandRecognizerLoader;->unloadHashes(Ljava/lang/Iterable;)V

    .line 168
    invoke-direct {p0}, Lcom/google/glass/voice/CommandRecognizerLoader;->destroyRecognizers()V

    .line 169
    return-void

    .line 166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized unloadReplacedRecognizers()V
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->recognizersToDestroy:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    monitor-exit p0

    return-void

    .line 152
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/CommandRecognizerLoader;->asyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/glass/voice/CommandRecognizerLoader$3;

    invoke-direct {v1, p0}, Lcom/google/glass/voice/CommandRecognizerLoader$3;-><init>(Lcom/google/glass/voice/CommandRecognizerLoader;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
