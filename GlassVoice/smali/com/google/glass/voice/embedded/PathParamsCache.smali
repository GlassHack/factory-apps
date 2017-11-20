.class public Lcom/google/glass/voice/embedded/PathParamsCache;
.super Ljava/lang/Object;
.source "PathParamsCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/embedded/PathParamsCache$Provider;
    }
.end annotation


# instance fields
.field private final getPronsManager:Lcom/google/glass/voice/embedded/GetPronsManager;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final phrasesToPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/speech/recognizer/api/Network$PathParams;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final pronDatabaseHelper:Lcom/google/glass/voice/embedded/PronDatabaseHelper;

.field private final symbolsToPhrases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/glass/voice/embedded/GetPronsManager;Lcom/google/glass/voice/embedded/PronDatabaseHelper;)V
    .locals 2
    .param p1, "getPronsManager"    # Lcom/google/glass/voice/embedded/GetPronsManager;
    .param p2, "pronDatabaseHelper"    # Lcom/google/glass/voice/embedded/PronDatabaseHelper;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->symbolsToPhrases:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->phrasesToPaths:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->getPronsManager:Lcom/google/glass/voice/embedded/GetPronsManager;

    .line 46
    iput-object p2, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->pronDatabaseHelper:Lcom/google/glass/voice/embedded/PronDatabaseHelper;

    .line 47
    return-void
.end method

