.class public Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;
.super Ljava/lang/Object;
.source "WallpaperRepository.java"


# static fields
.field private static final ACTIVE_PANO_FILENAME:Ljava/lang/String; = "active.jpg"

.field private static final DEMO_PANO_FILENAME:Ljava/lang/String; = "ocean_pano.jpg"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private getActivePanoramaFileName()Ljava/io/File;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "active.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getActivePanoramaFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFileName()Ljava/io/File;

    move-result-object v0

    .line 37
    .local v0, "activePanoFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    sget-object v1, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->TAG:Ljava/lang/String;

    const-string v2, "Active pano file doesn\'t exist. Switching to demo file..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->switchToDemoFile()V

    .line 40
    sget-object v1, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activation of demo file successful: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-object v0
.end method

.method public getLastChanged()J
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFile()Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1
.end method

.method public switchToDemoFile()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 47
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 49
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v3, "ocean_pano.jpg"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 50
    .local v1, "demoFile":Ljava/io/InputStream;
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFileName()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/apps/lightcycle/util/FileUtil;->storeFile(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->context:Landroid/content/Context;

    const-string v4, "Successfully switched to demo file."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 60
    .end local v1    # "demoFile":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->TAG:Ljava/lang/String;

    const-string v4, "Could not activate default panorama."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    iget-object v3, p0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->context:Landroid/content/Context;

    const-string v4, "Switching to demo file failed."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
