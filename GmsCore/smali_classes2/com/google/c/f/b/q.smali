.class public final Lcom/google/c/f/b/q;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/c/f/b/h;

.field public b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 506
    iput-object v0, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    iput-object v0, p0, Lcom/google/c/f/b/q;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/c/f/b/q;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/b/q;->G:I

    .line 507
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 531
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    if-eqz v1, :cond_0

    .line 533
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/google/c/f/b/q;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 537
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/c/f/b/q;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 540
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 482
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/c/f/b/q;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/c/f/b/h;

    invoke-direct {v0}, Lcom/google/c/f/b/h;-><init>()V

    iput-object v0, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    :cond_1
    iget-object v0, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/f/b/q;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    if-eqz v0, :cond_0

    .line 521
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/c/f/b/q;->a:Lcom/google/c/f/b/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/google/c/f/b/q;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 524
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/c/f/b/q;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 526
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 527
    return-void
.end method
