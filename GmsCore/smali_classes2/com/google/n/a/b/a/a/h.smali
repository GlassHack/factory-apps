.class public final Lcom/google/n/a/b/a/a/h;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 1547
    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/h;->G:I

    .line 1548
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 1648
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 1649
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1650
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1653
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1654
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1657
    :cond_1
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1658
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1661
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1662
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1665
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1666
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1669
    :cond_4
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 1514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/h;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1629
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1632
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1634
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1635
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1637
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1638
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1640
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1641
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 1643
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 1644
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1563
    if-ne p1, p0, :cond_1

    .line 1564
    const/4 v0, 0x1

    .line 1605
    :cond_0
    :goto_0
    return v0

    .line 1566
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/h;

    if-eqz v1, :cond_0

    .line 1569
    check-cast p1, Lcom/google/n/a/b/a/a/h;

    .line 1570
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1571
    iget-object v1, p1, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1577
    :cond_2
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 1578
    iget-object v1, p1, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1584
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 1585
    iget-object v1, p1, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1591
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 1592
    iget-object v1, p1, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1598
    :cond_5
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 1599
    iget-object v1, p1, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1605
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/h;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 1574
    :cond_7
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1581
    :cond_8
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 1588
    :cond_9
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 1595
    :cond_a
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 1602
    :cond_b
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1610
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1613
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1615
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 1617
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 1619
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 1621
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/h;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 1622
    return v0

    .line 1610
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 1613
    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 1615
    :cond_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1617
    :cond_3
    iget-object v0, p0, Lcom/google/n/a/b/a/a/h;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 1619
    :cond_4
    iget-object v1, p0, Lcom/google/n/a/b/a/a/h;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
