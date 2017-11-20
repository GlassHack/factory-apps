.class public final Lcom/google/c/f/c;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1495
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 1496
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/c/f/c;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/c/f/c;->G:I

    .line 1497
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1538
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 1539
    iget v1, p0, Lcom/google/c/f/c;->a:I

    if-eqz v1, :cond_0

    .line 1540
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/c/f/c;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1543
    :cond_0
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1471
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/c/f/c;->a:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1530
    iget v0, p0, Lcom/google/c/f/c;->a:I

    if-eqz v0, :cond_0

    .line 1531
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/c/f/c;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 1533
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 1534
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1507
    if-ne p1, p0, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return v0

    .line 1510
    :cond_1
    instance-of v2, p1, Lcom/google/c/f/c;

    if-nez v2, :cond_2

    move v0, v1

    .line 1511
    goto :goto_0

    .line 1513
    :cond_2
    check-cast p1, Lcom/google/c/f/c;

    .line 1514
    iget v2, p0, Lcom/google/c/f/c;->a:I

    iget v3, p1, Lcom/google/c/f/c;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 1515
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 1522
    iget v0, p0, Lcom/google/c/f/c;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 1524
    return v0
.end method
