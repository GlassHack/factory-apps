.class public Lcom/google/android/location/places/ui/MarkerMapFragment;
.super Lcom/google/android/gms/maps/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/gms/maps/h;
.implements Lcom/google/android/gms/maps/i;
.implements Lcom/google/android/gms/maps/j;


# instance fields
.field a:Landroid/graphics/Point;

.field private aj:Landroid/view/View;

.field private ak:Lcom/google/android/gms/maps/model/j;

.field private al:Landroid/support/v4/view/q;

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:Lcom/google/android/location/places/ui/ad;

.field private ar:Z

.field private as:Z

.field private final b:Landroid/support/v4/f/q;

.field private c:Lcom/google/android/gms/maps/model/a;

.field private d:Lcom/google/android/location/places/ui/q;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gms/maps/p;-><init>()V

    .line 104
    new-instance v0, Landroid/support/v4/f/q;

    invoke-direct {v0}, Landroid/support/v4/f/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->b:Landroid/support/v4/f/q;

    .line 105
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/MarkerMapFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/MarkerMapFragment;)Lcom/google/android/location/places/ui/ad;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    return-object v0
.end method

.method private b(Z)V
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/s;

    move-result-object v0

    .line 401
    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/maps/s;->a:Lcom/google/android/gms/maps/internal/cf;

    invoke-interface {v1, p1}, Lcom/google/android/gms/maps/internal/cf;->h(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/maps/s;->a:Lcom/google/android/gms/maps/internal/cf;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/internal/cf;->i(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 401
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 402
    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method


# virtual methods
.method public final P()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ar:Z

    if-nez v0, :cond_0

    .line 252
    iput-boolean v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ar:Z

    .line 253
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f040010

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 254
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 255
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f040011

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 259
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 260
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 267
    :cond_0
    return-void
.end method

.method public final Q()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ar:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f04000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 273
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 274
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 284
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ar:Z

    .line 286
    :cond_1
    return-void
.end method

.method public final R()Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->a:Landroid/graphics/Point;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->e()Lcom/google/android/gms/maps/n;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->a:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/n;->a(Landroid/graphics/Point;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final S()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->e()Lcom/google/android/gms/maps/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/n;->a()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->e:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final T()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->as:Z

    if-nez v0, :cond_0

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->as:Z

    .line 307
    invoke-virtual {p0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    .line 308
    invoke-direct {p0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Z)V

    .line 309
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_0
    return-void
.end method

.method public final U()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 316
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->as:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Z)V

    .line 318
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 319
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->as:Z

    .line 322
    :cond_0
    return-void
.end method

.method public final V()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "clearPlacesOnMap must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/k;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Landroid/support/v4/f/q;->clear()V

    .line 347
    return-void

    .line 345
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final W()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ak:Lcom/google/android/gms/maps/model/j;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ak:Lcom/google/android/gms/maps/model/j;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/j;->a()V

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ak:Lcom/google/android/gms/maps/model/j;

    .line 396
    :cond_0
    return-void
.end method

.method public final X()V
    .locals 8

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->c()Landroid/location/Location;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_1

    .line 428
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v1, v2}, Lcom/google/android/location/places/ui/ad;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 437
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v1

    new-instance v2, Lcom/google/android/location/places/ui/y;

    invoke-direct {v2, p0, v0}, Lcom/google/android/location/places/ui/y;-><init>(Lcom/google/android/location/places/ui/MarkerMapFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/k;)V

    .line 454
    new-instance v1, Lcom/google/android/location/places/ui/z;

    invoke-direct {v1, p0, v0}, Lcom/google/android/location/places/ui/z;-><init>(Lcom/google/android/location/places/ui/MarkerMapFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 492
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/google/android/location/x;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/p;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->f:Landroid/view/View;

    .line 165
    new-instance v0, Lcom/google/android/location/places/ui/bl;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v0, v1}, Lcom/google/android/location/places/ui/bl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->e:Landroid/widget/FrameLayout;

    .line 166
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->e:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final a(IIII)Lcom/google/android/location/places/ui/MarkerMapFragment;
    .locals 7

    .prologue
    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/4 v1, 0x0

    .line 108
    iput p1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->am:I

    .line 109
    iput p2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->an:I

    .line 110
    iput p3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    .line 111
    iput p4, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    .line 112
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    iget v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    iget v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/maps/c;->a(II)V

    .line 115
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    iget v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x41900000    # 18.0f

    iget-object v4, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v3, v4}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    iget v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 120
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v5, v2}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    iget-object v4, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v5, v4}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    iget v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->an:I

    iget v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v6, v2}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v2

    sub-int v2, v0, v2

    .line 127
    iget v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->an:I

    iget v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    add-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v6, v3}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 129
    if-gez v2, :cond_0

    move v2, v1

    .line 132
    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->i:Landroid/view/View;

    invoke-virtual {v3, v1, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    iget v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->am:I

    div-int/lit8 v0, v0, 0x2

    .line 138
    iget v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->an:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ao:I

    iget v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 139
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->a:Landroid/graphics/Point;

    .line 141
    return-object p0
.end method

.method public final a(Lcom/google/android/location/places/ui/ad;)Lcom/google/android/location/places/ui/MarkerMapFragment;
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    .line 151
    return-object p0
.end method

.method public final a(Lcom/google/android/location/places/ui/q;)Lcom/google/android/location/places/ui/MarkerMapFragment;
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->d:Lcom/google/android/location/places/ui/q;

    .line 146
    return-object p0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->Q()V

    .line 502
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/p;->a(Landroid/app/Activity;)V

    .line 158
    invoke-static {p1}, Lcom/google/android/gms/maps/m;->a(Landroid/content/Context;)I

    .line 159
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;)V
    .locals 2

    .prologue
    .line 369
    const-string v0, "animateToFitPlace must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->f()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->f()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->b(Lcom/google/android/gms/maps/a;)V

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->e()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->b(Lcom/google/android/gms/maps/a;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .prologue
    .line 332
    const-string v0, "moveMapViewport must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 334
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLngBounds;)V
    .locals 3

    .prologue
    .line 326
    const-string v0, "moveMapViewport must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->am:I

    iget v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->an:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;II)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/a;)V

    .line 328
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 381
    const-string v0, "setCenterMarkerEnabled must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 382
    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->W()V

    .line 384
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a([Lcom/google/android/gms/location/places/h;)V
    .locals 8

    .prologue
    .line 355
    const-string v0, "setPlacesOnMap must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 357
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 358
    aget-object v2, p1, v1

    .line 359
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v3

    new-instance v0, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/location/places/h;->e()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->d:Lcom/google/android/location/places/ui/q;

    invoke-virtual {v2}, Lcom/google/android/gms/location/places/h;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/PlaceType;

    iget-object v7, v5, Lcom/google/android/location/places/ui/q;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/maps/model/b;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->c()Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/j;

    move-result-object v0

    .line 363
    iget-object v3, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->b:Landroid/support/v4/f/q;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/f/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, v5, Lcom/google/android/location/places/ui/q;->b:Landroid/support/v4/f/q;

    sget-object v5, Lcom/google/android/gms/location/places/PlaceType;->H:Lcom/google/android/gms/location/places/PlaceType;

    invoke-virtual {v5}, Lcom/google/android/gms/location/places/PlaceType;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_1

    .line 365
    :cond_2
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/j;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 508
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->b:Landroid/support/v4/f/q;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/j;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/f/q;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/places/h;

    .line 509
    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return v2

    .line 512
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    .line 513
    invoke-virtual {p0, v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/gms/location/places/h;)V

    .line 514
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v1, :cond_0

    .line 515
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v1, v0}, Lcom/google/android/location/places/ui/ad;->a(Lcom/google/android/gms/location/places/h;)V

    goto :goto_0
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ap:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/maps/c;->a(II)V

    .line 290
    return-void
