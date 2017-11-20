.class public abstract Lcom/google/glass/voice/embedded/EmbeddedRecognizer;
.super Ljava/lang/Object;
.source "EmbeddedRecognizer.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# static fields
.field public static final DEFAULT_LOCALE:Ljava/util/Locale;

.field protected static final GRECO_FILES_DIR:Ljava/lang/String; = "greco"

.field private static grecoDirectory:Ljava/io/File;

.field private static grecoLocale:Ljava/util/Locale;

.field private static final hotwordLocaleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 22
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->hotwordLocaleMap:Landroid/util/ArrayMap;

    .line 25
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->hotwordLocaleMap:Landroid/util/ArrayMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->hotwordLocaleMap:Landroid/util/ArrayMap;

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->hotwordLocaleMap:Landroid/util/ArrayMap;

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    sget-object v2, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 33
    sput-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoDirectory:Ljava/io/File;

    .line 34
    sput-object v3, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->getHotwordLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->maybeExtractAssets(Landroid/content/Context;Ljava/util/Locale;)V

    .line 38
    return-void
.end method

.method private static final getAssetsDir(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 79
    invoke-static {p0}, Lcom/google/glass/util/LocaleFormat;->formatBcp47(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized maybeExtractAssets(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentLocale"    # Ljava/util/Locale;

    .prologue
    .line 54
    const-class v7, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoDirectory:Ljava/io/File;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoLocale:Ljava/util/Locale;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 76
    :cond_0
    monitor-exit v7

    return-void

    .line 59
    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->getAssetsDir(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "assetsDirectory":Ljava/lang/String;
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v8, "Extracting greco assets. [files_dir=%s to assets_dir=%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    .line 60
    invoke-interface {v6, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 63
    .local v5, "mgr":Landroid/content/res/AssetManager;
    invoke-virtual {v5, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "list":[Ljava/lang/String;
    sput-object p1, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoLocale:Ljava/util/Locale;

    .line 66
    new-instance v6, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v6, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoDirectory:Ljava/io/File;

    .line 67
    sget-object v6, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoDirectory:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 69
    array-length v8, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v4, v6

    .line 70
    .local v3, "file":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    sget-object v10, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoDirectory:Ljava/io/File;

    invoke-direct {v9, v10, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v10, 0x0

    new-array v10, v10, [Lcom/google/common/io/FileWriteMode;

    invoke-static {v9, v10}, Lcom/google/common/io/Files;->asByteSink(Ljava/io/File;[Lcom/google/common/io/FileWriteMode;)Lcom/google/common/io/ByteSink;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 71
    invoke-virtual {v5, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/common/io/ByteSink;->writeFrom(Ljava/io/InputStream;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "assetsDirectory":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "list":[Ljava/lang/String;
    .end local v5    # "mgr":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method


# virtual methods
.method protected getGrecoDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->grecoDirectory:Ljava/io/File;

    return-object v0
.end method

.method protected getHotwordLocale()Ljava/util/Locale;
    .locals 8

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 88
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->hotwordLocaleMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 90
    .local v0, "hotwordLocale":Ljava/util/Locale;
    if-nez v0, :cond_0

    .line 91
    sget-object v0, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 94
    :cond_0
    sget-object v2, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " maps to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return-object v0
.end method

.method protected varargs getPath([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "pathComponents"    # [Ljava/lang/String;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;->getGrecoDirectory()Ljava/io/File;

    move-result-object v1

    .line 46
    .local v1, "file":Ljava/io/File;
    array-length v4, p1

    const/4 v3, 0x0

    move-object v2, v1

    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, p1, v3

    .line 47
    .local v0, "component":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_0

    .line 49
    .end local v0    # "component":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
