.class Lcom/google/glass/wallpaper/WallpaperHelper$Provider$1;
.super Ljava/lang/Object;
.source "WallpaperHelper.java"

# interfaces
.implements Lcom/google/common/base/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/wallpaper/WallpaperHelper$Provider;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Supplier",
        "<",
        "Lcom/google/glass/wallpaper/WallpaperHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/wallpaper/WallpaperHelper$Provider;


# direct methods
.method constructor <init>(Lcom/google/glass/wallpaper/WallpaperHelper$Provider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/wallpaper/WallpaperHelper$Provider;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/glass/wallpaper/WallpaperHelper$Provider$1;->this$0:Lcom/google/glass/wallpaper/WallpaperHelper$Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/google/glass/wallpaper/WallpaperHelper;
    .locals 2

    .prologue
    .line 332
    new-instance v0, Lcom/google/glass/wallpaper/WallpaperHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/wallpaper/WallpaperHelper;-><init>(Lcom/google/glass/wallpaper/WallpaperHelper$1;)V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/google/glass/wallpaper/WallpaperHelper$Provider$1;->get()Lcom/google/glass/wallpaper/WallpaperHelper;

    move-result-object v0

    return-object v0
.end method
