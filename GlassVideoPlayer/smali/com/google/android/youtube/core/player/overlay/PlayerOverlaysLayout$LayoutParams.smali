.class public Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;
.super Landroid/widget/RelativeLayout$LayoutParams;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 244
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 252
    iput-boolean p3, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;->a:Z

    .line 253
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 237
    sget-object v0, Lcom/google/android/youtube/R$styleable;->PlayerOverlaysLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;->a:Z

    .line 239
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    return-void
.end method
