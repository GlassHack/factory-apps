.class public Lcom/google/android/speech/embedded/LocaleResources;
.super Ljava/lang/Object;
.source "LocaleResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;
    }
.end annotation


# static fields
.field private static final HOTWORD_PROMPT_FILE_NAME:Ljava/lang/String; = "hotword_prompt.txt"

.field public static final METADATA_FILE_NAME:Ljava/lang/String; = "metadata"

.field private static final TAG:Ljava/lang/String; = "LocaleResources"


# instance fields
.field private final mConfigPaths:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/speech/embedded/Greco3Mode;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGrammars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHotwordPrompt:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mResourceAbsolutePath:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mSupportedFormatVersions:[I

.field private mSystemPartition:Z

.field protected final mUnprocessedGrammars:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnprocessedPaths:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([I)V
    .locals 1
    .param p1, "supportedFormatVersions"    # [I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/google/android/speech/embedded/LocaleResources;->mSupportedFormatVersions:[I

    .line 53
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedPaths:Ljava/util/List;

    .line 54
    sget v0, Lcom/google/android/speech/embedded/Greco3Grammar;->SIZE:I

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedGrammars:Ljava/util/List;

    .line 55
    sget v0, Lcom/google/android/speech/embedded/Greco3Grammar;->SIZE:I

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mGrammars:Ljava/util/List;

    .line 57
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mConfigPaths:Ljava/util/Map;

    .line 58
    return-void
.end method


# virtual methods
.method addGrammar(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;)V
    .locals 5
    .param p1, "grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p2, "revisionName"    # Ljava/lang/String;
    .param p3, "directory"    # Ljava/io/File;

    .prologue
    .line 179
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mGrammars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "Grammars have already been processed, cannot add another."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 181
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 184
    .local v0, "grammarResources":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v2, v0

    sget v3, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->NUM_GENERATED_FILES:I

    if-ge v2, v3, :cond_2

    .line 186
    :cond_0
    const-string v2, "LocaleResources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/google/android/speech/embedded/Greco3GrammarCompiler;->NUM_GENERATED_FILES:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " files in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 196
    :cond_1
    :goto_0
    return-void

    .line 191
    :cond_2
    invoke-virtual {p0, p3}, Lcom/google/android/speech/embedded/LocaleResources;->parseMetadata(Ljava/io/File;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v1

    .line 192
    .local v1, "languagePack":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-eqz v1, :cond_1

    .line 193
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedGrammars:Ljava/util/List;

    new-instance v3, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;-><init>(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;Ljava/io/File;Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addHotwordPrompt(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v5, 0x64

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "prompt":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 223
    iput-object v3, p0, Lcom/google/android/speech/embedded/LocaleResources;->mHotwordPrompt:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :cond_0
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 232
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "prompt":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    const-string v4, "LocaleResources"

    const-string v5, "Could not open hotword prompt file."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v2, v5, v6}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 227
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 228
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "LocaleResources"

    const-string v5, "Could not read hotword prompt file."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v2, v5, v6}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 227
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 225
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public addPath(Ljava/io/File;)V
    .locals 2
    .param p1, "localeDataDir"    # Ljava/io/File;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Paths have already been processed, cannot add a new path."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedPaths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigFile(Lcom/google/android/speech/embedded/Greco3Mode;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Lcom/google/android/speech/embedded/Greco3Mode;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mConfigPaths:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getGrammarPath(Lcom/google/android/speech/embedded/Greco3Grammar;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "grammar"    # Lcom/google/android/speech/embedded/Greco3Grammar;
    .param p2, "revisionName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mGrammars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;

    .line 85
    .local v1, "info":Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;
    iget-object v2, v1, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->grammar:Lcom/google/android/speech/embedded/Greco3Grammar;

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->revisionName:Ljava/lang/String;

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, v1, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->directory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 89
    .end local v1    # "info":Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHotwordPrompt()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mHotwordPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageMetadata()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mResourceAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public isInstalledInSystemPartition()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mSystemPartition:Z

    return v0
.end method

.method public isUsingDownloadedData()Z
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/speech/embedded/LocaleResources;->mResourceAbsolutePath:Ljava/lang/String;

    const-string v1, "g3_models"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseMetadata(Ljava/io/File;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .locals 6
    .param p1, "directory"    # Ljava/io/File;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 242
    new-instance v4, Ljava/io/File;

    const-string v5, "metadata"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v4, "metadataFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 244
    .local v3, "metadata":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    const/4 v0, 0x0

    .line 246
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;-><init>()V

    invoke-static {v5, v1}, Lcom/google/android/shared/util/ProtoUtils;->mergeFromInputStream(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;Ljava/io/InputStream;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v5

    check-cast v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 251
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "ioe":Ljava/io/IOException;
    :goto_1
    const/4 v5, 0x0

    .line 251
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_2
    invoke-static {v0}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 248
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method processAllGrammars()Z
    .locals 4

    .prologue
    .line 199
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mConfigPaths:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedGrammars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;

    .line 203
    .local v0, "gi":Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;
    iget-object v2, v0, Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;->metadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v2}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v3}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getLanguagePackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mGrammars:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    .end local v0    # "gi":Lcom/google/android/speech/embedded/LocaleResources$GrammarInfo;
    :cond_1
    iget-object v2, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedGrammars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 210
    const/4 v2, 0x1

    .line 213
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public processPaths()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 122
    iget-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedPaths:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 123
    const-string v10, "LocaleResources"

    const-string v11, "No paths have been added, cannot process."

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/4 v7, 0x0

    .line 128
    .local v7, "resourceDirectory":Ljava/io/File;
    sget-object v10, Lcom/google/android/speech/embedded/Greco3DataManager;->SYSTEM_DATA_DIR:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, "systemDirString":Ljava/lang/String;
    iget-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedPaths:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 131
    .local v6, "path":Ljava/io/File;
    invoke-virtual {p0, v6}, Lcom/google/android/speech/embedded/LocaleResources;->parseMetadata(Ljava/io/File;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    move-result-object v5

    .line 132
    .local v5, "metadata":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    if-nez v5, :cond_3

    .line 133
    const-string v10, "LocaleResources"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unparsable metadata at: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    :cond_3
    iget-boolean v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mSystemPartition:Z

    if-nez v10, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 138
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mSystemPartition:Z

    .line 147
    :cond_4
    iget-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mSupportedFormatVersions:[I

    const v11, 0x7fffffff

    invoke-static {v5, v10, v11}, Lcom/google/android/speech/embedded/LanguagePackUtils;->isCompatible(Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;[II)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 149
    iget-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-eqz v10, :cond_5

    invoke-virtual {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v10

    iget-object v11, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    invoke-virtual {v11}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;->getVersion()I

    move-result v11

    if-le v10, v11, :cond_2

    .line 151
    :cond_5
    move-object v7, v6

    .line 152
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mResourceAbsolutePath:Ljava/lang/String;

    .line 153
    iput-object v5, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    goto :goto_1

    .line 158
    .end local v5    # "metadata":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
    .end local v6    # "path":Ljava/io/File;
    :cond_6
    iget-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mUnprocessedPaths:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 160
    iget-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mLanguagePackMetadata:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;

    if-nez v10, :cond_7

    .line 161
    const-string v10, "LocaleResources"

    const-string v11, "No compatible language pack metadata found."

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/shared/util/L;->e(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 165
    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 166
    .local v2, "fileList":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 167
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 168
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/google/android/speech/embedded/Greco3Mode;->valueOf(Ljava/io/File;)Lcom/google/android/speech/embedded/Greco3Mode;

    move-result-object v9

    .line 169
    .local v9, "type":Lcom/google/android/speech/embedded/Greco3Mode;
    if-eqz v9, :cond_9

    .line 170
    iget-object v10, p0, Lcom/google/android/speech/embedded/LocaleResources;->mConfigPaths:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    :cond_9
    const-string v10, "hotword_prompt.txt"

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 172
    invoke-virtual {p0, v1}, Lcom/google/android/speech/embedded/LocaleResources;->addHotwordPrompt(Ljava/io/File;)V

    goto :goto_3
.end method
