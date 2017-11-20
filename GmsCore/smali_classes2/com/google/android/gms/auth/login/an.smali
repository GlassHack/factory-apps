.class public final Lcom/google/android/gms/auth/login/an;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Lcom/google/android/gms/auth/login/al;

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 269
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->a:Ljava/lang/String;

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->b:Ljava/lang/String;

    .line 303
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->c:Ljava/lang/String;

    .line 320
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->e:Ljava/lang/String;

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->g:Lcom/google/android/gms/auth/login/al;

    .line 357
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->h:Ljava/lang/String;

    .line 373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    .line 450
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/login/an;->n:I

    .line 264
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/google/android/gms/auth/login/an;->n:I

    if-gez v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/google/android/gms/auth/login/an;->b()I

    .line 457
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/login/an;->n:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/an;->j:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/an;->k:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/an;->l:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/an;->d:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/android/gms/auth/login/al;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/al;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/an;->f:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->g:Lcom/google/android/gms/auth/login/al;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/android/gms/auth/login/an;->m:Z

    iput-object v0, p0, Lcom/google/android/gms/auth/login/an;->h:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/android/gms/auth/login/ao;

    invoke-direct {v0}, Lcom/google/android/gms/auth/login/ao;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->j:Z

    if-eqz v0, :cond_0

    .line 428
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 430
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->k:Z

    if-eqz v0, :cond_1

    .line 431
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 433
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->l:Z

    if-eqz v0, :cond_2

    .line 434
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 436
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->d:Z

    if-eqz v0, :cond_3

    .line 437
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 439
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->f:Z

    if-eqz v0, :cond_4

    .line 440
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->g:Lcom/google/android/gms/auth/login/al;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 442
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/login/an;->m:Z

    if-eqz v0, :cond_5

    .line 443
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 445
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/ao;

    .line 446
    const/4 v2, 0x7

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 448
    :cond_6
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/an;->j:Z

    if-eqz v1, :cond_0

    .line 464
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 467
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/an;->k:Z

    if-eqz v1, :cond_1

    .line 468
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/login/an;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 471
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/an;->l:Z

    if-eqz v1, :cond_2

    .line 472
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/login/an;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 475
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/an;->d:Z

    if-eqz v1, :cond_3

    .line 476
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/login/an;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 479
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/an;->f:Z

    if-eqz v1, :cond_4

    .line 480
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/login/an;->g:Lcom/google/android/gms/auth/login/al;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 483
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/auth/login/an;->m:Z

    if-eqz v1, :cond_5

    .line 484
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/login/an;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 487
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/auth/login/an;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/login/ao;

    .line 488
    const/4 v3, 0x7

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 490
    goto :goto_0

    .line 491
    :cond_6
    iput v1, p0, Lcom/google/android/gms/auth/login/an;->n:I

    .line 492
    return v1
.end method
