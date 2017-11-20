.class public final Lcom/google/android/gms/auth/e/b;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:Lcom/google/android/gms/auth/e/e;

.field private e:Z

.field private f:Lcom/google/android/gms/auth/e/f;

.field private g:Z

.field private h:Lcom/google/android/gms/auth/e/d;

.field private i:Z

.field private j:Lcom/google/android/gms/auth/e/h;

.field private k:Z

.field private l:Lcom/google/android/gms/auth/e/c;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1577
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1590
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/e/b;->b:I

    .line 1607
    iput-object v1, p0, Lcom/google/android/gms/auth/e/b;->d:Lcom/google/android/gms/auth/e/e;

    .line 1627
    iput-object v1, p0, Lcom/google/android/gms/auth/e/b;->f:Lcom/google/android/gms/auth/e/f;

    .line 1647
    iput-object v1, p0, Lcom/google/android/gms/auth/e/b;->h:Lcom/google/android/gms/auth/e/d;

    .line 1667
    iput-object v1, p0, Lcom/google/android/gms/auth/e/b;->j:Lcom/google/android/gms/auth/e/h;

    .line 1687
    iput-object v1, p0, Lcom/google/android/gms/auth/e/b;->l:Lcom/google/android/gms/auth/e/c;

    .line 1742
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/e/b;->m:I

    .line 1577
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1745
    iget v0, p0, Lcom/google/android/gms/auth/e/b;->m:I

    if-gez v0, :cond_0

    .line 1747
    invoke-virtual {p0}, Lcom/google/android/gms/auth/e/b;->b()I

    .line 1749
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/e/b;->m:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/auth/e/b;
    .locals 1

    .prologue
    .line 1594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->a:Z

    .line 1595
    iput p1, p0, Lcom/google/android/gms/auth/e/b;->b:I

    .line 1596
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/e/c;)Lcom/google/android/gms/auth/e/b;
    .locals 1

    .prologue
    .line 1691
    if-nez p1, :cond_0

    .line 1692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1694
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->k:Z

    .line 1695
    iput-object p1, p0, Lcom/google/android/gms/auth/e/b;->l:Lcom/google/android/gms/auth/e/c;

    .line 1696
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/e/d;)Lcom/google/android/gms/auth/e/b;
    .locals 1

    .prologue
    .line 1651
    if-nez p1, :cond_0

    .line 1652
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1654
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->g:Z

    .line 1655
    iput-object p1, p0, Lcom/google/android/gms/auth/e/b;->h:Lcom/google/android/gms/auth/e/d;

    .line 1656
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/e/e;)Lcom/google/android/gms/auth/e/b;
    .locals 1

    .prologue
    .line 1611
    if-nez p1, :cond_0

    .line 1612
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1614
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->c:Z

    .line 1615
    iput-object p1, p0, Lcom/google/android/gms/auth/e/b;->d:Lcom/google/android/gms/auth/e/e;

    .line 1616
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/e/f;)Lcom/google/android/gms/auth/e/b;
    .locals 1

    .prologue
    .line 1631
    if-nez p1, :cond_0

    .line 1632
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1634
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->e:Z

    .line 1635
    iput-object p1, p0, Lcom/google/android/gms/auth/e/b;->f:Lcom/google/android/gms/auth/e/f;

    .line 1636
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/e/h;)Lcom/google/android/gms/auth/e/b;
    .locals 1

    .prologue
    .line 1671
    if-nez p1, :cond_0

    .line 1672
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1674
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->i:Z

    .line 1675
    iput-object p1, p0, Lcom/google/android/gms/auth/e/b;->j:Lcom/google/android/gms/auth/e/h;

    .line 1676
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 1574
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/b;->a(I)Lcom/google/android/gms/auth/e/b;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/auth/e/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/e;)Lcom/google/android/gms/auth/e/b;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/android/gms/auth/e/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/f;)Lcom/google/android/gms/auth/e/b;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/android/gms/auth/e/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/d;)Lcom/google/android/gms/auth/e/b;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/android/gms/auth/e/h;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/h;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/h;)Lcom/google/android/gms/auth/e/b;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/android/gms/auth/e/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/c;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/b;->a(Lcom/google/android/gms/auth/e/c;)Lcom/google/android/gms/auth/e/b;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 1722
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->a:Z

    if-eqz v0, :cond_0

    .line 1723
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/b;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1725
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->c:Z

    if-eqz v0, :cond_1

    .line 1726
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/e/b;->d:Lcom/google/android/gms/auth/e/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1728
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->e:Z

    if-eqz v0, :cond_2

    .line 1729
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/e/b;->f:Lcom/google/android/gms/auth/e/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1731
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->g:Z

    if-eqz v0, :cond_3

    .line 1732
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/auth/e/b;->h:Lcom/google/android/gms/auth/e/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1734
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->i:Z

    if-eqz v0, :cond_4

    .line 1735
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/auth/e/b;->j:Lcom/google/android/gms/auth/e/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1737
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/b;->k:Z

    if-eqz v0, :cond_5

    .line 1738
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/auth/e/b;->l:Lcom/google/android/gms/auth/e/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1740
    :cond_5
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 1754
    const/4 v0, 0x0

    .line 1755
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/b;->a:Z

    if-eqz v1, :cond_0

    .line 1756
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/b;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1759
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/b;->c:Z

    if-eqz v1, :cond_1

    .line 1760
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/e/b;->d:Lcom/google/android/gms/auth/e/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1763
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/b;->e:Z

    if-eqz v1, :cond_2

    .line 1764
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/e/b;->f:Lcom/google/android/gms/auth/e/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1767
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/b;->g:Z

    if-eqz v1, :cond_3

    .line 1768
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/e/b;->h:Lcom/google/android/gms/auth/e/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1771
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/b;->i:Z

    if-eqz v1, :cond_4

    .line 1772
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/e/b;->j:Lcom/google/android/gms/auth/e/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1775
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/b;->k:Z

    if-eqz v1, :cond_5

    .line 1776
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/e/b;->l:Lcom/google/android/gms/auth/e/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1779
    :cond_5
    iput v0, p0, Lcom/google/android/gms/auth/e/b;->m:I

    .line 1780
    return v0
.end method
