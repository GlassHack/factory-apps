.class public final Lcom/google/b/a/a/f;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Lcom/google/b/a/a/g;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/a/f;->a:I

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/f;->b:Ljava/lang/String;

    .line 397
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/f;->f:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/a/f;->h:Lcom/google/b/a/a/g;

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/f;->i:I

    .line 358
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 468
    iget v0, p0, Lcom/google/b/a/a/f;->i:I

    if-gez v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/google/b/a/a/f;->b()I

    .line 472
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/f;->i:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 355
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    iput-boolean v1, p0, Lcom/google/b/a/a/f;->c:Z

    iput v0, p0, Lcom/google/b/a/a/f;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/b/a/a/f;->d:Z

    iput-object v0, p0, Lcom/google/b/a/a/f;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/b/a/a/f;->e:Z

    iput-object v0, p0, Lcom/google/b/a/a/f;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/b/a/a/g;

    invoke-direct {v0}, Lcom/google/b/a/a/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v1, p0, Lcom/google/b/a/a/f;->g:Z

    iput-object v0, p0, Lcom/google/b/a/a/f;->h:Lcom/google/b/a/a/g;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/b/a/a/f;->c:Z

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/f;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 454
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/f;->d:Z

    if-eqz v0, :cond_1

    .line 455
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 457
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/f;->e:Z

    if-eqz v0, :cond_2

    .line 458
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/a/f;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 460
    :cond_2
    iget-boolean v0, p0, Lcom/google/b/a/a/f;->g:Z

    if-eqz v0, :cond_3

    .line 461
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/b/a/a/f;->h:Lcom/google/b/a/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 463
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 477
    const/4 v0, 0x0

    .line 478
    iget-boolean v1, p0, Lcom/google/b/a/a/f;->c:Z

    if-eqz v1, :cond_0

    .line 479
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/f;->a:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 482
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/f;->d:Z

    if-eqz v1, :cond_1

    .line 483
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 486
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/f;->e:Z

    if-eqz v1, :cond_2

    .line 487
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/a/f;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 490
    :cond_2
    iget-boolean v1, p0, Lcom/google/b/a/a/f;->g:Z

    if-eqz v1, :cond_3

    .line 491
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/b/a/a/f;->h:Lcom/google/b/a/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 494
    :cond_3
    iput v0, p0, Lcom/google/b/a/a/f;->i:I

    .line 495
    return v0
.end method
