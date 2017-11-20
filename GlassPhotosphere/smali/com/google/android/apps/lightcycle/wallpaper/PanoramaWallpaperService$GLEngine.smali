.class public Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "PanoramaWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;
    }
.end annotation


# instance fields
.field private currentActiveFileTimestamp:J

.field private repository:Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

.field private sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

.field final synthetic this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

.field private wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;)V
    .locals 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->currentActiveFileTimestamp:J

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;)Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->repository:Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    return-object v0
.end method

.method private getCurrentPanoramaImage()Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;
    .locals 6

    .prologue
    .line 166
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    const/4 v3, 0x1

    .line 170
    .local v3, "useLegacyTileProvider":Z
    :goto_0
    if-eqz v3, :cond_1

    :try_start_0
    new-instance v2, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->repository:Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/android/apps/lightcycle/viewer/LegacyTileProvider;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .local v2, "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    :goto_1
    new-instance v4, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$1;-><init>(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;)V

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/util/PanoMetadata;->parse(Lcom/google/android/apps/lightcycle/util/InputStreamFactory;)Lcom/google/android/apps/lightcycle/util/PanoMetadata;

    move-result-object v1

    .line 190
    .local v1, "panoMetadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    new-instance v4, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    invoke-direct {v4, v2, v1}, Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;-><init>(Lcom/google/android/apps/lightcycle/viewer/TileProvider;Lcom/google/android/apps/lightcycle/util/PanoMetadata;)V

    .end local v1    # "panoMetadata":Lcom/google/android/apps/lightcycle/util/PanoMetadata;
    .end local v2    # "tileProvider":Lcom/google/android/apps/lightcycle/viewer/TileProvider;
    :goto_2
    return-object v4

    .line 166
    .end local v3    # "useLegacyTileProvider":Z
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 170
    .restart local v3    # "useLegacyTileProvider":Z
    :cond_1
    :try_start_1
    new-instance v2, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->repository:Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    invoke-virtual {v5}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getActivePanoramaFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Lcom/google/android/apps/lightcycle/viewer/TileProviderImpl;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not load tile provider"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private isCompassModeEnabled()Z
    .locals 3

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "enableCompassMode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private onPause()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 116
    :cond_0
    return-void
.end method

.method private onResume()V
    .locals 6

    .prologue
    .line 81
    iget-wide v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->currentActiveFileTimestamp:J

    iget-object v4, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->repository:Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    invoke-virtual {v4}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getLastChanged()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->getCurrentPanoramaImage()Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->setImage(Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    .line 83
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->repository:Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;->getLastChanged()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->currentActiveFileTimestamp:J

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->setFovDegrees(F)V

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->isCompassModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 94
    .local v1, "windowManager":Landroid/view/WindowManager;
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v0, v2, v3}, Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;-><init>(Landroid/view/Display;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 97
    .local v0, "orientationDetector":Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2, v0, v3}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->setSensorReader(Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;Lcom/google/android/apps/lightcycle/sensor/SensorReader;)V

    .line 101
    .end local v0    # "orientationDetector":Lcom/google/android/apps/lightcycle/sensor/DeviceOrientationDetector;
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v2, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->isCompassModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    iget-object v3, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 108
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->isCompassModeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->setCompassModeEnabled(Z)V

    .line 109
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->requestRender()V

    .line 110
    return-void

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v2}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 71
    new-instance v0, Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-direct {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->start(Landroid/content/Context;)Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    .line 73
    new-instance v0, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    invoke-direct {v0, v1}, Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->repository:Lcom/google/android/apps/lightcycle/wallpaper/WallpaperRepository;

    .line 75
    new-instance v0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    iget-object v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->this$0:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->getCurrentPanoramaImage()Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;-><init>(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->sensorReader:Lcom/google/android/apps/lightcycle/sensor/SensorReader;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/sensor/SensorReader;->stop()V

    .line 140
    :cond_0
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 4
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xOffsetStep"    # F
    .param p4, "yOffsetStep"    # F
    .param p5, "xPixelOffset"    # I
    .param p6, "yPixelOffset"    # I

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 146
    invoke-super/range {p0 .. p6}, Landroid/service/wallpaper/WallpaperService$Engine;->onOffsetsChanged(FFFFII)V

    .line 149
    move v0, p1

    .line 150
    .local v0, "rotationPercent":F
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    mul-float v2, v0, v3

    sub-float v2, v3, v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->setYawDegrees(F)V

    .line 151
    iget-object v1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->wallpaperSurfaceView:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;

    invoke-virtual {v1}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->requestRender()V

    .line 152
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->onResume()V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->onPause()V

    goto :goto_0
.end method
