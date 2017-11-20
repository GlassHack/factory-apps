.class Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;
.super Ljava/lang/Object;
.source "HomeItemView.java"

# interfaces
.implements Lcom/google/glass/wallpaper/WallpaperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/timeline/active/HomeItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnViewInflatedWallpaperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/timeline/active/HomeItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/timeline/active/HomeItemView;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/timeline/active/HomeItemView;Lcom/google/glass/home/timeline/active/HomeItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/timeline/active/HomeItemView;
    .param p2, "x1"    # Lcom/google/glass/home/timeline/active/HomeItemView$1;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;-><init>(Lcom/google/glass/home/timeline/active/HomeItemView;)V

    return-void
.end method


# virtual methods
.method public onLoadFailed()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public onLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v0, p0, Lcom/google/glass/home/timeline/active/HomeItemView$OnViewInflatedWallpaperCallback;->this$0:Lcom/google/glass/home/timeline/active/HomeItemView;

    invoke-static {v0}, Lcom/google/glass/home/timeline/active/HomeItemView;->access$400(Lcom/google/glass/home/timeline/active/HomeItemView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    return-void
.end method

.method public onSaveFailed()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public onSaved()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method