.method private createNetworkPathParams(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 3
    .param p1, "phrase"    # Ljava/lang/String;
    .param p2, "prons"    # [Ljava/lang/String;

    .prologue
    .line 133
    new-instance v1, Lcom/google/speech/recognizer/api/Network$PathParams;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/Network$PathParams;-><init>()V

    const/4 v2, 0x0

    .line 134
    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/Network$PathParams;->setLastPhoneOptional(Z)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v1

    invoke-static {p1}, Lcom/google/glass/voice/embedded/PathParamsCache;->makeDynamicSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/speech/recognizer/api/Network$PathParams;->setSymbol(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v0

    .line 135
    .local v0, "pp":Lcom/google/speech/recognizer/api/Network$PathParams;
    iput-object p2, v0, Lcom/google/speech/recognizer/api/Network$PathParams;->dictionaryPron:[Ljava/lang/String;

    .line 136
    return-object v0
.end method

.method private declared-synchronized getPathParams(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;
    .locals 1
    .param p1, "phrase"    # Ljava/lang/String;

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->phrasesToPaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/api/Network$PathParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadDatabaseCache()V
    .locals 6

    .prologue
    .line 76
    iget-object v3, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->pronDatabaseHelper:Lcom/google/glass/voice/embedded/PronDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/glass/voice/embedded/PronDatabaseHelper;->getPhraseProns()Ljava/util/Map;

    move-result-object v2

    .line 77
    .local v2, "prons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/google/glass/voice/embedded/PathParamsCache;->createNetworkPathParams(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v1

    .line 79
    .local v1, "pp":Lcom/google/speech/recognizer/api/Network$PathParams;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v1}, Lcom/google/glass/voice/embedded/PathParamsCache;->putPathParams(Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;)V

    goto :goto_0

    .line 81
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v1    # "pp":Lcom/google/speech/recognizer/api/Network$PathParams;
    :cond_0
    return-void
.end method

.method private loadHotwordMapping(Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)V
    .locals 8
    .param p1, "cachedPaths"    # Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .prologue
    const/4 v7, 0x0

    .line 55
    iget-object v3, p1, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    if-eqz v3, :cond_2

    .line 56
    iget-object v3, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    iget-object v4, p1, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x17

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Path count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p1, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 58
    iget-object v3, p1, Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;->path:[Lcom/google/speech/recognizer/api/Network$PathParams;

    aget-object v1, v3, v0

    .line 59
    .local v1, "path":Lcom/google/speech/recognizer/api/Network$PathParams;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->getSymbol()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->getReference()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 60
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Malformed hotword path. [path_params=%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->getReference()Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "phrase":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/speech/recognizer/api/Network$PathParams;->clearReference()Lcom/google/speech/recognizer/api/Network$PathParams;

    .line 70
    invoke-direct {p0, v2, v1}, Lcom/google/glass/voice/embedded/PathParamsCache;->putPathParams(Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;)V

    goto :goto_1

    .line 73
    .end local v0    # "i":I
    .end local v1    # "path":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v2    # "phrase":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static makeDynamicSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "phrase"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, " "

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "[dynamic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized putPathParams(Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;)V
    .locals 2
    .param p1, "phrase"    # Ljava/lang/String;
    .param p2, "pathParams"    # Lcom/google/speech/recognizer/api/Network$PathParams;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->phrasesToPaths:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->symbolsToPhrases:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/speech/recognizer/api/Network$PathParams;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method getPathParams([Ljava/lang/String;Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;)Ljava/util/Map;
    .locals 15
    .param p1, "phrases"    # [Ljava/lang/String;
    .param p2, "compilationLog"    # Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/speech/recognizer/api/Network$PathParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    .local v5, "pathParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;>;"
    new-instance v9, Lcom/google/android/util/ArraySet;

    invoke-direct {v9}, Lcom/google/android/util/ArraySet;-><init>()V

    .line 92
    .local v9, "unknownPhrases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 93
    .local v2, "hotwordsFromCache":I
    const/4 v3, 0x0

    .line 95
    .local v3, "hotwordsFromNetwork":I
    monitor-enter p0

    .line 96
    :try_start_0
    move-object/from16 v0, p1

    array-length v12, v0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v6, p1, v11

    .line 97
    .local v6, "phrase":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 96
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/glass/voice/embedded/PathParamsCache;->getPathParams(Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v4

    .line 102
    .local v4, "pathParams":Lcom/google/speech/recognizer/api/Network$PathParams;
    if-nez v4, :cond_1

    .line 103
    invoke-interface {v9, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    .end local v4    # "pathParams":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v6    # "phrase":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 106
    .restart local v4    # "pathParams":Lcom/google/speech/recognizer/api/Network$PathParams;
    .restart local v6    # "phrase":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v13, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->symbolsToPhrases:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/speech/recognizer/api/Network$PathParams;->getSymbol()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 111
    .end local v4    # "pathParams":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v6    # "phrase":Ljava/lang/String;
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    .line 115
    iget-object v11, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->getPronsManager:Lcom/google/glass/voice/embedded/GetPronsManager;

    invoke-virtual {v11, v9}, Lcom/google/glass/voice/embedded/GetPronsManager;->getProns(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v8

    .line 116
    .local v8, "prons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->pronDatabaseHelper:Lcom/google/glass/voice/embedded/PronDatabaseHelper;

    invoke-virtual {v11, v8}, Lcom/google/glass/voice/embedded/PronDatabaseHelper;->insertPhraseProns(Ljava/util/Map;)V

    .line 117
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 118
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lcom/google/glass/voice/embedded/PathParamsCache;->createNetworkPathParams(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/speech/recognizer/api/Network$PathParams;

    move-result-object v7

    .line 119
    .local v7, "pp":Lcom/google/speech/recognizer/api/Network$PathParams;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {p0, v11, v7}, Lcom/google/glass/voice/embedded/PathParamsCache;->putPathParams(Ljava/lang/String;Lcom/google/speech/recognizer/api/Network$PathParams;)V

    .line 120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v5, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v3, v3, 0x1

    .line 122
    goto :goto_2

    .line 125
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    .end local v7    # "pp":Lcom/google/speech/recognizer/api/Network$PathParams;
    .end local v8    # "prons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v2

    sub-int v10, v11, v3

    .line 126
    .local v10, "unpronounceablePhrases":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setNumHotwordsFromCache(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v11

    .line 127
    invoke-virtual {v11, v3}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setNumHotwordsFromNetwork(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v11

    .line 128
    invoke-virtual {v11, v10}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->setNumHotwordsUnpronounceable(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 129
    return-object v5
.end method

.method declared-synchronized getPhraseFromSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/embedded/PathParamsCache;->symbolsToPhrases:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized initialize(Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)V
    .locals 1
    .param p1, "cachedPaths"    # Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/glass/voice/embedded/PathParamsCache;->loadDatabaseCache()V

    .line 51
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/PathParamsCache;->loadHotwordMapping(Lcom/google/speech/recognizer/api/HotwordCompileParamsProto$HotwordCompileParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
