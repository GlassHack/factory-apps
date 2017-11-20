.class public Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/player/overlay/c;


# instance fields
.field private a:Lcom/google/android/youtube/core/player/overlay/d;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0, p0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->b()V

    .line 36
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->b:Z

    .line 66
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setVisibility(I)V

    .line 69
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->b:Z

    .line 74
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setVisibility(I)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setFocusable(Z)V

    .line 77
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->a:Lcom/google/android/youtube/core/player/overlay/d;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->a:Lcom/google/android/youtube/core/player/overlay/d;

    .line 96
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/overlay/d;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->a:Lcom/google/android/youtube/core/player/overlay/d;

    .line 41
    return-void
.end method

.method public setTvBanner(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public setWatermark(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setVisibility(I)V

    .line 85
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setClickable(Z)V

    .line 86
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setFocusable(Z)V

    .line 88
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/youtube/R$string;->accessibility_visit_website:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 87
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultBrandingOverlay;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
