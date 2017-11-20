.class public final Lcom/google/android/location/places/ui/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/places/ui/ad;
.implements Lcom/google/android/location/places/ui/at;
.implements Lcom/google/android/location/places/ui/ay;
.implements Lcom/google/android/location/places/ui/v;


# instance fields
.field private a:Lcom/google/android/location/places/ui/j;

.field private aj:Z

.field private ak:Z

.field private al:Lcom/google/android/gms/maps/model/LatLng;

.field private b:Lcom/google/android/location/places/ui/aw;

.field private c:Lcom/google/android/location/places/ui/MarkerMapFragment;

.field private d:Lcom/google/android/location/places/ui/s;

.field private e:Lcom/google/android/location/places/ui/ao;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/app/AlertDialog;

.field private h:Z

.field private i:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 37
    return-void
.end method

.method private Z()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 397
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    .line 399
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    const v1, 0x7f1002d2

    invoke-virtual {p0, v1}, Lcom/google/android/location/places/ui/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 401
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/google/android/location/places/ui/i;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/i;-><init>(Lcom/google/android/location/places/ui/a;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 413
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/a;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/location/places/ui/a;->g:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static a()Lcom/google/android/location/places/ui/a;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/location/places/ui/a;

    invoke-direct {v0}, Lcom/google/android/location/places/ui/a;-><init>()V

    .line 66
    return-object v0
.end method

.method static synthetic a(Lcom/google/android/location/places/ui/a;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/a;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/s;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->d:Lcom/google/android/location/places/ui/s;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/location/places/ui/a;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/google/android/location/places/ui/a;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/location/places/ui/a;)Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    return v0
.end method

.method static synthetic f(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/j;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->a:Lcom/google/android/location/places/ui/j;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/location/places/ui/a;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->g:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/location/places/ui/a;)Lcom/google/android/location/places/ui/aw;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/location/places/ui/a;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/location/places/ui/a;->Z()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->Q()V

    .line 201
    return-void
.end method

.method public final Q()V
    .locals 6

    .prologue
    .line 206
    new-instance v1, Lcom/google/android/location/places/ui/b;

    invoke-direct {v1, p0}, Lcom/google/android/location/places/ui/b;-><init>(Lcom/google/android/location/places/ui/a;)V

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->h:Z

    .line 221
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

    .line 223
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->R()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->al:Lcom/google/android/gms/maps/model/LatLng;

    .line 224
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    iget-object v1, p0, Lcom/google/android/location/places/ui/a;->al:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 225
    return-void
.end method

.method public final R()V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public final S()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public final T()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final U()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->a:Lcom/google/android/location/places/ui/j;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/j;->a()V

    .line 359
    return-void
.end method

.method public final V()V
    .locals 0

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->Q()V

    .line 387
    return-void
.end method

.method public final W()V
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    .line 418
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()V

    .line 419
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->a:Lcom/google/android/location/places/ui/j;

    invoke-interface {v0}, Lcom/google/android/location/places/ui/j;->a()V

    .line 420
    return-void
.end method

.method public final X()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    .line 425
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->c()V

    .line 426
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->Q()V

    .line 427
    return-void
.end method

.method public final Y()V
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->X()V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->U()V

    goto :goto_0
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    const v0, 0x7f03006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->i:Landroid/view/ViewGroup;

    .line 85
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->i:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 71
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

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 75
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/location/places/ui/j;

    move-object v1, v0

    iput-object v1, p0, Lcom/google/android/location/places/ui/a;->a:Lcom/google/android/location/places/ui/j;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    return-void

    .line 77
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement AddAPlaceFragment.Listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lcom/google/android/gms/location/places/UserAddedPlace;)V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v1, Lcom/google/android/location/places/ui/e;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/ui/e;-><init>(Lcom/google/android/location/places/ui/a;Lcom/google/android/gms/location/places/UserAddedPlace;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method public final a(Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public final a(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    if-nez v0, :cond_0

    .line 240
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/a;->aj:Z

    if-eqz v0, :cond_1

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->aj:Z

    .line 242
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->b(Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceType;)V
    .locals 7

    .prologue
    .line 392
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    iget-object v6, p0, Lcom/google/android/location/places/ui/a;->al:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/places/ui/aw;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/location/places/PlaceType;Lcom/google/android/gms/maps/model/LatLng;)V

    .line 393
    invoke-direct {p0}, Lcom/google/android/location/places/ui/a;->Z()V

    .line 394
    return-void
.end method

.method public final a([Lcom/google/android/gms/location/places/AutocompletePrediction;)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public final a([Lcom/google/android/gms/location/places/h;)V
    .locals 0

    .prologue
    .line 279
    return-void
.end method

.method public final b(Lcom/google/android/gms/location/places/h;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v1, Lcom/google/android/location/places/ui/c;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/ui/c;-><init>(Lcom/google/android/location/places/ui/a;Lcom/google/android/gms/location/places/h;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 269
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->P()V

    .line 196
    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0d0109

    const/4 v5, 0x1

    const/high16 v4, 0x42400000    # 48.0f

    .line 90
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 92
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    check-cast v0, Lcom/google/android/location/places/ui/PlacePickerActivity;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/PlacePickerActivity;->f()Lcom/google/android/location/places/ui/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    const v1, 0x7f0d0128

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 97
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 98
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v1, v0

    .line 100
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/p;

    const v3, 0x7f0d012a

    invoke-virtual {v0, v3}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/MarkerMapFragment;

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 102
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v4, v0}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v0

    .line 103
    iget-object v3, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    invoke-static {v4, v3}, Lcom/google/android/location/places/ui/bm;->a(FLandroid/content/Context;)I

    move-result v3

    .line 104
    iget-object v4, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v4, v2, v1, v0, v3}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(IIII)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 106
    if-eqz p1, :cond_4

    .line 107
    const-string v0, "editing_place"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    .line 108
    const-string v0, "waiting_for_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->aj:Z

    .line 109
    const-string v0, "last_center_position"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->al:Lcom/google/android/gms/maps/model/LatLng;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "place_editor_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/ao;

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    .line 112
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "location_selector_fragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/ui/s;

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->d:Lcom/google/android/location/places/ui/s;

    .line 118
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/google/android/location/places/ui/ao;->a()Lcom/google/android/location/places/ui/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    const-string v2, "place_editor_fragment"

    invoke-virtual {v0, v6, v1, v2}, Landroid/support/v4/app/z;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->a()Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    .line 137
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    invoke-virtual {v0, p0}, Lcom/google/android/location/places/ui/ao;->a(Lcom/google/android/location/places/ui/at;)Lcom/google/android/location/places/ui/ao;

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->d:Lcom/google/android/location/places/ui/s;

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->d:Lcom/google/android/location/places/ui/s;

    iput-object p0, v0, Lcom/google/android/location/places/ui/s;->a:Lcom/google/android/location/places/ui/v;

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0, p0}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/ay;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/ad;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 148
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->V()V

    .line 149
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->W()V

    .line 150
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, v5}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Z)V

    .line 151
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->U()V

    .line 153
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    if-nez v0, :cond_3

    .line 154
    iget-boolean v0, p0, Lcom/google/android/location/places/ui/a;->aj:Z

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/MarkerMapFragment;->X()V

    .line 158
    :cond_3
    return-void

    .line 115
    :cond_4
    iput-boolean v5, p0, Lcom/google/android/location/places/ui/a;->aj:Z

    goto :goto_0

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->d:Lcom/google/android/location/places/ui/s;

    if-nez v0, :cond_6

    .line 129
    new-instance v0, Lcom/google/android/location/places/ui/s;

    invoke-direct {v0}, Lcom/google/android/location/places/ui/s;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->d:Lcom/google/android/location/places/ui/s;

    .line 131
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/places/ui/a;->d:Lcom/google/android/location/places/ui/s;

    const-string v2, "location_selector_fragment"

    invoke-virtual {v0, v6, v1, v2}, Landroid/support/v4/app/z;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    goto :goto_1
.end method

.method public final c(Lcom/google/android/gms/location/places/h;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->D:Landroid/support/v4/app/j;

    new-instance v1, Lcom/google/android/location/places/ui/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/location/places/ui/d;-><init>(Lcom/google/android/location/places/ui/a;Lcom/google/android/gms/location/places/h;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "editing_place"

    iget-boolean v1, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    const-string v0, "waiting_for_location"

    iget-boolean v1, p0, Lcom/google/android/location/places/ui/a;->aj:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    const-string v0, "last_center_position"

    iget-object v1, p0, Lcom/google/android/location/places/ui/a;->al:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    return-void
.end method

.method public final d(Lcom/google/android/gms/location/places/h;)V
    .locals 4

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/places/ui/a;->ak:Z

    .line 365
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    if-nez v0, :cond_0

    .line 366
    invoke-static {}, Lcom/google/android/location/places/ui/ao;->a()Lcom/google/android/location/places/ui/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/location/places/ui/a;->l()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/z;

    move-result-object v0

    const v1, 0x7f0d0109

    iget-object v2, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    const-string v3, "place_editor_fragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/z;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->a()Landroid/support/v4/app/z;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/z;->b()I

    .line 375
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    invoke-virtual {v0, p0}, Lcom/google/android/location/places/ui/ao;->a(Lcom/google/android/location/places/ui/at;)Lcom/google/android/location/places/ui/ao;

    .line 376
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/ao;->a(Ljava/lang/String;)Lcom/google/android/location/places/ui/ao;

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->e:Lcom/google/android/location/places/ui/ao;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/ao;->a(Ljava/lang/String;)Lcom/google/android/location/places/ui/ao;

    goto :goto_0
.end method

.method public final f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0}, Lcom/google/android/location/places/ui/aw;->a()V

    .line 172
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->b:Lcom/google/android/location/places/ui/aw;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/aw;->a(Lcom/google/android/location/places/ui/ay;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->c:Lcom/google/android/location/places/ui/MarkerMapFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/location/places/ui/MarkerMapFragment;->a(Lcom/google/android/location/places/ui/ad;)Lcom/google/android/location/places/ui/MarkerMapFragment;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 181
    iput-object v1, p0, Lcom/google/android/location/places/ui/a;->f:Landroid/app/ProgressDialog;

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/google/android/location/places/ui/a;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 187
    iput-object v1, p0, Lcom/google/android/location/places/ui/a;->g:Landroid/app/AlertDialog;

    .line 190
    :cond_3
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 191
    return-void
.end method
