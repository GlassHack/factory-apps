.class public Lcom/google/android/speech/embedded/Greco3EngineManager;
.super Ljava/lang/Object;
.source "Greco3EngineManager.java"

# interfaces
.implements Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/NotThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Greco3EngineManager"


# instance fields
.field private mCurrentRecognition:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Recognizer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

.field private final mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

.field private final mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mInitialized:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mResourcesByMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/speech/embedded/Greco3DataManager;Lcom/google/android/speech/embedded/Greco3Preferences;Lcom/google/android/speech/embedded/EndpointerModelCopier;)V
    .locals 2
    .param p1, "dataManager"    # Lcom/google/android/speech/embedded/Greco3DataManager;
    .param p2, "preferences"    # Lcom/google/android/speech/embedded/Greco3Preferences;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "endpointerModelCopier"    # Lcom/google/android/speech/embedded/EndpointerModelCopier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    .line 65
    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;

    .line 66
    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;

    .line 70
    const-string v0, "Greco3Thread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/shared/util/ConcurrentUtils;->createSafeSingleThreadedExecutor(Ljava/lang/String;Z)Lcom/google/android/shared/util/ConcurrentUtils$SafeScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    .line 73
    return-void
.end method

.method static buildLanguagePackLog(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;
    .locals 2
    .param p0, "languagePack"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    .line 406
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setLocale(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;->setVersion(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$LanguagePackLog;

    move-result-object v0

    return-object v0
.end method

.method private static deleteSingleLevelTree(Ljava/io/File;)V
    .locals 9
    .param p0, "resourceDir"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 266
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 267
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 268
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 269
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 270
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 271
    const-string v5, "Greco3EngineManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting resource file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 269
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 276
    const-string v5, "Greco3EngineManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error deleting directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 279
    .end local v2    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method private getCompiledGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/LocaleResources;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p2, "resources"    # Lcom/google/android/speech/embedded/LocaleResources;

    .prologue
    .line 394
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3Preferences:Lcom/google/android/speech/embedded/Greco3Preferences;

    invoke-virtual {v1, p1}, Lcom/google/android/speech/embedded/Greco3Preferences;->getCompiledGrammarRevisionId(Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "revisionId":Ljava/lang/String;
    const-string v1, "Greco3EngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using grammar revision ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p2, p1, v0}, Lcom/google/android/speech/embedded/LocaleResources;->getGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    .end local v0    # "revisionId":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getResourcesInternal(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    .locals 7
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p3, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 302
    monitor-enter p0

    :try_start_0
    const-string v4, "Greco3EngineManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResources: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 304
    sget-object v4, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    if-ne p2, v4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 305
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-nez v4, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 307
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 308
    .local v0, "instance":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    if-eqz v0, :cond_4

    .line 309
    invoke-virtual {v0, p1, p3, p2}, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->isEquivalentTo(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    const-string v1, "Greco3EngineManager"

    const-string v2, "Returning existing resource manager."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 330
    :goto_2
    monitor-exit p0

    return-object v1

    .end local v0    # "instance":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_1
    move v4, v3

    .line 304
    goto :goto_0

    :cond_2
    move v2, v3

    .line 305
    goto :goto_1

    .line 313
    .restart local v0    # "instance":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_3
    :try_start_1
    const-string v2, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleting old resources for mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 314
    iget-object v2, v0, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->delete()V

    .line 315
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->loadResourcesFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v0

    .line 320
    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/google/android/speech/embedded/Greco3Mode;->isEndpointerMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 321
    const-string v2, "en-US"

    const/4 v3, 0x0

    invoke-direct {p0, v2, p2, v3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->loadResourcesFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v0

    .line 324
    :cond_5
    if-eqz v0, :cond_6

    .line 325
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 326
    goto :goto_2

    .line 329
    :cond_6
    const-string v2, "Greco3EngineManager"

    const-string v3, "No resources found, returning null."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 302
    .end local v0    # "instance":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private isUsedLocked(Ljava/io/File;)Z
    .locals 8
    .param p1, "pathFile"    # Ljava/io/File;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, "pathStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 286
    .local v6, "res":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    iget-object v0, v6, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->paths:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 287
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 288
    const/4 v7, 0x1

    .line 293
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "res":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :goto_1
    return v7

    .line 286
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v6    # "res":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "res":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private loadResourcesFor(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    .locals 14
    .param p1, "bcp47Locale"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p3, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-virtual {v1, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/LocaleResources;

    move-result-object v13

    .line 337
    .local v13, "resources":Lcom/google/android/speech/embedded/LocaleResources;
    if-nez v13, :cond_0

    .line 338
    const-string v1, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No data for locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 339
    const/4 v1, 0x0

    .line 389
    :goto_0
    return-object v1

    .line 342
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/google/android/speech/embedded/LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v9

    .line 343
    .local v9, "configFile":Ljava/lang/String;
    if-nez v9, :cond_1

    .line 344
    const-string v1, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing config file for mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 345
    const/4 v1, 0x0

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {v13}, Lcom/google/android/speech/embedded/LocaleResources;->getResourcePath()Ljava/lang/String;

    move-result-object v10

    .line 350
    .local v10, "dataPath":Ljava/lang/String;
    if-nez v10, :cond_2

    .line 351
    const-string v1, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No data for locale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 352
    const/4 v1, 0x0

    goto :goto_0

    .line 356
    :cond_2
    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 358
    move-object/from16 v0, p3

    invoke-direct {p0, v0, v13}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getCompiledGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/LocaleResources;)Ljava/lang/String;

    move-result-object v11

    .line 359
    .local v11, "grammarPath":Ljava/lang/String;
    if-nez v11, :cond_4

    sget-object v1, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    move-object/from16 v0, p2

    if-ne v0, v1, :cond_4

    .line 360
    const-string v1, "Greco3EngineManager"

    const-string v3, "No compiled grammar available, returning."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 361
    const/4 v1, 0x0

    goto :goto_0

    .line 364
    .end local v11    # "grammarPath":Ljava/lang/String;
    :cond_3
    const/4 v11, 0x0

    .line 367
    .restart local v11    # "grammarPath":Ljava/lang/String;
    :cond_4
    new-instance v12, Lcom/google/android/shared/util/StopWatch;

    invoke-direct {v12}, Lcom/google/android/shared/util/StopWatch;-><init>()V

    .line 368
    .local v12, "initStopWatch":Lcom/google/android/shared/util/StopWatch;
    invoke-virtual {v12}, Lcom/google/android/shared/util/StopWatch;->start()Lcom/google/android/shared/util/StopWatch;

    .line 371
    if-eqz v11, :cond_5

    .line 372
    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v7, v1

    const/4 v1, 0x1

    aput-object v11, v7, v1

    .line 377
    .local v7, "pathsArray":[Ljava/lang/String;
    :goto_1
    const-string v1, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Compiled grammar path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 378
    const-string v1, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create_rm: m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 379
    invoke-static {v9, v7}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->create(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/speech/embedded/Greco3ResourceManager;

    move-result-object v2

    .line 381
    .local v2, "rm":Lcom/google/android/speech/embedded/Greco3ResourceManager;
    if-nez v2, :cond_6

    .line 382
    const-string v1, "Greco3EngineManager"

    const-string v3, "Error loading resources."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 384
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 374
    .end local v2    # "rm":Lcom/google/android/speech/embedded/Greco3ResourceManager;
    .end local v7    # "pathsArray":[Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v10, v7, v1

    .restart local v7    # "pathsArray":[Ljava/lang/String;
    goto :goto_1

    .line 387
    .restart local v2    # "rm":Lcom/google/android/speech/embedded/Greco3ResourceManager;
    :cond_6
    const-string v1, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Brought up new g3 instance :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lcom/google/android/shared/util/StopWatch;->getElapsedTime()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/google/android/shared/util/L;->i(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 389
    new-instance v1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/google/android/speech/embedded/LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13}, Lcom/google/android/speech/embedded/LocaleResources;->getLanguageMetadata()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v8

    move-object v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;-><init>(Lcom/google/android/speech/embedded/Greco3ResourceManager;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;Lcom/google/android/speech/embedded/Greco3Mode;[Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    goto/16 :goto_0
.end method

.method private releaseAllResourcesLocked()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 211
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    if-eqz v2, :cond_0

    .line 212
    const-string v2, "Greco3EngineManager"

    const-string v3, "Terminating active recognition for shutdown."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->w(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 213
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    invoke-virtual {p0, v2}, Lcom/google/android/speech/embedded/Greco3EngineManager;->release(Lcom/google/android/speech/embedded/Greco3Recognizer;)V

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    .line 217
    .local v1, "rd":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    iget-object v2, v1, Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;->resources:Lcom/google/android/speech/embedded/Greco3ResourceManager;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3ResourceManager;->delete()V

    goto :goto_0

    .line 220
    .end local v1    # "rd":Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mResourcesByMode:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 221
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/File;ZLjava/lang/Runnable;)V
    .locals 8
    .param p1, "path"    # Ljava/io/File;
    .param p2, "force"    # Z
    .param p3, "completionCb"    # Ljava/lang/Runnable;

    .prologue
    const/4 v1, 0x0

    .line 225
    monitor-enter p0

    .line 227
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mInitialized:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 228
    const-string v0, "Greco3EngineManager"

    const-string v1, "Deferring deletion, engine manager already initialized"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 229
    monitor-exit p0

    .line 243
    :goto_0
    return-void

    .line 231
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v7, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3EngineManager$2;

    const-string v2, "Delete resource"

    new-array v3, v1, [I

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/speech/embedded/Greco3EngineManager$2;-><init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Ljava/lang/String;[ILjava/io/File;ZLjava/lang/Runnable;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized doResourceDelete(Ljava/io/File;Z)V
    .locals 3
    .param p1, "path"    # Ljava/io/File;
    .param p2, "force"    # Z

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/speech/embedded/Greco3EngineManager;->isUsedLocked(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "Greco3EngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in use."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 253
    if-eqz p2, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/google/android/speech/embedded/Greco3EngineManager;->releaseAllResourcesLocked()V

    .line 260
    :cond_0
    const-string v0, "Greco3EngineManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting path, not in use: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 261
    invoke-static {p1}, Lcom/google/android/speech/embedded/Greco3EngineManager;->deleteSingleLevelTree(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    :cond_1
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;
    .param p3, "grammarType"    # Lcom/google/android/speech/embedded/Greco3Grammar;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/speech/embedded/Greco3EngineManager;->getResourcesInternal(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;Lcom/google/android/speech/embedded/Greco3Grammar;)Lcom/google/android/speech/embedded/Greco3EngineManager$Resources;

    move-result-object v0

    return-object v0
.end method

.method public maybeInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 82
    monitor-exit p0

    .line 107
    :goto_0
    return-void

    .line 84
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "sw":Lcom/google/android/shared/util/StopWatch;
    new-instance v0, Lcom/google/android/shared/util/StopWatch;

    .end local v0    # "sw":Lcom/google/android/shared/util/StopWatch;
    invoke-direct {v0}, Lcom/google/android/shared/util/StopWatch;-><init>()V

    .line 90
    .restart local v0    # "sw":Lcom/google/android/shared/util/StopWatch;
    invoke-virtual {v0}, Lcom/google/android/shared/util/StopWatch;->start()Lcom/google/android/shared/util/StopWatch;

    .line 93
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-virtual {v1, v4}, Lcom/google/android/speech/embedded/Greco3DataManager;->blockingUpdateResources(Z)V

    .line 94
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mEndpointerModelCopier:Lcom/google/android/speech/embedded/EndpointerModelCopier;

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3DataManager;->getModelsDirSupplier()Lcom/google/common/base/Supplier;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-interface {v1, v2, v3}, Lcom/google/android/speech/embedded/EndpointerModelCopier;->copyEndpointerModels(Lcom/google/common/base/Supplier;Lcom/google/android/speech/embedded/Greco3DataManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mGreco3DataManager:Lcom/google/android/speech/embedded/Greco3DataManager;

    invoke-virtual {v1, v5}, Lcom/google/android/speech/embedded/Greco3DataManager;->blockingUpdateResources(Z)V

    .line 102
    :cond_1
    monitor-enter p0

    .line 103
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mInitialized:Z

    .line 104
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    const-string v1, "Greco3EngineManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeInitialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/shared/util/StopWatch;->getElapsedTime()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    .end local v0    # "sw":Lcom/google/android/shared/util/StopWatch;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 104
    .restart local v0    # "sw":Lcom/google/android/shared/util/StopWatch;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public release(Lcom/google/android/speech/embedded/Greco3Recognizer;)V
    .locals 7
    .param p1, "recognizer"    # Lcom/google/android/speech/embedded/Greco3Recognizer;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 175
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 176
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    if-ne p1, v2, :cond_1

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 178
    const/4 v1, 0x0

    .line 180
    .local v1, "sw":Lcom/google/android/shared/util/StopWatch;
    new-instance v1, Lcom/google/android/shared/util/StopWatch;

    .end local v1    # "sw":Lcom/google/android/shared/util/StopWatch;
    invoke-direct {v1}, Lcom/google/android/shared/util/StopWatch;-><init>()V

    .line 181
    .restart local v1    # "sw":Lcom/google/android/shared/util/StopWatch;
    invoke-virtual {v1}, Lcom/google/android/shared/util/StopWatch;->start()Lcom/google/android/shared/util/StopWatch;

    .line 184
    invoke-virtual {p1}, Lcom/google/android/speech/embedded/Greco3Recognizer;->cancel()I

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    :goto_2
    const-string v2, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Release took: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/shared/util/StopWatch;->getElapsedTime()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 199
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    invoke-virtual {v2}, Lcom/google/android/speech/embedded/Greco3Recognizer;->delete()V

    .line 200
    iput-object v6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 201
    iput-object v6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 202
    :goto_3
    return-void

    .end local v1    # "sw":Lcom/google/android/shared/util/StopWatch;
    :cond_0
    move v2, v4

    .line 175
    goto :goto_0

    :cond_1
    move v3, v4

    .line 176
    goto :goto_1

    .line 188
    .restart local v1    # "sw":Lcom/google/android/shared/util/StopWatch;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 190
    const-string v2, "Greco3EngineManager"

    const-string v3, "Interrupted waiting for recognition to complete."

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_3

    .line 192
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 193
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "Greco3EngineManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception while running recognition: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public startRecognition(Lcom/google/android/speech/embedded/Greco3Recognizer;Ljava/io/InputStream;Lcom/google/android/speech/embedded/Greco3Callback;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V
    .locals 7
    .param p1, "recognizer"    # Lcom/google/android/speech/embedded/Greco3Recognizer;
    .param p2, "input"    # Ljava/io/InputStream;
    .param p3, "callback"    # Lcom/google/android/speech/embedded/Greco3Callback;
    .param p4, "recParams"    # Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;
    .param p5, "eventLogger"    # Lcom/google/android/speech/embedded/GrecoEventLogger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "languagePack"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 135
    invoke-virtual {p1, p2}, Lcom/google/android/speech/embedded/Greco3Recognizer;->setAudioReader(Ljava/io/InputStream;)I

    .line 136
    invoke-virtual {p4}, Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;->getSampleRate()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/google/android/speech/embedded/Greco3Recognizer;->setSamplingRate(I)V

    .line 137
    invoke-virtual {p1, p3}, Lcom/google/android/speech/embedded/Greco3Recognizer;->setCallback(Lcom/google/android/speech/embedded/Greco3Callback;)V

    .line 139
    iget-object v6, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mRecognitionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/speech/embedded/Greco3EngineManager$1;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/embedded/Greco3EngineManager$1;-><init>(Lcom/google/android/speech/embedded/Greco3EngineManager;Lcom/google/android/speech/embedded/GrecoEventLogger;Lcom/google/android/speech/embedded/Greco3Recognizer;Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognition:Ljava/util/concurrent/Future;

    .line 166
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3EngineManager;->mCurrentRecognizer:Lcom/google/android/speech/embedded/Greco3Recognizer;

    .line 167
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
