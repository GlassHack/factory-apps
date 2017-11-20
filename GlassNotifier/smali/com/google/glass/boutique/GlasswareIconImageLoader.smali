.class public Lcom/google/glass/boutique/GlasswareIconImageLoader;
.super Ljava/lang/Object;
.source "GlasswareIconImageLoader.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private glassware:Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/GlasswareIconImageLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;)V
    .locals 0
    .param p1, "glassware"    # Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/google/glass/predicates/Assert;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/google/glass/boutique/GlasswareIconImageLoader;->glassware:Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    .line 30
    return-void
.end method

.method static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "uri"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 116
    const-wide/16 v0, 0x0

    .line 117
    .local v0, "hash":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 118
    const-wide/16 v4, 0x1f

    mul-long/2addr v4, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v6, v3

    add-long v0, v4, v6

    .line 117
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 56
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 57
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/io/FileType;->ICON:Lcom/google/glass/io/FileType;

    .line 62
    invoke-static {p0}, Lcom/google/glass/boutique/GlasswareIconImageLoader;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/glass/boutique/GlasswareIconImageLoader$1;

    invoke-direct {v4}, Lcom/google/glass/boutique/GlasswareIconImageLoader$1;-><init>()V

    .line 61
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/io/CachedFilesManager;->load(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 70
    .local v0, "drawable":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 71
    invoke-static {p0}, Lcom/google/glass/boutique/GlasswareIconImageLoader;->loadImageFromInternetAndCacheOnDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/google/glass/boutique/GlasswareIconImageLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bitmap loaded from Internet: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_1
    sget-object v1, Lcom/google/glass/boutique/GlasswareIconImageLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Bitmap loaded from disk: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static loadImageFromInternetAndCacheOnDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 87
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 88
    sget-object v5, Lcom/google/glass/boutique/GlasswareIconImageLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Fetching icon from %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p0, v7, v9

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    .line 94
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/google/glass/io/InputStreamUtils;->readFully(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    .local v0, "bitmapBytes":[B
    invoke-static {}, Lcom/google/glass/io/CachedFilesManager;->getSharedInstance()Lcom/google/glass/io/CachedFilesManager;

    move-result-object v5

    sget-object v6, Lcom/google/glass/io/FileType;->ICON:Lcom/google/glass/io/FileType;

    invoke-static {p0}, Lcom/google/glass/boutique/GlasswareIconImageLoader;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-static {v0}, Lcom/google/glass/io/FileSaver;->newSaver([B)Lcom/google/glass/io/FileSaver$Saver;

    move-result-object v8

    .line 101
    invoke-virtual {v5, v6, v7, v8}, Lcom/google/glass/io/CachedFilesManager;->save(Lcom/google/glass/io/FileType;Ljava/lang/String;Lcom/google/glass/io/FileSaver$Saver;)Z

    move-result v4

    .line 103
    .local v4, "success":Z
    if-eqz v4, :cond_0

    .line 104
    sget-object v5, Lcom/google/glass/boutique/GlasswareIconImageLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Icon stored on disk."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 111
    .local v1, "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .end local v0    # "bitmapBytes":[B
    .end local v1    # "byteArrayInputStream":Ljava/io/ByteArrayInputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "success":Z
    :goto_1
    return-object v5

    .line 95
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/google/glass/boutique/GlasswareIconImageLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error when fetching icon from %s"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p0, v7, v9

    invoke-interface {v5, v2, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v5, 0x0

    goto :goto_1

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmapBytes":[B
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "success":Z
    :cond_0
    sget-object v5, Lcom/google/glass/boutique/GlasswareIconImageLoader;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Icon failed to store on disk."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public loadLargeColorIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareIconImageLoader;->glassware:Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->getColorIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareIconImageLoader;->glassware:Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->getColorIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareIconImageLoader;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public loadLargeWhiteIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareIconImageLoader;->glassware:Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/glass/boutique/GlasswareIconImageLoader;->glassware:Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;

    invoke-virtual {v0}, Lcom/google/googlex/glass/common/proto/nano/InstalledGlassware;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/boutique/GlasswareIconImageLoader;->loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
