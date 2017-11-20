.class public Lcom/google/android/gms/maps/p;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/maps/r;

.field private b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 258
    new-instance v0, Lcom/google/android/gms/maps/r;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/r;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    .line 296
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/r;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/r;->a(Lcom/google/android/gms/maps/r;Landroid/app/Activity;)V

    .line 354
    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 363
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/r;->a(Lcom/google/android/gms/maps/r;Landroid/app/Activity;)V

    .line 367
    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    .line 368
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 369
    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/maps/r;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 371
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 376
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/r;->a(Landroid/os/Bundle;)V

    .line 377
    return-void
.end method

.method public final c()Lcom/google/android/gms/maps/c;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/r;->b()V

    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 322
    :goto_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 343
    :goto_1
    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    check-cast v0, Lcom/google/android/gms/maps/q;

    iget-object v0, v0, Lcom/google/android/gms/maps/q;->a:Lcom/google/android/gms/maps/internal/t;

    goto :goto_0

    .line 328
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/t;->a()Lcom/google/android/gms/maps/internal/k;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    if-nez v0, :cond_2

    move-object v0, v1

    .line 334
    goto :goto_1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Lcom/google/android/gms/maps/model/n;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/n;-><init>(Landroid/os/RemoteException;)V

    throw v1

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/maps/p;->b:Lcom/google/android/gms/maps/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/maps/p;->b:Lcom/google/android/gms/maps/c;

    iget-object v1, v1, Lcom/google/android/gms/maps/c;->a:Lcom/google/android/gms/maps/internal/k;

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/k;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/maps/internal/k;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 340
    :cond_3
    new-instance v1, Lcom/google/android/gms/maps/c;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/c;-><init>(Lcom/google/android/gms/maps/internal/k;)V

    iput-object v1, p0, Lcom/google/android/gms/maps/p;->b:Lcom/google/android/gms/maps/c;

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->b:Lcom/google/android/gms/maps/c;

    goto :goto_1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 420
    const-class v0, Lcom/google/android/gms/maps/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 422
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 423
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 429
    if-eqz p1, :cond_0

    .line 430
    const-class v0, Lcom/google/android/gms/maps/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 433
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 434
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    iget-object v1, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    invoke-interface {v0, p1}, Lcom/google/android/gms/e/l;->b(Landroid/os/Bundle;)V

    .line 435
    :cond_1
    :goto_0
    return-void

    .line 434
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/e/a;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/google/android/gms/e/a;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 441
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    .line 442
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    iget-object v1, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    invoke-interface {v0}, Lcom/google/android/gms/e/l;->c()V

    .line 400
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V

    .line 401
    return-void

    .line 399
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/e/a;->a(I)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    iget-object v1, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    invoke-interface {v0}, Lcom/google/android/gms/e/l;->e()V

    .line 412
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 413
    return-void
.end method

.method public final u()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->u()V

    .line 388
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/r;->a()V

    .line 389
    return-void
.end method

.method public final v()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    iget-object v1, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    invoke-interface {v0}, Lcom/google/android/gms/e/l;->b()V

    .line 394
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->v()V

    .line 395
    return-void

    .line 393
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/e/a;->a(I)V

    goto :goto_0
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/android/gms/maps/p;->a:Lcom/google/android/gms/maps/r;

    iget-object v1, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/e/a;->a:Lcom/google/android/gms/e/l;

    invoke-interface {v0}, Lcom/google/android/gms/e/l;->d()V

    .line 406
    :goto_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->w()V

    .line 407
    return-void

    .line 405
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/e/a;->a(I)V

    goto :goto_0
.end method
