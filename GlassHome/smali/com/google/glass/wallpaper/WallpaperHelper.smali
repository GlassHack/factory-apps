.class public Lcom/google/glass/wallpaper/WallpaperHelper;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/wallpaper/WallpaperHelper$1;,
        Lcom/google/glass/wallpaper/WallpaperHelper$Provider;,
        Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;,
        Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
    }
.end annotation


# static fields
.field private static final BITMAP:Ljava/lang/String; = "bitmap"

.field public static final MIME_TYPE:Ljava/lang/String; = "image/jpeg"

.field private static final WALLPAPER_BYTES:Ljava/lang/String; = "wallpaper_bytes"

.field private static final WALLPAPER_DIRECTORY:Ljava/io/File;

.field private static final WALLPAPER_FILE:Ljava/io/File;

.field private static final WALLPAPER_HASH_CODE:Ljava/lang/String; = "wallpaper_hash_code"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final uiHandler:Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

.field private final wallpaperHelperHandler:Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    new-instance v0, Ljava/io/File;

    .line 39
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/WallpaperDirectory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->WALLPAPER_DIRECTORY:Ljava/io/File;

    .line 40
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/google/glass/wallpaper/WallpaperHelper;->WALLPAPER_DIRECTORY:Ljava/io/File;

    const-string v2, "wallpaper"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->WALLPAPER_FILE:Ljava/io/File;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0, v0}, Lcom/google/glass/wallpaper/WallpaperHelper;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/wallpaper/WallpaperHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper$1;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/wallpaper/WallpaperHelper;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "Wallpaper Thread"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 56
    .local v6, "wallpaperHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance v0, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    invoke-direct {v0, v5}, Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;-><init>(Lcom/google/glass/wallpaper/WallpaperHelper$1;)V

    iput-object v0, p0, Lcom/google/glass/wallpaper/WallpaperHelper;->uiHandler:Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    .line 58
    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 59
    .local v2, "wallpaperLooper":Landroid/os/Looper;
    new-instance v0, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;-><init>(Lcom/google/glass/wallpaper/WallpaperHelper;Landroid/os/Looper;Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/google/glass/wallpaper/WallpaperHelper$1;)V

    iput-object v0, p0, Lcom/google/glass/wallpaper/WallpaperHelper;->wallpaperHelperHandler:Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;

    .line 61
    return-void
.end method

.method static synthetic access$1000()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->WALLPAPER_DIRECTORY:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500()Ljava/io/File;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->WALLPAPER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/wallpaper/WallpaperHelper;)Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/wallpaper/WallpaperHelper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/wallpaper/WallpaperHelper;->uiHandler:Lcom/google/glass/wallpaper/WallpaperHelper$UiHandler;

    return-object v0
.end method


# virtual methods
.method public getWallpaperInfo(Lcom/google/glass/wallpaper/WallpaperInfoCallback;)V
    .locals 1
    .param p1, "wallpaperInfoCallback"    # Lcom/google/glass/wallpaper/WallpaperInfoCallback;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/glass/wallpaper/WallpaperHelper;->wallpaperHelperHandler:Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;

    invoke-static {v0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->access$400(Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;Lcom/google/glass/wallpaper/WallpaperInfoCallback;)V

    .line 93
    return-void
.end method

.method public loadWallpaper(Lcom/google/glass/wallpaper/WallpaperCallback;)V
    .locals 3
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;

    .prologue
    .line 70
    sget-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Loading wallpaper"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/google/glass/wallpaper/WallpaperHelper;->wallpaperHelperHandler:Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;

    invoke-static {v0, p1}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->access$200(Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;Lcom/google/glass/wallpaper/WallpaperCallback;)V

    .line 72
    return-void
.end method

.method public saveWallpaper(Lcom/google/glass/wallpaper/WallpaperCallback;[B)V
    .locals 5
    .param p1, "wallpaperCallback"    # Lcom/google/glass/wallpaper/WallpaperCallback;
    .param p2, "bitmapBytes"    # [B

    .prologue
    .line 81
    sget-object v0, Lcom/google/glass/wallpaper/WallpaperHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Saving wallpaper [bitmapBytesLength=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/google/glass/wallpaper/WallpaperHelper;->wallpaperHelperHandler:Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;

    invoke-static {v0, p1, p2}, Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;->access$300(Lcom/google/glass/wallpaper/WallpaperHelper$WallpaperHelperHandler;Lcom/google/glass/wallpaper/WallpaperCallback;[B)V

    .line 83
    return-void
.end method
