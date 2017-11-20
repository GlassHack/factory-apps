.class public Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "PanoramaWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const-class v0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 38
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;

    invoke-direct {v0, p0}, Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService$GLEngine;-><init>(Lcom/google/android/apps/lightcycle/wallpaper/PanoramaWallpaperService;)V

    return-object v0
.end method
