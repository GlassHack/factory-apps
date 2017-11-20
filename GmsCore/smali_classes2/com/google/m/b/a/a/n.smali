.class public final Lcom/google/m/b/a/a/n;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/google/m/b/a/a/p;

.field private c:Z

.field private d:Lcom/google/m/b/a/a/q;

.field private e:Z

.field private f:Lcom/google/protobuf/a/a;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5499
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 5504
    iput-object v0, p0, Lcom/google/m/b/a/a/n;->b:Lcom/google/m/b/a/a/p;

    .line 5524
    iput-object v0, p0, Lcom/google/m/b/a/a/n;->d:Lcom/google/m/b/a/a/q;

    .line 5544
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/a/n;->f:Lcom/google/protobuf/a/a;

    .line 5584
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/n;->g:I

    .line 5499
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 5587
    iget v0, p0, Lcom/google/m/b/a/a/n;->g:I

    if-gez v0, :cond_0

    .line 5589
    invoke-virtual {p0}, Lcom/google/m/b/a/a/n;->b()I

    .line 5591
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/n;->g:I

    return v0
.end method

.method public final a(Lcom/google/m/b/a/a/p;)Lcom/google/m/b/a/a/n;
    .locals 1

    .prologue
    .line 5508
    if-nez p1, :cond_0

    .line 5509
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5511
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/n;->a:Z

    .line 5512
    iput-object p1, p0, Lcom/google/m/b/a/a/n;->b:Lcom/google/m/b/a/a/p;

    .line 5513
    return-object p0
.end method

.method public final a(Lcom/google/m/b/a/a/q;)Lcom/google/m/b/a/a/n;
    .locals 1

    .prologue
    .line 5528
    if-nez p1, :cond_0

    .line 5529
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5531
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/a/n;->c:Z

    .line 5532
    iput-object p1, p0, Lcom/google/m/b/a/a/n;->d:Lcom/google/m/b/a/a/q;

    .line 5533
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 5496
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
    new-instance v0, Lcom/google/m/b/a/a/p;

    invoke-direct {v0}, Lcom/google/m/b/a/a/p;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/n;->a(Lcom/google/m/b/a/a/p;)Lcom/google/m/b/a/a/n;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/m/b/a/a/q;

    invoke-direct {v0}, Lcom/google/m/b/a/a/q;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/a/n;->a(Lcom/google/m/b/a/a/q;)Lcom/google/m/b/a/a/n;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/m/b/a/a/n;->e:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/n;->f:Lcom/google/protobuf/a/a;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 5573
    iget-boolean v0, p0, Lcom/google/m/b/a/a/n;->a:Z

    if-eqz v0, :cond_0

    .line 5574
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/n;->b:Lcom/google/m/b/a/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 5576
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/a/n;->c:Z

    if-eqz v0, :cond_1

    .line 5577
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/a/n;->d:Lcom/google/m/b/a/a/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 5579
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/n;->e:Z

    if-eqz v0, :cond_2

    .line 5580
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/n;->f:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 5582
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 5596
    const/4 v0, 0x0

    .line 5597
    iget-boolean v1, p0, Lcom/google/m/b/a/a/n;->a:Z

    if-eqz v1, :cond_0

    .line 5598
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/n;->b:Lcom/google/m/b/a/a/p;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 5601
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/a/n;->c:Z

    if-eqz v1, :cond_1

    .line 5602
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/a/n;->d:Lcom/google/m/b/a/a/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5605
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/a/n;->e:Z

    if-eqz v1, :cond_2

    .line 5606
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/a/n;->f:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5609
    :cond_2
    iput v0, p0, Lcom/google/m/b/a/a/n;->g:I

    .line 5610
    return v0
.end method
