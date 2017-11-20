.class public Lcom/google/glass/wallpaper/WallpaperHelper$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "WallpaperHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/wallpaper/WallpaperHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/wallpaper/WallpaperHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/wallpaper/WallpaperHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 326
    new-instance v0, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;->INSTANCE:Lcom/google/glass/wallpaper/WallpaperHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 329
    new-instance v0, Lcom/google/glass/wallpaper/WallpaperHelper$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider$1;-><init>(Lcom/google/glass/wallpaper/WallpaperHelper$Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;->init(Lcom/google/common/base/Supplier;)V

    .line 335
    return-void
.end method

.method public static getInstance()Lcom/google/glass/wallpaper/WallpaperHelper$Provider;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/google/glass/wallpaper/WallpaperHelper$Provider;->INSTANCE:Lcom/google/glass/wallpaper/WallpaperHelper$Provider;

    return-object v0
.end method
