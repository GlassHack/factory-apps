.class public Lcom/google/glass/util/IconProvider;
.super Ljava/lang/Object;
.source "IconProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/IconProvider$Loader;,
        Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;
    }
.end annotation


# static fields
.field private static final MAX_MEMORY_CACHE_ENTRIES:I = 0x10

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final height:I

.field private final loaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/glass/util/IconProvider$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private final memoryCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 184
    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/util/IconProvider;-><init>(Landroid/content/Context;II)V

    .line 186
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/Map;

    .line 189
    iput-object p1, p0, Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;

    .line 190
    iput p2, p0, Lcom/google/glass/util/IconProvider;->width:I

    .line 191
    iput p3, p0, Lcom/google/glass/util/IconProvider;->height:I

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/util/IconProvider;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/IconProvider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/IconProvider;Lcom/google/glass/util/IconProvider$Loader;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/util/IconProvider;
    .param p1, "x1"    # Lcom/google/glass/util/IconProvider$Loader;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->onLoaderDone(Lcom/google/glass/util/IconProvider$Loader;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/util/IconProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/IconProvider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/IconProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/IconProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/util/IconProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/IconProvider;

    .prologue
    .line 34
    iget v0, p0, Lcom/google/glass/util/IconProvider;->width:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/util/IconProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/util/IconProvider;

    .prologue
    .line 34
    iget v0, p0, Lcom/google/glass/util/IconProvider;->height:I

    return v0
.end method

.method public static buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "android.resource://"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private download(Ljava/lang/String;)[B
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 276
    sget-object v3, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Downloading: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 280
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_1

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 292
    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    :goto_0
    return-object v3

    .line 292
    :cond_1
    if-eqz v1, :cond_2

    .line 293
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v3, v4

    goto :goto_0

    .line 284
    :catch_0
    move-exception v2

    .line 285
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v3, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "IOException downloading: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v3, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    if-eqz v1, :cond_3

    .line 293
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v3, v4

    goto :goto_0

    .line 287
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 289
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    sget-object v3, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "URI was invalid: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v3, v2, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    if-eqz v1, :cond_4

    .line 293
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v3, v4

    goto :goto_0

    .line 292
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_5

    .line 293
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v3
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 299
    const-wide/16 v0, 0x0

    .line 300
    .local v0, "hash":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 301
    const-wide/16 v3, 0x1f

    mul-long/2addr v3, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 230
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 231
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/util/FileType;->ICON:Lcom/google/glass/util/FileType;

    .line 232
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/glass/util/IconProvider$1;

    invoke-direct {v5, p0}, Lcom/google/glass/util/IconProvider$1;-><init>(Lcom/google/glass/util/IconProvider;)V

    .line 231
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/glass/util/CachedFilesManager;->load(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 240
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 241
    sget-object v2, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Loaded from disk cache: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v1, "d":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 247
    .end local v1    # "d":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v1

    .line 246
    :cond_0
    sget-object v2, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unable to load from cached files manager: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 262
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->download(Ljava/lang/String;)[B

    move-result-object v0

    .line 263
    .local v0, "data":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 264
    :cond_0
    const/4 v1, 0x0

    .line 272
    :goto_0
    return-object v1

    .line 266
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/IconProvider;->writeToDiskCache(Ljava/lang/String;[B)V

    .line 272
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method private onLoaderDone(Lcom/google/glass/util/IconProvider$Loader;)V
    .locals 2
    .param p1, "loader"    # Lcom/google/glass/util/IconProvider$Loader;

    .prologue
    .line 307
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 308
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/glass/util/IconProvider$Loader;->uri:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method private writeToDiskCache(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 252
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 253
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v1

    sget-object v2, Lcom/google/glass/util/FileType;->ICON:Lcom/google/glass/util/FileType;

    .line 254
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v4

    .line 253
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    .line 255
    .local v0, "saved":Z
    if-nez v0, :cond_0

    .line 256
    sget-object v1, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unable to write to cached files manager: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "iconUri"    # Ljava/lang/String;

    .prologue
    .line 203
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 226
    :cond_1
    :goto_0
    return-object v0

    .line 210
    :cond_2
    iget-object v3, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 211
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 216
    new-instance v2, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;

    iget v3, p0, Lcom/google/glass/util/IconProvider;->width:I

    iget v4, p0, Lcom/google/glass/util/IconProvider;->height:I

    invoke-direct {v2, v3, v4}, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;-><init>(II)V

    .line 217
    .local v2, "result":Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;
    iget-object v3, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/util/IconProvider$Loader;

    .line 218
    .local v1, "loader":Lcom/google/glass/util/IconProvider$Loader;
    if-nez v1, :cond_3

    .line 219
    new-instance v1, Lcom/google/glass/util/IconProvider$Loader;

    .end local v1    # "loader":Lcom/google/glass/util/IconProvider$Loader;
    invoke-direct {v1, p0, p1}, Lcom/google/glass/util/IconProvider$Loader;-><init>(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)V

    .line 220
    .restart local v1    # "loader":Lcom/google/glass/util/IconProvider$Loader;
    iget-object v3, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider$Loader;->addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V

    .line 222
    invoke-virtual {v1}, Lcom/google/glass/util/IconProvider$Loader;->startLoad()V

    :goto_1
    move-object v0, v2

    .line 226
    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v1, v2}, Lcom/google/glass/util/IconProvider$Loader;->addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V

    goto :goto_1
.end method
