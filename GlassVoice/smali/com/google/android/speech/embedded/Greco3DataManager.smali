.class public Lcom/google/android/speech/embedded/Greco3DataManager;
.super Ljava/lang/Object;
.source "Greco3DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final COMPILED_GRAMMAR_CACHE:Ljava/lang/String; = "g3_grammars"

.field private static final DIRECTORY_FILTER:Ljava/io/FileFilter;

.field public static final EP_FALLBACK_LOCALE:Ljava/lang/String; = "en-US"

.field public static final MODELS_DIR:Ljava/lang/String; = "g3_models"

.field static final SYSTEM_DATA_DIR:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "Greco3DataManager"


# instance fields
.field private mAvailableLanguages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResources;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mCompiledGrammarRoot:Ljava/io/File;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private final mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final mInitializationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/shared/util/UiRunnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mNumUpdatesInProgress:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

.field private final mSearchPaths:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedFormatVersions:[I

.field final mUiThread:Ljava/util/concurrent/Executor;

.field private final mUpdateExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/usr/srec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3DataManager;->SYSTEM_DATA_DIR:Ljava/io/File;

    .line 565
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager$5;

    invoke-direct {v0}, Lcom/google/android/speech/embedded/Greco3DataManager$5;-><init>()V

    sput-object v0, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;[ILcom/google/common/collect/ImmutableList;Ljava/io/File;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferences"    # Lcom/google/android/speech/embedded/Greco3Preferences;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "supportedFormatVersions"    # [I
    .param p5, "compiledGrammarRoot"    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "updateExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "uiThread"    # Ljava/util/concurrent/Executor;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/speech/embedded/Greco3Preferences;",
            "[I",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p4, "searchPaths":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;

    .line 106
    iput-object p3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSupportedFormatVersions:[I

    .line 107
    iput-object p4, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSearchPaths:Lcom/google/common/collect/ImmutableList;

    .line 108
    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSearchPaths:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 109
    .local v1, "searchPath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    goto :goto_0

    .line 111
    .end local v1    # "searchPath":Ljava/io/File;
    :cond_0
    iput-object p5, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    .line 112
    iput-object p6, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUpdateExecutor:Ljava/util/concurrent/Executor;

    .line 113
    iput-object p7, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUiThread:Ljava/util/concurrent/Executor;

    .line 115
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    .line 116
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/Map;

    .line 117
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;[ILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "prefs"    # Lcom/google/android/speech/embedded/Greco3Preferences;
    .param p3, "supportedFormatVersions"    # [I
    .param p4, "updateExecutor"    # Ljava/util/concurrent/Executor;
    .param p5, "uiThread"    # Ljava/util/concurrent/Executor;

    .prologue
    const/4 v2, 0x0

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const-string v1, "g3_models"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/google/android/speech/embedded/Greco3DataManager;->SYSTEM_DATA_DIR:Ljava/io/File;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->getSearchPathList([Ljava/io/File;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "g3_grammars"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/speech/embedded/Greco3DataManager;-><init>(Landroid/content/Context;Lcom/google/android/speech/embedded/Greco3Preferences;[ILcom/google/common/collect/ImmutableList;Ljava/io/File;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 97
    return-void
.end method

.method private getOutputDirForLocale(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 389
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mContext:Landroid/content/Context;

    const-string v2, "g3_models"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 390
    .local v0, "outputBase":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static varargs getSearchPathList([Ljava/io/File;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .param p0, "files"    # [Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v4, "nonNullFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object v0, p0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 576
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 577
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    invoke-static {v4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    return-object v5
.end method

.method private handleLocale(Ljava/io/File;Ljava/util/Map;)V
    .locals 3
    .param p1, "localeDataDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, "availableLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResources;>;"
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "localeName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isValidLocale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/embedded/LocaleResources;

    .line 316
    .local v1, "resources":Lcom/google/android/speech/embedded/LocaleResources;
    if-nez v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->newLocaleResources()Lcom/google/android/speech/embedded/LocaleResources;

    move-result-object v1

    .line 318
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    :cond_1
    invoke-virtual {v1, p1}, Lcom/google/android/speech/embedded/LocaleResources;->addPath(Ljava/io/File;)V

    goto :goto_0
.end method

.method private hasDictationOrGrammarResources(Lcom/google/android/speech/embedded/LocaleResources;)Z
    .locals 1
    .param p1, "resources"    # Lcom/google/android/speech/embedded/LocaleResources;

    .prologue
    .line 449
    if-eqz p1, :cond_1

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->DICTATION:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {p1, v0}, Lcom/google/android/speech/embedded/LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {p1, v0}, Lcom/google/android/speech/embedded/LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidLocale(Ljava/lang/String;)Z
    .locals 3
    .param p1, "localeName"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2d

    .line 562
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateGrammars(Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "available":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResources;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    move-object/from16 v25, v0

    sget-object v26, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v20

    .line 327
    .local v20, "locales":[Ljava/io/File;
    if-eqz v20, :cond_0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 386
    :cond_0
    return-void

    .line 331
    :cond_1
    move-object/from16 v4, v20

    .local v4, "arr$":[Ljava/io/File;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v12, v10

    .end local v4    # "arr$":[Ljava/io/File;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    .local v12, "i$":I
    :goto_0
    if-ge v12, v14, :cond_7

    aget-object v17, v4, v12

    .line 333
    .local v17, "locale":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    .line 334
    .local v18, "localeName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->isValidLocale(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 341
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/speech/embedded/LocaleResources;

    .line 342
    .local v21, "lr":Lcom/google/android/speech/embedded/LocaleResources;
    if-eqz v21, :cond_0

    .line 346
    sget-object v25, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v9

    .line 347
    .local v9, "grammars":[Ljava/io/File;
    if-eqz v9, :cond_2

    array-length v0, v9

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 331
    .end local v12    # "i$":I
    :cond_2
    add-int/lit8 v10, v12, 0x1

    .restart local v10    # "i$":I
    move v12, v10

    .end local v10    # "i$":I
    .restart local v12    # "i$":I
    goto :goto_0

    .line 351
    :cond_3
    move-object v5, v9

    .local v5, "arr$":[Ljava/io/File;
    array-length v15, v5

    .local v15, "len$":I
    const/4 v10, 0x0

    .end local v12    # "i$":I
    .restart local v10    # "i$":I
    move v11, v10

    .end local v5    # "arr$":[Ljava/io/File;
    .end local v10    # "i$":I
    .end local v15    # "len$":I
    .local v11, "i$":I
    :goto_1
    if-ge v11, v15, :cond_2

    aget-object v7, v5, v11

    .line 353
    .local v7, "grammar":Ljava/io/File;
    invoke-static {v7}, Lcom/google/android/speech/embedded/Greco3Grammar;->valueOf(Ljava/io/File;)Lcom/google/android/speech/embedded/Greco3Grammar;

    move-result-object v8

    .line 355
    .local v8, "grammarType":Lcom/google/android/speech/embedded/Greco3Grammar;
    if-nez v8, :cond_5

    .line 351
    .end local v11    # "i$":I
    :cond_4
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_1

    .line 359
    :cond_5
    sget-object v25, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v24

    .line 360
    .local v24, "revisions":[Ljava/io/File;
    if-eqz v24, :cond_4

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/embedded/Greco3DataManager;->mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Lcom/google/android/speech/embedded/Greco3Preferences;->getCompiledGrammarRevisionId(Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v23

    .line 367
    .local v23, "revisionName":Ljava/lang/String;
    move-object/from16 v6, v24

    .local v6, "arr$":[Ljava/io/File;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v10, v0, :cond_4

    aget-object v22, v6, v10

    .line 368
    .local v22, "revision":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 369
    const-string v25, "Greco3DataManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Deleting obsolete revision: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move/from16 v2, v26

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;->delete(Ljava/io/File;ZLjava/lang/Runnable;)V

    .line 367
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 372
    :cond_6
    const-string v25, "Greco3DataManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Processing current revision: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 373
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lcom/google/android/speech/embedded/LocaleResources;->addGrammar(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;)V

    goto :goto_3

    .line 379
    .end local v6    # "arr$":[Ljava/io/File;
    .end local v7    # "grammar":Ljava/io/File;
    .end local v8    # "grammarType":Lcom/google/android/speech/embedded/Greco3Grammar;
    .end local v9    # "grammars":[Ljava/io/File;
    .end local v10    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "locale":Ljava/io/File;
    .end local v18    # "localeName":Ljava/lang/String;
    .end local v21    # "lr":Lcom/google/android/speech/embedded/LocaleResources;
    .end local v22    # "revision":Ljava/io/File;
    .end local v23    # "revisionName":Ljava/lang/String;
    .end local v24    # "revisions":[Ljava/io/File;
    .restart local v12    # "i$":I
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 380
    .local v13, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/android/speech/embedded/LocaleResources;>;"
    :cond_8
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 381
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/speech/embedded/LocaleResources;

    .line 382
    .local v19, "localeResources":Lcom/google/android/speech/embedded/LocaleResources;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/speech/embedded/LocaleResources;->processAllGrammars()Z

    move-result v25

    if-nez v25, :cond_8

    .line 383
    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto :goto_4
.end method

.method private updateResources(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "availableLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResources;>;"
    iget-object v8, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSearchPaths:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 287
    .local v7, "searchPath":Ljava/io/File;
    sget-object v8, Lcom/google/android/speech/embedded/Greco3DataManager;->DIRECTORY_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 290
    .local v5, "locales":[Ljava/io/File;
    if-eqz v5, :cond_0

    .line 294
    move-object v0, v5

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 295
    .local v4, "locale":Ljava/io/File;
    invoke-direct {p0, v4, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->handleLocale(Ljava/io/File;Ljava/util/Map;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 299
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "locale":Ljava/io/File;
    .end local v5    # "locales":[Ljava/io/File;
    .end local v7    # "searchPath":Ljava/io/File;
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/speech/embedded/LocaleResources;

    .line 300
    .local v6, "resources":Lcom/google/android/speech/embedded/LocaleResources;
    invoke-virtual {v6}, Lcom/google/android/speech/embedded/LocaleResources;->processPaths()V

    goto :goto_1

    .line 302
    .end local v6    # "resources":Lcom/google/android/speech/embedded/LocaleResources;
    :cond_2
    return-void
.end method

.method private updateResourcesLocked(Z)V
    .locals 4
    .param p1, "forceUpdate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 209
    iget v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    if-lez v0, :cond_1

    if-nez p1, :cond_1

    .line 221
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 207
    goto :goto_0

    .line 213
    :cond_1
    iget v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    .line 214
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUpdateExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/speech/embedded/Greco3DataManager$1;

    const-string/jumbo v3, "update resource list"

    new-array v1, v1, [I

    invoke-direct {v2, p0, v3, v1}, Lcom/google/android/speech/embedded/Greco3DataManager$1;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;Ljava/lang/String;[I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public addInitializationCallback(Lcom/google/android/shared/util/UiRunnable;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/shared/util/UiRunnable;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUiThread:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public declared-synchronized blockingUpdateResources(Z)V
    .locals 1
    .param p1, "force"    # Z

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/google/android/shared/util/ExtraPreconditions;->checkNotMainThread()V

    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourcesLocked(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->waitForPendingUpdates()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createOuputPathForGrammarCache(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p2, "locale"    # Ljava/lang/String;

    .prologue
    .line 532
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 534
    .local v1, "localeDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/android/speech/embedded/Greco3Grammar;->getDirectoryName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 536
    .local v0, "grammarDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 537
    const/4 v0, 0x0

    .line 540
    .end local v0    # "grammarDir":Ljava/io/File;
    :cond_0
    return-object v0
.end method

.method public createOutputPathForGrammar(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "revision"    # Ljava/lang/String;

    .prologue
    .line 517
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    invoke-direct {v1, v3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 519
    .local v1, "localeDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/google/android/speech/embedded/Greco3Grammar;->getDirectoryName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    .local v0, "grammarDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 523
    .local v2, "revisionDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 524
    const/4 v2, 0x0

    .line 527
    .end local v2    # "revisionDir":Ljava/io/File;
    :cond_0
    return-object v2
.end method

.method public deleteLanguage(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "resource"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "postDelete"    # Ljava/lang/Runnable;

    .prologue
    .line 500
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager$3;

    const-string v2, "delete language"

    const/4 v1, 0x0

    new-array v3, v1, [I

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/speech/embedded/Greco3DataManager$3;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;Ljava/lang/String;[ILcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/lang/Runnable;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method

.method doLanguageDelete(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "resource"    # Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .param p2, "postDelete"    # Ljava/lang/Runnable;

    .prologue
    .line 545
    invoke-virtual {p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getOutputDirForLocale(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 546
    .local v0, "resourceDir":Ljava/io/File;
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/speech/embedded/Greco3DataManager$4;

    const-string v4, "delete language inner"

    const/4 v5, 0x0

    new-array v5, v5, [I

    invoke-direct {v3, p0, v4, v5, p2}, Lcom/google/android/speech/embedded/Greco3DataManager$4;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;Ljava/lang/String;[ILjava/lang/Runnable;)V

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;->delete(Ljava/io/File;ZLjava/lang/Runnable;)V

    .line 555
    return-void
.end method

.method protected doUpdateResourceList()Ljava/util/Map;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/speech/embedded/LocaleResources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 240
    .local v0, "availableLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResources;>;"
    invoke-direct {p0, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResources(Ljava/util/Map;)V

    .line 242
    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mCompiledGrammarRoot:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 246
    invoke-direct {p0, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateGrammars(Ljava/util/Map;)V

    .line 249
    :cond_0
    return-object v0
.end method

.method getInitializationCallbacksForTesting()Ljava/util/List;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/shared/util/UiRunnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getInstalledLanguages()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 478
    .local v1, "languages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;>;"
    monitor-enter p0

    .line 479
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isInitialized()Z

    move-result v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 480
    iget-object v4, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/speech/embedded/LocaleResources;

    .line 481
    .local v3, "resource":Lcom/google/android/speech/embedded/LocaleResources;
    invoke-virtual {v3}, Lcom/google/android/speech/embedded/LocaleResources;->getLanguageMetadata()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v2

    .line 484
    .local v2, "metadata":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v2, :cond_0

    invoke-direct {p0, v3}, Lcom/google/android/speech/embedded/Greco3DataManager;->hasDictationOrGrammarResources(Lcom/google/android/speech/embedded/LocaleResources;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getBcp47Locale()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 488
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "metadata":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .end local v3    # "resource":Lcom/google/android/speech/embedded/LocaleResources;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    return-object v1
.end method

.method public getModelsDirSupplier()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/google/android/speech/embedded/Greco3DataManager$2;

    invoke-direct {v0, p0}, Lcom/google/android/speech/embedded/Greco3DataManager$2;-><init>(Lcom/google/android/speech/embedded/Greco3DataManager;)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->memoize(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/LocaleResources;
    .locals 1
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isInitialized()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 405
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/LocaleResources;

    monitor-exit p0

    return-object v0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRevisionForGrammar(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;
    .locals 4
    .param p1, "bcp47Locale"    # Ljava/lang/String;
    .param p2, "grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;

    .prologue
    const/4 v2, 0x0

    .line 427
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/LocaleResources;

    move-result-object v1

    .line 428
    .local v1, "resources":Lcom/google/android/speech/embedded/LocaleResources;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 441
    :cond_0
    :goto_0
    return-object v0

    .line 435
    :cond_1
    iget-object v3, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mGreco3Prefs:Lcom/google/android/speech/embedded/Greco3Preferences;

    invoke-virtual {v3, p2}, Lcom/google/android/speech/embedded/Greco3Preferences;->getCompiledGrammarRevisionId(Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "grammarRevision":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v1, p2, v0}, Lcom/google/android/speech/embedded/LocaleResources;->getGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_2
    move-object v0, v2

    .line 438
    goto :goto_0
.end method

.method public hasCompiledGrammar(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;)Z
    .locals 1
    .param p1, "bcp47Locale"    # Ljava/lang/String;
    .param p2, "grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;

    .prologue
    .line 445
    invoke-virtual {p0, p1, p2}, Lcom/google/android/speech/embedded/Greco3DataManager;->getRevisionForGrammar(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Grammar;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;)Z
    .locals 2
    .param p1, "bcp47Locale"    # Ljava/lang/String;
    .param p2, "mode"    # Lcom/google/android/speech/embedded/Greco3Mode;

    .prologue
    .line 413
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/LocaleResources;

    move-result-object v0

    .line 414
    .local v0, "resources":Lcom/google/android/speech/embedded/LocaleResources;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/speech/embedded/LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasResourcesForCompilation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 418
    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->COMPILER:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->hasResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/speech/embedded/Greco3Mode;->GRAMMAR:Lcom/google/android/speech/embedded/Greco3Mode;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->hasResources(Ljava/lang/String;Lcom/google/android/speech/embedded/Greco3Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initialize()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/speech/embedded/Greco3DataManager;->updateResourcesLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize(Lcom/google/android/shared/util/UiRunnable;)V
    .locals 1
    .param p1, "callback"    # Lcom/google/android/shared/util/UiRunnable;

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->addInitializationCallback(Lcom/google/android/shared/util/UiRunnable;)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 1

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method public isInstalledInSystemPartition(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/LocaleResources;

    move-result-object v0

    .line 459
    .local v0, "resources":Lcom/google/android/speech/embedded/LocaleResources;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/speech/embedded/LocaleResources;->isInstalledInSystemPartition()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsingDownloadedData(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bcp47Locale"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Lcom/google/android/speech/embedded/Greco3DataManager;->getResources(Ljava/lang/String;)Lcom/google/android/speech/embedded/LocaleResources;

    move-result-object v0

    .line 468
    .local v0, "resources":Lcom/google/android/speech/embedded/LocaleResources;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/speech/embedded/LocaleResources;->isUsingDownloadedData()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newLocaleResources()Lcom/google/android/speech/embedded/LocaleResources;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 306
    new-instance v0, Lcom/google/android/speech/embedded/LocaleResources;

    iget-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mSupportedFormatVersions:[I

    invoke-direct {v0, v1}, Lcom/google/android/speech/embedded/LocaleResources;-><init>([I)V

    return-object v0
.end method

.method public setPathDeleter(Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;)V
    .locals 0
    .param p1, "deleter"    # Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mPathDeleter:Lcom/google/android/speech/embedded/Greco3DataManager$PathDeleter;

    .line 122
    return-void
.end method

.method updateResourceListAndNotifyCallback()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/google/android/speech/embedded/Greco3DataManager;->doUpdateResourceList()Ljava/util/Map;

    move-result-object v1

    .line 257
    .local v1, "availableLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/speech/embedded/LocaleResources;>;"
    const-string v9, "Greco3DataManager"

    const-string v11, "Language packs updated."

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 258
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 259
    .local v7, "s":Ljava/lang/String;
    const-string v9, "Greco3DataManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Language: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v9, v11, v12}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 260
    const-string v11, "Greco3DataManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Active path: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/speech/embedded/LocaleResources;

    invoke-virtual {v9}, Lcom/google/android/speech/embedded/LocaleResources;->getResourcePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v11, v9, v12}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Lcom/google/android/speech/embedded/Greco3Mode;->values()[Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v0

    .local v0, "arr$":[Lcom/google/android/speech/embedded/Greco3Mode;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v8, v0, v5

    .line 262
    .local v8, "type":Lcom/google/android/speech/embedded/Greco3Mode;
    const-string v11, "Greco3DataManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/speech/embedded/LocaleResources;

    invoke-virtual {v9, v8}, Lcom/google/android/speech/embedded/LocaleResources;->getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v11, v9, v12}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 267
    .end local v0    # "arr$":[Lcom/google/android/speech/embedded/Greco3Mode;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "type":Lcom/google/android/speech/embedded/Greco3Mode;
    :cond_1
    iget-object v9, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-static {v9}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 269
    .local v3, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/shared/util/UiRunnable;>;"
    monitor-enter p0

    .line 270
    :try_start_0
    iput-object v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mAvailableLanguages:Ljava/util/Map;

    .line 271
    iget-object v9, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mInitializationCallbacks:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 272
    iget v9, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    .line 275
    iget v9, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I

    if-ltz v9, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 276
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 277
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/shared/util/UiRunnable;

    .line 280
    .local v2, "callback":Lcom/google/android/shared/util/UiRunnable;
    iget-object v9, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mUiThread:Ljava/util/concurrent/Executor;

    invoke-interface {v9, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .end local v2    # "callback":Lcom/google/android/shared/util/UiRunnable;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    move v9, v10

    .line 275
    goto :goto_1

    .line 277
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 282
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method protected declared-synchronized waitForPendingUpdates()V
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 185
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/speech/embedded/Greco3DataManager;->mNumUpdatesInProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 187
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "ie":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 190
    const-string v1, "Greco3DataManager"

    const-string v2, "Interrupted waiting for resource update."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 193
    :cond_0
    monitor-exit p0

    return-void
.end method
