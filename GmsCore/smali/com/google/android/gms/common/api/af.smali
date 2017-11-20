.class final Lcom/google/android/gms/common/api/af;
.super Landroid/support/v4/a/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l;
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field public final i:Lcom/google/android/gms/common/api/j;

.field j:Z

.field private k:Lcom/google/android/gms/common/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/j;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p1}, Landroid/support/v4/a/g;-><init>(Landroid/content/Context;)V

    .line 401
    iput-object p2, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    .line 402
    return-void
.end method

.method private b(Lcom/google/android/gms/common/b;)V
    .locals 1

    .prologue
    .line 458
    iput-object p1, p0, Lcom/google/android/gms/common/api/af;->k:Lcom/google/android/gms/common/b;

    .line 459
    iget-boolean v0, p0, Landroid/support/v4/a/g;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/a/g;->e:Z

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/af;->a(Ljava/lang/Object;)V

    .line 462
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Landroid/support/v4/a/g;->a()V

    .line 416
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/l;)V

    .line 417
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/m;)V

    .line 418
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->k:Lcom/google/android/gms/common/b;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->k:Lcom/google/android/gms/common/b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/af;->a(Ljava/lang/Object;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/af;->j:Z

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 425
    :cond_1
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 449
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/af;->j:Z

    .line 444
    sget-object v0, Lcom/google/android/gms/common/b;->a:Lcom/google/android/gms/common/b;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/af;->b(Lcom/google/android/gms/common/b;)V

    .line 445
    return-void
.end method

.method public final a(Lcom/google/android/gms/common/b;)V
    .locals 1

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/af;->j:Z

    .line 454
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/af;->b(Lcom/google/android/gms/common/b;)V

    .line 455
    return-void
.end method

.method protected final c()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 430
    return-void
.end method

.method protected final e()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/api/af;->k:Lcom/google/android/gms/common/b;

    .line 435
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/af;->j:Z

    .line 436
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/l;)V

    .line 437
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/m;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/gms/common/api/af;->i:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->b()V

    .line 439
    return-void
.end method
