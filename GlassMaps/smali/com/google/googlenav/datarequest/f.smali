.class public final Lcom/google/googlenav/datarequest/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Boolean;

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Boolean;

.field private o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 333
    const-class v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/datarequest/f;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/googlenav/datarequest/DataRequestDispatcher;
    .locals 5

    .prologue
    .line 443
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/datarequest/f;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/googlenav/datarequest/f;->e:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/googlenav/datarequest/f;->f:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    .line 446
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    const-string v1, "SYSTEM"

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget v1, p0, Lcom/google/googlenav/datarequest/f;->g:I

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;I)V

    .line 451
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->j:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->j:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->a(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->b(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V

    .line 457
    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 458
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->c(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->m:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 461
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->m:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->d(Lcom/google/googlenav/datarequest/DataRequestDispatcher;Z)V

    .line 465
    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    iget-object v0, v0, Lcom/google/googlenav/datarequest/DataRequestDispatcher;->f:Lcom/google/googlenav/datarequest/i;

    .line 466
    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->n:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 467
    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->n:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;Z)V

    .line 469
    :cond_5
    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->i:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 470
    iget-object v1, p0, Lcom/google/googlenav/datarequest/f;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/datarequest/i;->a(Lcom/google/googlenav/datarequest/i;Ljava/lang/String;)V

    .line 473
    :cond_6
    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    return-object v0
.end method

.method public final a(I)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 394
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 395
    :cond_0
    iput p1, p0, Lcom/google/googlenav/datarequest/f;->g:I

    .line 396
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 358
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/datarequest/f;->b:Ljava/lang/String;

    .line 360
    return-object p0
.end method

.method public final a(Z)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 382
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 383
    :cond_0
    iput-boolean p1, p0, Lcom/google/googlenav/datarequest/f;->f:Z

    .line 384
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 364
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 365
    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/datarequest/f;->c:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public final b(Z)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 400
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 401
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/datarequest/f;->j:Ljava/lang/Boolean;

    .line 402
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 370
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 371
    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/datarequest/f;->d:Ljava/lang/String;

    .line 372
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 376
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 377
    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/datarequest/f;->e:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;
    .locals 1

    .prologue
    .line 388
    sget-boolean v0, Lcom/google/googlenav/datarequest/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/datarequest/f;->o:Lcom/google/googlenav/datarequest/DataRequestDispatcher;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 389
    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/datarequest/f;->h:Ljava/lang/String;

    .line 390
    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lcom/google/googlenav/datarequest/f;
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/googlenav/datarequest/f;->i:Ljava/lang/String;

    .line 434
    return-object p0
.end method
