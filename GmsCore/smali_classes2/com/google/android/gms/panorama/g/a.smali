.class public final Lcom/google/android/gms/panorama/g/a;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/animation/AlphaAnimation;

.field private final b:Landroid/view/animation/AlphaAnimation;

.field private final c:Landroid/os/Handler;

.field private final d:Ljava/lang/Runnable;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/a;->a:Landroid/view/animation/AlphaAnimation;

    .line 26
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/a;->b:Landroid/view/animation/AlphaAnimation;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/a;->c:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/google/android/gms/panorama/g/b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/panorama/g/b;-><init>(Lcom/google/android/gms/panorama/g/a;)V

    iput-object v0, p0, Lcom/google/android/gms/panorama/g/a;->d:Ljava/lang/Runnable;

    .line 38
    iput-boolean v4, p0, Lcom/google/android/gms/panorama/g/a;->e:Z

    .line 47
    const v0, 0x7f0200e9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/a;->setImageResource(I)V

    .line 48
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    const v0, 0x7f0201de

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/a;->setBackgroundResource(I)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 55
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/google/android/gms/panorama/g/a;->setPadding(IIII)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/panorama/g/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1002c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->a:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->a:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->a:Landroid/view/animation/AlphaAnimation;

    new-instance v1, Lcom/google/android/gms/panorama/g/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/panorama/g/c;-><init>(Lcom/google/android/gms/panorama/g/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/panorama/g/a;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->a:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/panorama/g/a;)Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/a;->e:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/panorama/g/a;->e:Z

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/a;->setVisibility(I)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/a;->setClickable(Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->b:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->b:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/panorama/g/a;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/panorama/g/a;->e:Z

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/panorama/g/a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/panorama/g/a;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x76c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
