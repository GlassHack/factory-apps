.class Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$1;
.super Ljava/lang/Object;
.source "PanoramaWallpaperService.java"

# interfaces
.implements Lcom/google/android/apps/lightcycle/util/InputStreamFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->getCurrentPanoramaImage()Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;


# direct methods
.method constructor <init>(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$1;->this$1:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$1;->this$1:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;

    invoke-static {v2}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->access$100(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;)Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-object v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 187
    const/4 v1, 0x0

    goto :goto_0
.end method
