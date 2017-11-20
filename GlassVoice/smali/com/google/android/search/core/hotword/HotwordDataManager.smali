.class public Lcom/google/android/search/core/hotword/HotwordDataManager;
.super Ljava/lang/Object;
.source "HotwordDataManager.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final SPEAKER_MODEL_FILE:Ljava/lang/String; = "nano_hotword.data"

.field private static final TAG:Ljava/lang/String; = "HotwordDataManager"


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;

.field private final mDataDirPath:Ljava/lang/String;

.field private mHotwordModel:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mInitializationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mLocale:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSpeakerModel:[B
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mTouchSpeakerModels:Z

.field private final mUiThread:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/speech/SpeechConfigFlags;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "bgExecutor"    # Ljava/util/concurrent/Executor;
    .param p3, "uiThread"    # Ljava/util/concurrent/Executor;
    .param p4, "configFlags"    # Lcom/google/android/speech/SpeechConfigFlags;
    .param p5, "dataDirPath"    # Ljava/lang/String;
    .param p6, "touchSpeakerModels"    # Z

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mLocale:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mHotwordModel:[B

    .line 49
    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mSpeakerModel:[B

    .line 54
    iput-object p1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mAssets:Landroid/content/res/AssetManager;

    .line 55
    iput-object p2, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 56
    iput-object p3, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mUiThread:Ljava/util/concurrent/Executor;

    .line 57
    iput-object p4, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;

    .line 58
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mInitializationCallbacks:Ljava/util/List;

    .line 59
    iput-object p5, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mDataDirPath:Ljava/lang/String;

    .line 60
    iput-boolean p6, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mTouchSpeakerModels:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/search/core/hotword/HotwordDataManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/search/core/hotword/HotwordDataManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mDataDirPath:Ljava/lang/String;

    return-object v0
.end method

.method private getModelFromAssetFile(Ljava/lang/String;)[B
    .locals 6
    .param p1, "locale"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 132
    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;

    invoke-interface {v3}, Lcom/google/android/speech/SpeechConfigFlags;->getMicroHotwordResources()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 133
    .local v1, "localeData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 134
    const/4 v2, 0x0

    .line 142
    :goto_0
    return-object v2

    .line 136
    :cond_0
    const/4 v2, 0x0

    .line 138
    .local v2, "model":[B
    :try_start_0
    iget-object v4, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mAssets:Landroid/content/res/AssetManager;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/google/android/shared/util/Util;->loadBytesFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "HotwordDataManager"

    const-string v4, "No model available."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v0, v4, v5}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getSpeakerModelFromFile()[B
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-boolean v2, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mTouchSpeakerModels:Z

    if-nez v2, :cond_0

    .line 157
    :goto_0
    return-object v1

    .line 153
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mDataDirPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/search/core/hotword/HotwordDataManager;->getSpeakerModelPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/shared/util/IoUtils;->toByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "HotwordDataManager"

    const-string v3, "Speaker-ID model doesn\'t exist"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getSpeakerModelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "nano_hotword.data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadMicroHotwordResources(Ljava/lang/String;)V
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/search/core/hotword/HotwordDataManager$1;

    const-string v2, "MicroHotwordResourceLoader"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/search/core/hotword/HotwordDataManager$1;-><init>(Lcom/google/android/search/core/hotword/HotwordDataManager;Ljava/lang/String;[ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized addInitializationCallback(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .param p1, "callback"    # Ljava/lang/Runnable;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/search/core/hotword/HotwordDataManager;->isInitializedForLocale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mUiThread:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHotwordModelInfo(Ljava/lang/String;)Lcom/google/android/speech/HotwordModelInfo;
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;

    invoke-interface {v1}, Lcom/google/android/speech/SpeechConfigFlags;->getMicroHotwordResources()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 166
    .local v0, "localeData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 168
    const-string v1, "HotwordDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hotword configuration present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mConfigFlags:Lcom/google/android/speech/SpeechConfigFlags;

    invoke-interface {v3}, Lcom/google/android/speech/SpeechConfigFlags;->getMicroHotwordResources()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 171
    new-instance v2, Lcom/google/android/speech/HotwordModelInfo;

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mLocale:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, v1, v3}, Lcom/google/android/speech/HotwordModelInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 174
    :goto_0
    monitor-exit p0

    return-object v1

    .line 173
    :cond_0
    :try_start_1
    const-string v1, "HotwordDataManager"

    const-string v2, "Hotword configuration not present for the given locale"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 174
    sget-object v1, Lcom/google/android/speech/HotwordModelInfo;->NO_HOTWORD:Lcom/google/android/speech/HotwordModelInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    .end local v0    # "localeData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMicroHotwordModel(Ljava/lang/String;)[B
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/search/core/hotword/HotwordDataManager;->isInitializedForLocale(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 186
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mHotwordModel:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpeakerModel()[B
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mSpeakerModel:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initializeForLocale(Ljava/lang/String;)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    const-string v0, "HotwordDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeForLocale("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/android/search/core/hotword/HotwordDataManager;->isInitializedForLocale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mHotwordModel:[B

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mLocale:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/search/core/hotword/HotwordDataManager;->loadMicroHotwordResources(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitializedForLocale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mLocale:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mLocale:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadResourcesAndNotifyCallback(Ljava/lang/String;)V
    .locals 8
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/search/core/hotword/HotwordDataManager;->getModelFromAssetFile(Ljava/lang/String;)[B

    move-result-object v2

    .line 113
    .local v2, "hotwordModel":[B
    invoke-direct {p0}, Lcom/google/android/search/core/hotword/HotwordDataManager;->getSpeakerModelFromFile()[B

    move-result-object v4

    .line 115
    .local v4, "speakerModel":[B
    const-string v5, "HotwordDataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Speaker Model:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v5, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 119
    .local v1, "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iput-object p1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mLocale:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mHotwordModel:[B

    .line 121
    iput-object v4, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mSpeakerModel:[B

    .line 122
    iget-object v5, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 126
    .local v0, "callback":Ljava/lang/Runnable;
    iget-object v5, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mUiThread:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 123
    .end local v0    # "callback":Ljava/lang/Runnable;
    .end local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 128
    .restart local v1    # "callbacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public declared-synchronized setSpeakerModel([B)V
    .locals 4
    .param p1, "speakerModel"    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mTouchSpeakerModels:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    :try_start_1
    const-string v0, "HotwordDataManager"

    const-string v1, "setSpeakerModel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 213
    iput-object p1, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mSpeakerModel:[B

    .line 214
    if-nez p1, :cond_1

    .line 215
    const-string v0, "HotwordDataManager"

    const-string v1, "Null speaker model"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 218
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/search/core/hotword/HotwordDataManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/search/core/hotword/HotwordDataManager$2;

    const-string v2, "Write speaker model to disk"

    const/4 v3, 0x0

    new-array v3, v3, [I

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/google/android/search/core/hotword/HotwordDataManager$2;-><init>(Lcom/google/android/search/core/hotword/HotwordDataManager;Ljava/lang/String;[I[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
