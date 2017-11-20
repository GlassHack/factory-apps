.class public final Lcom/google/android/location/places/ui/ae;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/ui/ad;
.implements Lcom/google/android/location/places/ui/ay;
.implements Lcom/google/android/location/places/ui/bh;
.implements Lcom/google/android/location/places/ui/n;


# instance fields
.field private a:Lcom/google/android/location/places/ui/r;

.field private aA:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Landroid/view/ViewGroup;

.field private am:Landroid/view/ViewGroup;

.field private an:Landroid/view/View;

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:I

.field private as:I

.field private at:I

.field private au:Z

.field private av:Z

.field private aw:Z

.field private ax:Z

.field private ay:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private az:Ljava/lang/String;

.field private b:Lcom/google/android/location/places/ui/q;

.field private c:Lcom/google/android/location/places/ui/aw;

.field private d:Lcom/google/android/location/places/ui/an;

.field private e:Lcom/google/android/location/places/ui/MarkerMapFragment;

.field private f:Lcom/google/android/location/places/ui/be;

.field private g:Lcom/google/android/location/places/ui/k;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    return-void
.end method

.method public static U()Lcom/google/android/location/places/ui/ae;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/location/places/ui/ae;

    invoke-direct {v0}, Lcom/google/android/location/places/ui/ae;-><init>()V

    .line 98
    return-object v0
.end method

