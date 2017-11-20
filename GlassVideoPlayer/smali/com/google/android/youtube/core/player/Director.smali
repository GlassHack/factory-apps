.class public final Lcom/google/android/youtube/core/player/Director;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/overlay/b;
.implements Lcom/google/android/youtube/core/player/overlay/h;


# instance fields
.field private A:Z

.field private B:Lcom/google/android/youtube/core/async/a/a;

.field private C:Lcom/google/android/youtube/core/async/i;

.field private D:Lcom/google/android/youtube/core/async/i;

.field private E:Z

.field private F:Z

.field private G:Lcom/google/android/youtube/core/player/DirectorException;

.field private H:Z

.field private final I:Lcom/google/android/youtube/core/player/h;

.field private J:Lcom/google/android/youtube/core/player/Director$PlayerState;

.field private K:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

.field private final a:Lcom/google/android/youtube/core/player/n;

.field private final b:Lcom/google/android/youtube/core/player/t;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/youtube/core/utils/a;

.field private final e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

.field private final f:Lcom/google/android/youtube/core/player/overlay/a;

.field private final g:Lcom/google/android/youtube/core/player/overlay/g;

.field private final h:Lcom/google/android/youtube/core/player/overlay/r;

.field private final i:Lcom/google/android/youtube/core/player/r;

.field private final j:Lcom/google/android/youtube/core/player/p;

.field private final k:Lcom/google/android/youtube/core/player/b;

.field private final l:Lcom/google/android/youtube/core/player/a;

.field private final m:Lcom/google/android/youtube/core/client/b;

.field private final n:Lcom/google/android/youtube/core/client/v;

.field private final o:Z

.field private p:Lcom/google/android/youtube/core/client/VideoStats2Client;

.field private q:Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

.field private r:Lcom/google/android/youtube/core/client/AdStatsClient;

.field private s:Z

.field private t:I

.field private u:I

.field private v:Lcom/google/android/youtube/core/model/Video;

.field private w:Lcom/google/android/youtube/core/model/r;

.field private x:Lcom/google/android/youtube/core/model/r;

.field private y:Lcom/google/android/youtube/core/model/VastAd;

.field private z:Z


# direct methods
.method private a(Z)V
    .locals 2

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->e()Z

    move-result v0

    const-string v1, "call init() first"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/f;->b(ZLjava/lang/Object;)V

    .line 482
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    .line 484
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/t;->d()V

    .line 485
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->g()V

    .line 486
    return-void
.end method

.method private a(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->K:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 802
    if-nez p1, :cond_0

    .line 803
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->m:Lcom/google/android/youtube/core/client/b;

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/client/VideoStats2Client;

    .line 806
    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/client/VideoStats2Client;

    .line 807
    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->r:Lcom/google/android/youtube/core/client/AdStatsClient;

    .line 808
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->h()V

    .line 809
    return-void
.end method

.method private b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->K:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Lcom/google/android/youtube/core/async/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 493
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->o()V

    .line 495
    sget-object v2, Lcom/google/android/youtube/core/player/Director$PlayerState;->NOT_PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->J:Lcom/google/android/youtube/core/player/Director$PlayerState;

    .line 496
    sget-object v2, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADING:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    iput-object v2, p0, Lcom/google/android/youtube/core/player/Director;->K:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 497
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    .line 498
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->w:Lcom/google/android/youtube/core/model/r;

    .line 499
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->x:Lcom/google/android/youtube/core/model/r;

    .line 500
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->s:Z

    .line 501
    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/player/DirectorException;

    .line 503
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->I:Lcom/google/android/youtube/core/player/h;

    .line 505
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/t;->e()V

    .line 506
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/player/t;->c()V

    .line 508
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->l()V

    .line 509
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->m()V

    .line 510
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->n()V

    .line 511
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v2, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setScrubbingEnabled(Z)V

    .line 512
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->f:Lcom/google/android/youtube/core/player/overlay/a;

    if-eqz v2, :cond_2

    .line 513
    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/Director;->E:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 515
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-boolean v2, v2, Lcom/google/android/youtube/core/model/VastAd;->D:Z

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->e:Ljava/lang/String;

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->f:Lcom/google/android/youtube/core/player/overlay/a;

    iget-object v3, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/VastAd;->b()Z

    move-result v3

    iget-object v4, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v4, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/VastAd;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1, v4}, Lcom/google/android/youtube/core/player/overlay/a;->a(Ljava/lang/String;ZZLjava/lang/String;)V

    .line 521
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->g:Lcom/google/android/youtube/core/player/overlay/g;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/g;->a()V

    .line 522
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/overlay/r;

    if-eqz v0, :cond_3

    .line 523
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/overlay/r;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/r;->b()V

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->I:Lcom/google/android/youtube/core/player/h;

    .line 526
    return-void

    .line 518
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->f:Lcom/google/android/youtube/core/player/overlay/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/a;->a()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->f()V

    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Lcom/google/android/youtube/core/async/a/a;

    .line 541
    return-void
