.class public Lcom/google/glass/sync/StylesheetProvider;
.super Landroid/content/ContentProvider;
.source "StylesheetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/sync/StylesheetProvider$1;,
        Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;
    }
.end annotation


# static fields
.field private static final CODE_OK:I = 0x1

.field private static final DIRECTORY:Ljava/lang/String; = "stylesheets"

.field public static final FALLBACK_FINGERPRINT:I = 0x4d2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final FINGERPRINT_FILENAME:Ljava/lang/String; = "base_style_kitkat_1.css.fingerprint"

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private baseDir:Ljava/io/File;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private stylesheetFingerprint:J

.field private stylesheetString:Ljava/lang/String;

.field private final writeLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/glass/sync/StylesheetProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 53
    sget-object v0, Lcom/google/glass/sync/StylesheetProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.glass.sync"

    const-string v2, "stylesheet"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 31
    const-string v0, "glass_sync"

    .line 32
    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/glass/sync/StylesheetProvider;->writeLock:Ljava/util/concurrent/locks/Lock;

    .line 176
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/sync/StylesheetProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/sync/StylesheetProvider;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/sync/StylesheetProvider;->loadStylesheet()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/sync/StylesheetProvider;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/StylesheetProvider;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/sync/StylesheetProvider;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/sync/StylesheetProvider;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetFingerprint:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/glass/sync/StylesheetProvider;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/sync/StylesheetProvider;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private getStylesheetFromAssets()Ljava/lang/String;
    .locals 7

    .prologue
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/google/glass/sync/StylesheetProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "base_style_kitkat_1.css"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 130
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/google/glass/sync/StylesheetProvider;->loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Error getting %s file from assets."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "base_style_kitkat_1.css"

    aput-object v6, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private declared-synchronized loadStylesheet()V
    .locals 9

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 152
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    const-string v4, "base_style_kitkat_1.css"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .local v2, "stylesheetFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    const-string v4, "base_style_kitkat_1.css.fingerprint"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 157
    .local v1, "fingerprintFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/google/glass/sync/StylesheetProvider;->getStylesheetFromAssets()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const-wide/16 v4, 0x4d2

    invoke-direct {p0, v3, v4, v5}, Lcom/google/glass/sync/StylesheetProvider;->writeStylesheet([BJ)V

    .line 160
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Stylesheet loaded from assets, stylesheet size:%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 148
    .end local v1    # "fingerprintFile":Ljava/io/File;
    .end local v2    # "stylesheetFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 165
    .restart local v1    # "fingerprintFile":Ljava/io/File;
    .restart local v2    # "stylesheetFile":Ljava/io/File;
    :cond_1
    :try_start_2
    sget-object v3, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lcom/google/common/io/Files;->toString(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    .line 166
    invoke-static {v1}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/primitives/Longs;->fromByteArray([B)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetFingerprint:J

    .line 167
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Stylesheet loaded with fingerprint: %#X, stylesheet size:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v7, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetFingerprint:J

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 167
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    :try_start_3
    iput-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    .line 171
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetFingerprint:J

    .line 172
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Stylesheet cannot be loaded: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized writeStylesheet([BJ)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "fingerprint"    # J

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 104
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unable to create directory: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    :try_start_1
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :goto_0
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    const-string v4, "base_style_kitkat_1.css"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v2, "stylesheetFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    const-string v4, "base_style_kitkat_1.css.fingerprint"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v1, "fingerprintFile":Ljava/io/File;
    invoke-static {p1, v2}, Lcom/google/common/io/Files;->write([BLjava/io/File;)V

    .line 114
    invoke-static {p2, p3}, Lcom/google/common/primitives/Longs;->toByteArray(J)[B

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/common/io/Files;->write([BLjava/io/File;)V

    .line 115
    iput-wide p2, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetFingerprint:J

    .line 116
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    .line 117
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Stylesheet written with fingerprint: %#X, stylesheet size:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/google/glass/sync/StylesheetProvider;->stylesheetString:Ljava/lang/String;

    .line 118
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 117
    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :try_start_3
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 99
    .end local v1    # "fingerprintFile":Ljava/io/File;
    .end local v2    # "stylesheetFile":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error writing to cache"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 122
    :try_start_5
    iget-object v3, p0, Lcom/google/glass/sync/StylesheetProvider;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    iget-object v4, p0, Lcom/google/glass/sync/StylesheetProvider;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 79
    sget-object v0, Lcom/google/glass/sync/StylesheetProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 80
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 81
    const-string v0, "stylesheet_blob"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "stylesheet_fingerprint"

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 81
    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/sync/StylesheetProvider;->writeStylesheet([BJ)V

    .line 84
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/glass/io/InputStreamUtils;->readFully(Ljava/io/InputStream;)[B

    move-result-object v2

    const-string v3, "UTF8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-object v1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/google/glass/sync/StylesheetProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Error reading from a text file."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/glass/sync/StylesheetProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "stylesheets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/sync/StylesheetProvider;->baseDir:Ljava/io/File;

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 66
    sget-object v0, Lcom/google/glass/sync/StylesheetProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 67
    new-instance v0, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;

    invoke-direct {v0, p0, v1}, Lcom/google/glass/sync/StylesheetProvider$StylesheetFileCursor;-><init>(Lcom/google/glass/sync/StylesheetProvider;Lcom/google/glass/sync/StylesheetProvider$1;)V

    .line 69
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method
