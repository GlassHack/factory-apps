.class public Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/core/player/overlay/g;


# instance fields
.field private final a:Lcom/google/android/youtube/core/utils/a;

.field private final b:Landroid/content/res/Resources;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/os/Handler;

.field private f:Lcom/google/android/youtube/core/player/overlay/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    sget v0, Lcom/google/android/youtube/R$drawable;->ic_vidcontrol_play:I

    sget v1, Lcom/google/android/youtube/R$drawable;->player_bg_middle:I

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;-><init>(Landroid/content/Context;II)V

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;II)V
    .locals 5

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x2

    const/4 v2, -0x1

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/google/android/youtube/core/utils/l;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->a:Lcom/google/android/youtube/core/utils/a;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->b:Landroid/content/res/Resources;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->e:Landroid/os/Handler;

    .line 56
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->c:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->c:Landroid/widget/TextView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->addView(Landroid/view/View;II)V

    .line 62
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->addView(Landroid/view/View;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->setClickable(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->a()V

    .line 73
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->setVisibility(I)V

    .line 110
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->f:Lcom/google/android/youtube/core/player/overlay/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->d:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->a()V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->f:Lcom/google/android/youtube/core/player/overlay/h;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/h;->a()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string v0, "Play button clicked in LiveOverlay, but no listener was registered"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setListener(Lcom/google/android/youtube/core/player/overlay/h;)V
    .locals 1

    .prologue
    .line 87
    const-string v0, "listener cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/h;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultLiveOverlay;->f:Lcom/google/android/youtube/core/player/overlay/h;

    .line 88
    return-void
.end method
