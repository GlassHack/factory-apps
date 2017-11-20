.class public Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/overlay/r;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->setBackgroundColor(I)V

    .line 24
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->setVisibility(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 40
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->a:Z

    .line 61
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    :goto_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->setVisibility(I)V

    .line 50
    return-void

    .line 47
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/player/overlay/DefaultThumbnailOverlay;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method
