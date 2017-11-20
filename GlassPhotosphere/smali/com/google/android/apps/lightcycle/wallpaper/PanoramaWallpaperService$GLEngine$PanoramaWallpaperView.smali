.class Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;
.super Lcom/google/android/apps/lightcycle/viewer/PanoramaView;
.source "PanoramaWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoramaWallpaperView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "image"    # Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->this$1:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;-><init>(Landroid/content/Context;Lcom/google/android/apps/lightcycle/viewer/PanoramaImage;Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine$PanoramaWallpaperView;->this$1:Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;

    invoke-virtual {v0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/android/apps/lightcycle/viewer/PanoramaView;->onDetachedFromWindow()V

    .line 56
    return-void
.end method
