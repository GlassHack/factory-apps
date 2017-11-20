.class public Lcom/google/glass/util/IconProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MAX_MEMORY_CACHE_ENTRIES:I = 0x10

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final height:I

.field private final loaders:Ljava/util/Map;

.field private final memoryCache:Landroid/util/LruCache;

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

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/util/IconProvider;Lcom/google/glass/util/IconProvider$Loader;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->onLoaderDone(Lcom/google/glass/util/IconProvider$Loader;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/util/IconProvider;)Landroid/content/Context;
    .locals 1

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

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/util/IconProvider;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/glass/util/IconProvider;->width:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/util/IconProvider;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/glass/util/IconProvider;->height:I

    return v0
.end method

.method public static buildDrawableUri(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 320
    const-string v1, "android.resource://"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private download(Ljava/lang/String;)[B
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 276
    sget-object v0, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Downloading: %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 281
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/io/m;->a(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    .line 292
    :cond_1
    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 285
    :goto_1
    :try_start_2
    sget-object v3, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "IOException downloading: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 292
    if-eqz v2, :cond_3

    .line 293
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move-object v0, v1

    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 289
    :goto_2
    :try_start_3
    sget-object v3, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "URI was invalid: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 292
    if-eqz v2, :cond_4

    .line 293
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v0, v1

    goto :goto_0

    .line 292
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    if-eqz v2, :cond_5

    .line 293
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 292
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 287
    :catch_2
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_2

    .line 284
    :catch_3
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 299
    const-wide/16 v1, 0x0

    .line 300
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 301
    const-wide/16 v3, 0x1f

    mul-long/2addr v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 300
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 231
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/FileType;->ICON:Lcom/google/glass/util/FileType;

    .line 232
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/glass/util/IconProvider$1;

    invoke-direct {v3, p0}, Lcom/google/glass/util/IconProvider$1;-><init>(Lcom/google/glass/util/IconProvider;)V

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->load(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/CachedFilesManager$Loader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 240
    if-eqz v0, :cond_0

    .line 241
    sget-object v1, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Loaded from disk cache: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    move-object v0, v1

    .line 247
    :goto_0
    return-object v0

    .line 246
    :cond_0
    sget-object v0, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to load from cached files manager: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFromNetwork(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 262
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->download(Ljava/lang/String;)[B

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 264
    :cond_0
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 266
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/glass/util/IconProvider;->writeToDiskCache(Ljava/lang/String;[B)V

    .line 272
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->loadFromDiskCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private onLoaderDone(Lcom/google/glass/util/IconProvider$Loader;)V
    .locals 2

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
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 253
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager;->getSharedInstance()Lcom/google/glass/util/CachedFilesManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/util/FileType;->ICON:Lcom/google/glass/util/FileType;

    .line 254
    invoke-direct {p0, p1}, Lcom/google/glass/util/IconProvider;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/google/glass/util/FileSaver;->newSaver([B)Lcom/google/glass/util/FileSaver$Saver;

    move-result-object v3

    .line 253
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager;->save(Lcom/google/glass/util/FileType;Ljava/lang/String;Lcom/google/glass/util/FileSaver$Saver;)Z

    move-result v0

    .line 255
    if-nez v0, :cond_0

    .line 256
    sget-object v0, Lcom/google/glass/util/IconProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unable to write to cached files manager: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 203
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 206
    :cond_0
    const/4 v0, 0x0

    .line 226
    :cond_1
    :goto_0
    return-object v0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->memoryCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 211
    if-nez v0, :cond_1

    .line 216
    new-instance v1, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;

    iget v0, p0, Lcom/google/glass/util/IconProvider;->width:I

    iget v2, p0, Lcom/google/glass/util/IconProvider;->height:I

    invoke-direct {v1, v0, v2}, Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;-><init>(II)V

    .line 217
    iget-object v0, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/IconProvider$Loader;

    .line 218
    if-nez v0, :cond_3

    .line 219
    new-instance v0, Lcom/google/glass/util/IconProvider$Loader;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/IconProvider$Loader;-><init>(Lcom/google/glass/util/IconProvider;Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/google/glass/util/IconProvider;->loaders:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v0, v1}, Lcom/google/glass/util/IconProvider$Loader;->addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V

    .line 222
    invoke-virtual {v0}, Lcom/google/glass/util/IconProvider$Loader;->startLoad()V

    :goto_1
    move-object v0, v1

    .line 226
    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v0, v1}, Lcom/google/glass/util/IconProvider$Loader;->addListener(Lcom/google/glass/util/IconProvider$BackgroundLoadDrawable;)V

    goto :goto_1
.end method