.end method

.method private h()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 812
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ENDED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    iput v2, p0, Lcom/google/android/youtube/core/player/Director;->t:I

    .line 815
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_VIDEO:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->K:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    .line 818
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->f:Lcom/google/android/youtube/core/player/overlay/a;

    if-eqz v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->f:Lcom/google/android/youtube/core/player/overlay/a;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/a;->a()V

    .line 821
    :cond_1
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->m()V

    .line 822
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->l()V

    .line 823
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/p;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/model/Video;)V

    .line 824
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->k:Lcom/google/android/youtube/core/player/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/b;->a()V

    .line 825
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->w:Lcom/google/android/youtube/core/model/r;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/model/r;->a:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setSupportsQualityToggle(Z)V

    .line 827
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/Director;->z:Z

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setHQ(Z)V

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->I:Lcom/google/android/youtube/core/player/h;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    .line 830
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->a:Lcom/google/android/youtube/core/player/n;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/n;->setKeepScreenOn(Z)V

    .line 831
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setScrubbingEnabled(Z)V

    .line 832
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->z:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->w:Lcom/google/android/youtube/core/model/r;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/r;->b:Lcom/google/android/youtube/core/model/Stream;

    move-object v7, v0

    .line 833
    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/client/VideoStats2Client;

    if-nez v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->n:Lcom/google/android/youtube/core/client/v;

    .line 835
    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    iget v2, v2, Lcom/google/android/youtube/core/model/Video;->duration:I

    iget-boolean v3, p0, Lcom/google/android/youtube/core/player/Director;->H:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->j()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    iget-boolean v5, v5, Lcom/google/android/youtube/core/model/Video;->claimed:Z

    iget-object v6, p0, Lcom/google/android/youtube/core/player/Director;->q:Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

    .line 834
    invoke-interface/range {v0 .. v6}, Lcom/google/android/youtube/core/client/v;->a(Ljava/lang/String;IZZZLcom/google/android/youtube/core/client/VideoStats2Client$Feature;)Lcom/google/android/youtube/core/client/VideoStats2Client;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/client/VideoStats2Client;

    .line 836
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->p:Lcom/google/android/youtube/core/client/VideoStats2Client;

    invoke-interface {v0}, Lcom/google/android/youtube/core/client/VideoStats2Client;->a()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 838
    iget-object v1, v7, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "cpn"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 839
    invoke-virtual {v7}, Lcom/google/android/youtube/core/model/Stream;->buildUpon()Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v7

    .line 842
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 843
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0, v7}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/model/Stream;)V

    .line 847
    :goto_1
    return-void

    .line 832
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->w:Lcom/google/android/youtube/core/model/r;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/r;->c:Lcom/google/android/youtube/core/model/Stream;

    move-object v7, v0

    goto :goto_0

    .line 845
    :cond_5
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    iget v1, p0, Lcom/google/android/youtube/core/player/Director;->t:I

    invoke-virtual {v0, v7, v1}, Lcom/google/android/youtube/core/player/t;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    goto :goto_1
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/player/DirectorException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->o:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/VastAd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->d:Lcom/google/android/youtube/core/utils/a;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/VastAd;->a(Lcom/google/android/youtube/core/utils/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->AD:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V

    .line 900
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->LIVE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isMovie()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->MOVIE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V

    goto :goto_0

    .line 893
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->o:Z

    if-eqz v0, :cond_3

    .line 894
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->EMBEDDED:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V

    goto :goto_0

    .line 895
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->A:Z

    if-eqz v0, :cond_4

    .line 896
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->YOUTUBE_TABLET:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V

    goto :goto_0

    .line 898
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    sget-object v1, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;->YOUTUBE:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setStyle(Lcom/google/android/youtube/core/player/overlay/ControllerOverlay$Style;)V

    goto :goto_0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 903
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    iget v1, p0, Lcom/google/android/youtube/core/player/Director;->u:I

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget v2, v2, Lcom/google/android/youtube/core/model/VastAd;->h:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setTimes(III)V

    .line 908
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    iget v1, p0, Lcom/google/android/youtube/core/player/Director;->t:I

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->p()I

    move-result v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setTimes(III)V

    goto :goto_0
.end method

.method private n()V
    .locals 3

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/Director;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/player/DirectorException;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/DirectorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/player/Director;->G:Lcom/google/android/youtube/core/player/DirectorException;

    iget-boolean v2, v2, Lcom/google/android/youtube/core/player/DirectorException;->isRetriable:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->a(Ljava/lang/String;Z)V

    .line 931
    :goto_0
    return-void

    .line 913
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->NEW:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADING:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 914
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Lcom/google/android/youtube/core/player/Director$PlayerState;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlayerState;->PREPARING:Lcom/google/android/youtube/core/player/Director$PlayerState;

    if-eq v0, v1, :cond_1

    .line 915
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/t;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/t;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setLoading()V

    goto :goto_0

    .line 917
    :cond_2
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ENDED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 918
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->b()V

    goto :goto_0

    .line 919
    :cond_3
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_AD:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_VIDEO:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 920
    :cond_4
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/t;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 921
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setPlaying()V

    goto :goto_0

    .line 922
    :cond_5
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 923
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->ENDED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video;->isLive()Z

    move-result v0

    if-nez v0, :cond_8

    .line 924
    :cond_6
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_AD:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_VIDEO:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 925
    :cond_7
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/t;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 926
    :cond_8
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->a()V

    goto/16 :goto_0

    .line 928
    :cond_9
    const-string v0, "Unhandled state in setControllerState."

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->setLoading()V

    goto/16 :goto_0
.end method

.method private o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Lcom/google/android/youtube/core/async/a/a;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->B:Lcom/google/android/youtube/core/async/a/a;

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->C:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 1095
    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->C:Lcom/google/android/youtube/core/async/i;

    .line 1097
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->D:Lcom/google/android/youtube/core/async/i;

    if-eqz v0, :cond_2

    .line 1098
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->D:Lcom/google/android/youtube/core/async/i;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/i;->a()V

    .line 1099
    iput-object v1, p0, Lcom/google/android/youtube/core/player/Director;->D:Lcom/google/android/youtube/core/async/i;

    .line 1101
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->j:Lcom/google/android/youtube/core/player/p;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/p;->a()V

    .line 1102
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->i:Lcom/google/android/youtube/core/player/r;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/r;->a()V

    .line 1103
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->k:Lcom/google/android/youtube/core/player/b;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/b;->b()V

    .line 1104
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->l:Lcom/google/android/youtube/core/player/a;

    .line 1105
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->e:Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/ControllerOverlay;->c()V

    .line 1106
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/overlay/r;

    if-eqz v0, :cond_3

    .line 1107
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->h:Lcom/google/android/youtube/core/player/overlay/r;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/overlay/r;->a()V

    .line 1109
    :cond_3
    return-void
.end method

.method private p()I
    .locals 2

    .prologue
    .line 1200
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->PLAYING_VIDEO:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->J:Lcom/google/android/youtube/core/player/Director$PlayerState;

    sget-object v1, Lcom/google/android/youtube/core/player/Director$PlayerState;->PREPARED:Lcom/google/android/youtube/core/player/Director$PlayerState;

    if-ne v0, v1, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->b:Lcom/google/android/youtube/core/player/t;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/t;->b()I

    move-result v0

    .line 1205
    :goto_0
    return v0

    .line 1202
    :cond_0
    sget-object v0, Lcom/google/android/youtube/core/player/Director$PlaybackStage;->LOADED:Lcom/google/android/youtube/core/player/Director$PlaybackStage;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/Director$PlaybackStage;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->v:Lcom/google/android/youtube/core/model/Video;

    iget v0, v0, Lcom/google/android/youtube/core/model/Video;->duration:I

    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    .line 1205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/Director;->F:Z

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->a(Z)V

    .line 657
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->r:Lcom/google/android/youtube/core/client/AdStatsClient;

    .line 1036
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VastAd;->j:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/e;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1038
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/VastAd;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->r:Lcom/google/android/youtube/core/client/AdStatsClient;

    .line 1051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/Director;->b(Z)V

    .line 1053
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/VastAd;->D:Z

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->r:Lcom/google/android/youtube/core/client/AdStatsClient;

    .line 1059
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/Director;->y:Lcom/google/android/youtube/core/model/VastAd;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VastAd;->c:Ljava/lang/String;

    sget-object v2, Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;->AD:Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/client/VideoStats2Client$Feature;)V

    .line 1061
    :cond_0
    return-void
.end method