.end method

.method public final b(Lcom/google/android/gms/location/places/h;)V
    .locals 3

    .prologue
    .line 407
    const-string v0, "markPlace must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ak:Lcom/google/android/gms/maps/model/j;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ak:Lcom/google/android/gms/maps/model/j;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/j;->a()V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ak:Lcom/google/android/gms/maps/model/j;

    .line 412
    :cond_0
    if-nez p1, :cond_1

    .line 418
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->e()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->c:Lcom/google/android/gms/maps/model/a;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/MarkerOptions;->a(Lcom/google/android/gms/maps/model/a;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->ak:Lcom/google/android/gms/maps/model/j;

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 2

    .prologue
    .line 338
    const-string v0, "moveMapViewport must be called on the UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/aj;->b(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/c;->b(Lcom/google/android/gms/maps/a;)V

    .line 340
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/p;->c(Landroid/os/Bundle;)V

    .line 174
    new-instance v0, Landroid/support/v4/view/q;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v0, v1, p0}, Landroid/support/v4/view/q;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->al:Landroid/support/v4/view/q;

    .line 175
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->al:Landroid/support/v4/view/q;

    iget-object v0, v0, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/r;

    invoke-interface {v0, p0}, Landroid/support/v4/view/r;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 177
    invoke-static {}, Lcom/google/android/gms/maps/model/b;->a()Lcom/google/android/gms/maps/model/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->c:Lcom/google/android/gms/maps/model/a;

    .line 178
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d012d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    .line 179
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d012b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->g:Landroid/view/View;

    .line 180
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d012c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->h:Landroid/view/View;

    .line 181
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d012e

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->i:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    new-instance v1, Lcom/google/android/location/places/ui/w;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/w;-><init>(Lcom/google/android/location/places/ui/MarkerMapFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 199
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aj:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->d(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->b()Z

    .line 207
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    :try_start_1
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->c(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    if-nez p0, :cond_1

    :try_start_2
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/aa;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 210
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    if-nez p0, :cond_2

    :try_start_3
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/av;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    if-nez p0, :cond_3

    :try_start_4
    iget-object v0, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/am;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 212
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/s;

    move-result-object v0

    :try_start_5
    iget-object v0, v0, Lcom/google/android/gms/maps/s;->a:Lcom/google/android/gms/maps/internal/cf;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/cf;->g(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 213
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->d()Lcom/google/android/gms/maps/s;

    move-result-object v0

    :try_start_6
    iget-object v0, v0, Lcom/google/android/gms/maps/s;->a:Lcom/google/android/gms/maps/internal/cf;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/cf;->e(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 218
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->f:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 220
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    if-eqz p1, :cond_0

    .line 227
    const-string v0, "last_camera_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/CameraPosition;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->S:Landroid/view/View;

    new-instance v2, Lcom/google/android/location/places/ui/x;

    invoke-direct {v2, p0, v0}, Lcom/google/android/location/places/ui/x;-><init>(Lcom/google/android/location/places/ui/MarkerMapFragment;Lcom/google/android/gms/maps/model/CameraPosition;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/google/android/location/places/ui/bn;

    invoke-direct {v3, v1, v2}, Lcom/google/android/location/places/ui/bn;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 238
    :cond_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 207
    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 209
    :cond_1
    :try_start_7
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    new-instance v2, Lcom/google/android/gms/maps/e;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/e;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/h;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/aa;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 210
    :cond_2
    :try_start_8
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    new-instance v2, Lcom/google/android/gms/maps/g;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/g;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/j;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/av;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 211
    :cond_3
    :try_start_9
    iget-object v1, v0, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    new-instance v2, Lcom/google/android/gms/maps/f;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/maps/f;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/i;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/maps/internal/k;->a(Lcom/google/android/gms/maps/internal/am;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 212
    :catch_5
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 213
    :catch_6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/google/android/gms/maps/p;->d(Landroid/os/Bundle;)V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->c()Lcom/google/android/gms/maps/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 244
    if-eqz v0, :cond_0

    .line 245
    const-string v1, "last_camera_position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->as:Z

    if-eqz v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    .line 541
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1002d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1002de

    new-instance v2, Lcom/google/android/location/places/ui/ac;

    invoke-direct {v2, p0}, Lcom/google/android/location/places/ui/ac;-><init>(Lcom/google/android/location/places/ui/MarkerMapFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1002d3

    new-instance v2, Lcom/google/android/location/places/ui/ab;

    invoke-direct {v2, p0}, Lcom/google/android/location/places/ui/ab;-><init>(Lcom/google/android/location/places/ui/MarkerMapFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/places/ui/aa;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/aa;-><init>(Lcom/google/android/location/places/ui/MarkerMapFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 539
    :cond_1
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 566
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->X()V

    goto :goto_0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->c()V

    .line 616
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 633
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->c()V

    .line 608
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->c()V

    .line 601
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->c()V

    .line 593
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 573
    iget-boolean v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->as:Z

    if-eqz v1, :cond_0

    .line 584
    :goto_0
    return v0

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->al:Landroid/support/v4/view/q;

    iget-object v1, v1, Landroid/support/v4/view/q;->a:Landroid/support/v4/view/r;

    invoke-interface {v1, p2}, Landroid/support/v4/view/r;->a(Landroid/view/MotionEvent;)Z

    .line 578
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v0, :cond_1

    .line 580
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->P()V

    .line 584
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r_()V
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->as:Z

    if-eqz v0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/google/android/location/places/ui/MarkerMapFragment;->aq:Lcom/google/android/location/places/ui/ad;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/ad;->R()V

    goto :goto_0
.end method