.method private X()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->c:Z

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->V()V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->V()V

    .line 309
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/k;->b(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    const-string v1, "*"

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/places/ui/aw;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    goto :goto_0
.end method

.method private Y()V
    .locals 6

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->e:Z

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->au:Z

    if-eqz v0, :cond_1

    .line 320
    new-instance v1, Lcom/google/android/location/places/ui/af;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/af;-><init>(Lcom/google/android/location/places/ui/ae;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->av:Z

    .line 334
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/location/x;->N:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    .line 339
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->R()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method private Z()V
    .locals 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->V()V

    .line 345
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    .line 346
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/k;->b(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->aA:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 348
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->az:Ljava/lang/String;

    .line 349
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/be;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/location/places/ui/aw;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 350
    return-void
.end method

.method private a(IILjava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-virtual {v0}, Landroid/support/v4/app/j;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->am:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    .line 591
    if-eqz p3, :cond_0

    .line 592
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/places/ui/am;

    invoke-direct {v1, p0, p3}, Lcom/google/android/location/places/ui/am;-><init>(Lcom/google/android/location/places/ui/ae;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->am:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->am:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 606
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 607
    return-void

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/ae;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->aa()V

    const v0, 0x7f030072

    const v1, 0x7f0d0120

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/location/places/ui/ae;->a(IILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/ae;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->av:Z

    return v0
.end method

.method private aa()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    if-nez v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->am:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->an:Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/k;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/ae;Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->aa()V

    const v0, 0x7f030073

    const v1, 0x7f0d011e

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/location/places/ui/ae;->a(IILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/location/places/ui/ae;)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->av:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/be;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/places/ui/ae;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/MarkerMapFragment;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/location/places/ui/ae;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/location/places/ui/ae;)Lcom/google/android/location/places/ui/r;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/places/ui/ae;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->aa()V

    return-void
.end method

.method static synthetic j(Lcom/google/android/location/places/ui/ae;)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    return v0
.end method

.method static synthetic k(Lcom/google/android/location/places/ui/ae;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->ak:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/google/android/location/places/ui/ae;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->Z()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 276
    iput-boolean v5, p0, Lcom/google/android/location/places/ui/ae;->au:Z

    .line 277
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->Q()V

    .line 278
    iget-object v9, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-boolean v0, v9, Lcom/google/android/location/places/ui/k;->ap:Z

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/google/android/location/places/ui/k;->ao:I

    iget v3, v9, Lcom/google/android/location/places/ui/k;->am:I

    add-int/2addr v0, v3

    const/high16 v3, 0x42900000    # 72.0f

    iget-object v4, v9, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v3, v4}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v3

    sub-int v3, v0, v3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v4, v9, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v6, v3

    move v3, v1

    move v4, v2

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, v9, Lcom/google/android/location/places/ui/k;->i:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v9, Lcom/google/android/location/places/ui/k;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v5, v9, Lcom/google/android/location/places/ui/k;->ap:Z

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iget v1, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    iget v2, p0, Lcom/google/android/location/places/ui/ae;->as:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(I)V

    .line 280
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->R()V

    .line 281
    return-void
.end method

.method public final Q()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->ay:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 287
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->U()V

    .line 293
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->Y()V

    .line 295
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->au:Z

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->X()V

    goto :goto_0
.end method

.method public final R()V
    .locals 2

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->e:Z

    if-nez v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    .line 371
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->R()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->e:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->W()V

    .line 374
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->ak:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/k;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final S()V
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    if-eqz v0, :cond_0

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    .line 392
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->U()V

    .line 393
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->Y()V

    .line 394
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->X()V

    .line 396
    :cond_0
    return-void
.end method

.method public final T()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v1, Lcom/google/android/location/places/ui/ak;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/ak;-><init>(Lcom/google/android/location/places/ui/ae;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 539
    return-void
.end method

.method public final V()V
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    .line 412
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->U()V

    .line 415
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    .line 416
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->aa()V

    .line 417
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->Z()V

    .line 418
    return-void
.end method

.method public final W()V
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    if-eqz v0, :cond_0

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    .line 426
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->aa()V

    .line 427
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->Y()V

    .line 428
    invoke-direct {p0}, Lcom/google/android/location/places/ui/ae;->X()V

    .line 432
    :cond_0
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 116
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->am:Landroid/view/ViewGroup;

    .line 117
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->am:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->d:Lcom/google/android/location/places/ui/an;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/an;->b()V

    .line 556
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 103
    instance-of v1, p1, Lcom/google/android/location/places/ui/PlacePickerActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be an instance of PlacePickerActivity."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 105
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 107
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/location/places/ui/an;

    move-object v1, v0

    iput-object v1, p0, Lcom/google/android/location/places/ui/ae;->d:Lcom/google/android/location/places/ui/an;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    return-void

    .line 109
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement PickAPlaceFragment.Listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 0

    .prologue
    .line 549
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ui/k;->a(Lcom/google/android/gms/location/places/h;)V

    .line 364
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;II)V
    .locals 2

    .prologue
    .line 437
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 439
    const/4 p2, 0x3

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->d:Lcom/google/android/location/places/ui/an;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/be;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/google/android/location/places/ui/an;->a(Lcom/google/android/gms/location/places/h;IILjava/lang/String;)V

    .line 443
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    if-eqz v0, :cond_0

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    .line 382
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 386
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/location/x;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->S()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/location/places/ui/aw;->b(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 404
    :cond_0
    return-void
.end method

.method public final a([Lcom/google/android/gms/location/places/AutocompletePrediction;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v1, Lcom/google/android/location/places/ui/ah;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/ui/ah;-><init>(Lcom/google/android/location/places/ui/ae;[Lcom/google/android/gms/location/places/AutocompletePrediction;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 471
    return-void
.end method

.method public final a([Lcom/google/android/gms/location/places/h;)V
    .locals 3

    .prologue
    .line 475
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/aw;->b()Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v2, Lcom/google/android/location/places/ui/ai;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/location/places/ui/ai;-><init>(Lcom/google/android/location/places/ui/ae;[Lcom/google/android/gms/location/places/h;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/app/j;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 518
    return-void
.end method

.method public final b(Lcom/google/android/gms/location/places/h;)V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v1, Lcom/google/android/location/places/ui/ag;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/ui/ag;-><init>(Lcom/google/android/location/places/ui/ae;Lcom/google/android/gms/location/places/h;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method

.method public final c()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 265
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->T()V

    .line 266
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->R()V

    .line 267
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/be;->S()V

    .line 268
    iput-boolean v1, p0, Lcom/google/android/location/places/ui/ae;->au:Z

    .line 269
    iget-object v9, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-boolean v0, v9, Lcom/google/android/location/places/ui/k;->ap:Z

    if-nez v0, :cond_0

    iput-boolean v1, v9, Lcom/google/android/location/places/ui/k;->ap:Z

    iget v0, v9, Lcom/google/android/location/places/ui/k;->ao:I

    iget v3, v9, Lcom/google/android/location/places/ui/k;->am:I

    add-int/2addr v0, v3

    const/high16 v3, 0x42900000    # 72.0f

    iget-object v4, v9, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v3, v4}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v3

    sub-int v3, v0, v3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    iget-object v4, v9, Lcom/google/android/location/places/ui/k;->aj:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v8, v3

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, v9, Lcom/google/android/location/places/ui/k;->i:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v9, Lcom/google/android/location/places/ui/k;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->P()V

    .line 271
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iget v1, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    iget v2, p0, Lcom/google/android/location/places/ui/ae;->at:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(I)V

    .line 272
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const v7, 0x7f0d0133

    const v6, 0x7f0d0131

    .line 122
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    check-cast v0, Lcom/google/android/location/places/ui/PlacePickerActivity;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->f()Lcom/google/android/location/places/ui/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    .line 125
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    check-cast v0, Lcom/google/android/location/places/ui/PlacePickerActivity;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->e()Lcom/google/android/location/places/ui/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->b:Lcom/google/android/location/places/ui/q;

    .line 126
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    check-cast v0, Lcom/google/android/location/places/ui/PlacePickerActivity;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->d()Lcom/google/android/location/places/ui/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    .line 128
    const v0, 0x7f1002df

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/ae;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->h:Ljava/lang/String;

    .line 129
    const v0, 0x7f1002e0

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/ae;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->i:Ljava/lang/String;

    .line 130
    const v0, 0x7f1002db

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/ae;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->aj:Ljava/lang/String;

    .line 131
    const v0, 0x7f1002dc

    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/ae;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->ak:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->al:Landroid/view/ViewGroup;

    .line 135
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->al:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 136
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->al:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->al:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/location/places/ui/ae;->ao:I

    .line 137
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->al:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->al:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/location/places/ui/ae;->ap:I

    .line 138
    iget v0, p0, Lcom/google/android/location/places/ui/ae;->ao:I

    iput v0, p0, Lcom/google/android/location/places/ui/ae;->aq:I

    .line 139
    iget v0, p0, Lcom/google/android/location/places/ui/ae;->ap:I

    iput v0, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    .line 140
    iget v0, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    const/high16 v1, 0x42900000    # 72.0f

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v1, v2}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/location/places/ui/ae;->at:I

    .line 142
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v0, v0, Lcom/google/android/location/places/ui/r;->c:Z

    if-eqz v0, :cond_3

    .line 143
    iget v0, p0, Lcom/google/android/location/places/ui/ae;->at:I

    iput v0, p0, Lcom/google/android/location/places/ui/ae;->as:I

    .line 149
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    const v1, 0x7f0d012a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/MarkerMapFragment;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 151
    const/high16 v0, 0x42400000    # 48.0f

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v0, v1}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v0

    .line 152
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iget v2, p0, Lcom/google/android/location/places/ui/ae;->aq:I

    iget v3, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    iget v4, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    iget v5, p0, Lcom/google/android/location/places/ui/ae;->as:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(IIII)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 155
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/ae;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/k;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    .line 157
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/google/android/location/places/ui/k;

    invoke-direct {v0}, Lcom/google/android/location/places/ui/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    .line 159
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/ae;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->b:Lcom/google/android/location/places/ui/q;

    iput-object v1, v0, Lcom/google/android/location/places/ui/k;->al:Lcom/google/android/location/places/ui/q;

    iget v1, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    iget v2, p0, Lcom/google/android/location/places/ui/ae;->as:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/location/places/ui/k;->ao:I

    iget v1, p0, Lcom/google/android/location/places/ui/ae;->aq:I

    iget v2, p0, Lcom/google/android/location/places/ui/ae;->as:I

    iput v1, v0, Lcom/google/android/location/places/ui/k;->an:I

    iput v2, v0, Lcom/google/android/location/places/ui/k;->am:I

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v1, v1, Lcom/google/android/location/places/ui/r;->e:Z

    iput-boolean v1, v0, Lcom/google/android/location/places/ui/k;->aq:Z

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v1, v1, Lcom/google/android/location/places/ui/r;->c:Z

    iput-boolean v1, v0, Lcom/google/android/location/places/ui/k;->ar:Z

    .line 168
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/ae;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/be;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    .line 170
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    if-nez v0, :cond_1

    .line 171
    invoke-static {}, Lcom/google/android/location/places/ui/be;->a()Lcom/google/android/location/places/ui/be;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    .line 172
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/ae;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v0, v6, v1}, Landroid/support/v4/app/z;->a(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->b:Lcom/google/android/location/places/ui/q;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/be;->a(Lcom/google/android/location/places/ui/q;)Lcom/google/android/location/places/ui/be;

    .line 177
    if-nez p1, :cond_4

    .line 178
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-object v0, v0, Lcom/google/android/location/places/ui/r;->f:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    .line 188
    :cond_2
    :goto_1
    return-void

    .line 145
    :cond_3
    iget v0, p0, Lcom/google/android/location/places/ui/ae;->ar:I

    int-to-double v0, v0

    const-wide v2, 0x3fe3c6a7ef9db22dL    # 0.618

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/google/android/location/places/ui/ae;->as:I

    goto/16 :goto_0

    .line 182
    :cond_4
    const-string v0, "waiting_for_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    .line 183
    const-string v0, "displaying_search_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    .line 184
    const-string v0, "last_exploration_bound"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->ay:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 185
    const-string v0, "last_search_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->az:Ljava/lang/String;

    .line 186
    const-string v0, "last_search_bound"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object v0, p0, Lcom/google/android/location/places/ui/ae;->aA:Lcom/google/android/gms/maps/model/LatLngBounds;

    goto :goto_1
.end method

.method public final c(Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 544
    return-void
.end method

.method public final d()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 192
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 194
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v1, p0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/ay;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    invoke-virtual {v2}, Lcom/google/android/location/places/ui/k;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/ui/be;->a(Landroid/widget/ListView;)V

    .line 197
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-boolean v1, v1, Lcom/google/android/location/places/ui/r;->e:Z

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    .line 202
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    if-eqz v1, :cond_4

    .line 203
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->U()V

    .line 204
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->az:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->aA:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->az:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->aA:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v3, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v3}, Lcom/google/android/location/places/ui/MarkerMapFragment;->V()V

    iget-object v3, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v3, v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    iget-object v3, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-object v4, p0, Lcom/google/android/location/places/ui/ae;->aj:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/android/location/places/ui/k;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/location/places/ui/aw;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;)V

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/ad;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 227
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->f:Lcom/google/android/location/places/ui/be;

    invoke-virtual {v1, p0}, Lcom/google/android/location/places/ui/be;->a(Lcom/google/android/location/places/ui/bh;)Lcom/google/android/location/places/ui/be;

    .line 228
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iput-object p0, v1, Lcom/google/android/location/places/ui/k;->ak:Lcom/google/android/location/places/ui/n;

    .line 229
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/ae;->Q()V

    .line 232
    :cond_1
    return-void

    .line 207
    :cond_2
    iput-boolean v0, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    .line 222
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 211
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    if-eqz v1, :cond_5

    .line 212
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->T()V

    .line 213
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->g:Lcom/google/android/location/places/ui/k;

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/ui/k;->b(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->X()V

    goto :goto_0

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->ay:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v1, :cond_6

    .line 216
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/ad;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 217
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->ay:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    goto :goto_0

    .line 218
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-object v1, v1, Lcom/google/android/location/places/ui/r;->f:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v1, :cond_3

    .line 219
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/ad;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 220
    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    iget-object v2, p0, Lcom/google/android/location/places/ui/ae;->a:Lcom/google/android/location/places/ui/r;

    iget-object v2, v2, Lcom/google/android/location/places/ui/r;->f:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    goto :goto_0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 237
    const-string v0, "waiting_for_location"

    iget-boolean v1, p0, Lcom/google/android/location/places/ui/ae;->aw:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v0, "displaying_search_results"

    iget-boolean v1, p0, Lcom/google/android/location/places/ui/ae;->ax:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 239
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->ay:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "last_exploration_bound"

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->ay:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->az:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "last_search_query"

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->az:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->aA:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "last_search_bound"

    iget-object v1, p0, Lcom/google/android/location/places/ui/ae;->aA:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    :cond_2
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/aw;->a()V

    .line 254
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->c:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/ay;)V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/google/android/location/places/ui/ae;->e:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/ad;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 260
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 261
    return-void
.end method
