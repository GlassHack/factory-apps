.class public Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;
.implements Lcom/google/android/youtube/core/player/overlay/l;


# static fields
.field private static synthetic m:[I


# instance fields
.field private final a:Landroid/widget/RelativeLayout;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/animation/Animation;

.field private final h:Landroid/view/animation/Animation;

.field private final i:Landroid/os/Handler;

.field private j:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

.field private k:Z

.field private l:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x3e8

    const/16 v2, 0x8

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/android/youtube/R$layout;->remote_controller_overlay:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    sget v0, Lcom/google/android/youtube/R$id;->video_info_overlay:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/youtube/R$id;->video_title:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->b:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/youtube/R$id;->author_name:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->c:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/youtube/R$id;->play_status:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->d:Landroid/widget/ImageView;

    .line 72
    sget v0, Lcom/google/android/youtube/R$id;->spinner:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->e:Landroid/view/View;

    .line 73
    sget v0, Lcom/google/android/youtube/R$id;->error_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    .line 75
    const/high16 v0, 0x10a0000

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->g:Landroid/view/animation/Animation;

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->g:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/android/youtube/core/player/overlay/n;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/overlay/n;-><init>(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 95
    const v0, 0x10a0001

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->h:Landroid/view/animation/Animation;

    .line 96
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->h:Landroid/view/animation/Animation;

    new-instance v1, Lcom/google/android/youtube/core/player/overlay/o;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/overlay/o;-><init>(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i:Landroid/os/Handler;

    .line 116
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->HIDDEN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->j:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->setVisibility(I)V

    .line 121
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->j:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->j()[I

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->j:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    return-void

    .line 174
    :pswitch_1
    if-eqz p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->SHOWN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->j:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 184
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->SHOWN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->j:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    .line 185
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i()V

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i()V

    goto :goto_0

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;)V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i()V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Z)V

    .line 196
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a(Z)V

    .line 200
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 205
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->HIDDEN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->j:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    .line 206
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 215
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->k:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    :cond_0
    return-void
.end method

.method private static synthetic j()[I
    .locals 3

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->m:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->values()[Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_IN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->FADING_OUT:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->HIDDEN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->SHOWN:Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay$WatchInfoState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->m:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->setVisibility(I)V

    .line 246
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->g()V

    .line 247
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->d:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/youtube/R$drawable;->ic_remote_video_info_pause:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 249
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->l:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    if-eq v0, v1, :cond_0

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->k:Z

    .line 251
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->d()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f()V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 134
    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 135
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->setVisibility(I)V

    .line 267
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f()V

    .line 268
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->g()V

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 153
    :goto_0
    return v0

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->h()V

    goto :goto_0

    .line 150
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCcEnabled(Z)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method public setHQ(Z)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public setHQisHD(Z)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public setHasCc(Z)V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public setHasNext(Z)V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public setHasPrevious(Z)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public setListener(Lcom/google/android/youtube/core/player/overlay/e;)V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public setLoading()V
    .locals 4

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    return-void
.end method

.method public setPlaying()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->setVisibility(I)V

    .line 232
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->g()V

    .line 233
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->d:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/youtube/R$drawable;->ic_remote_video_info_play:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->l:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    if-eq v0, v1, :cond_0

    .line 236
    iput-boolean v2, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->k:Z

    .line 237
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->e()V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->f()V

    goto :goto_0
.end method

.method public setPortrait(Z)V
    .locals 0

    .prologue
    .line 339
    return-void
.end method

.method public setScrubbingEnabled(Z)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public setShowFullscreen(Z)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->l:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    .line 227
    return-void
.end method

.method public setSupportsQualityToggle(Z)V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public setTimes(III)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public setVideoInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->l:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    if-eq v0, v1, :cond_2

    .line 163
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/RemoteControllerOverlay;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
