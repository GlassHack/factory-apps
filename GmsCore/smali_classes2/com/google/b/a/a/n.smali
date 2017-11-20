.class public final Lcom/google/b/a/a/n;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/b/a/a/f;

.field public b:Lcom/google/b/a/a/i;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/util/List;

.field private i:Z

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Z

.field private q:J

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1645
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/n;->d:Ljava/lang/String;

    .line 1667
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/n;->f:Ljava/lang/String;

    .line 1684
    iput-object v2, p0, Lcom/google/b/a/a/n;->a:Lcom/google/b/a/a/f;

    .line 1703
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/a/n;->h:Ljava/util/List;

    .line 1737
    iput v1, p0, Lcom/google/b/a/a/n;->j:I

    .line 1754
    iput v1, p0, Lcom/google/b/a/a/n;->l:I

    .line 1771
    iput-object v2, p0, Lcom/google/b/a/a/n;->b:Lcom/google/b/a/a/i;

    .line 1791
    iput-wide v4, p0, Lcom/google/b/a/a/n;->o:J

    .line 1808
    iput-wide v4, p0, Lcom/google/b/a/a/n;->q:J

    .line 1879
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/n;->r:I

    .line 1645
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1882
    iget v0, p0, Lcom/google/b/a/a/n;->r:I

    if-gez v0, :cond_0

    .line 1884
    invoke-virtual {p0}, Lcom/google/b/a/a/n;->b()I

    .line 1886
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/n;->r:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1642
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

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->c:Z

    iput-object v0, p0, Lcom/google/b/a/a/n;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->e:Z

    iput-object v0, p0, Lcom/google/b/a/a/n;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/google/b/a/a/f;

    invoke-direct {v0}, Lcom/google/b/a/a/f;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->g:Z

    iput-object v0, p0, Lcom/google/b/a/a/n;->a:Lcom/google/b/a/a/f;

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/google/b/a/a/r;

    invoke-direct {v0}, Lcom/google/b/a/a/r;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/b/a/a/n;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/b/a/a/n;->h:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/b/a/a/n;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->i:Z

    iput v0, p0, Lcom/google/b/a/a/n;->j:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->c()I

    move-result v0

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->k:Z

    iput v0, p0, Lcom/google/b/a/a/n;->l:I

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/google/b/a/a/i;

    invoke-direct {v0}, Lcom/google/b/a/a/i;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->m:Z

    iput-object v0, p0, Lcom/google/b/a/a/n;->b:Lcom/google/b/a/a/i;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->n:Z

    iput-wide v0, p0, Lcom/google/b/a/a/n;->o:J

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    iput-boolean v2, p0, Lcom/google/b/a/a/n;->p:Z

    iput-wide v0, p0, Lcom/google/b/a/a/n;->q:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 1850
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->c:Z

    if-eqz v0, :cond_0

    .line 1851
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/n;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1853
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->e:Z

    if-eqz v0, :cond_1

    .line 1854
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/n;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1856
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->g:Z

    if-eqz v0, :cond_2

    .line 1857
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/a/n;->a:Lcom/google/b/a/a/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1859
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/a/n;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/r;

    .line 1860
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 1862
    :cond_3
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->i:Z

    if-eqz v0, :cond_4

    .line 1863
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/b/a/a/n;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1865
    :cond_4
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->k:Z

    if-eqz v0, :cond_5

    .line 1866
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/b/a/a/n;->l:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 1868
    :cond_5
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->m:Z

    if-eqz v0, :cond_6

    .line 1869
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/b/a/a/n;->b:Lcom/google/b/a/a/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 1871
    :cond_6
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->n:Z

    if-eqz v0, :cond_7

    .line 1872
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/b/a/a/n;->o:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1874
    :cond_7
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->p:Z

    if-eqz v0, :cond_8

    .line 1875
    const/16 v0, 0x9

    iget-wide v2, p0, Lcom/google/b/a/a/n;->q:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 1877
    :cond_8
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 1891
    const/4 v0, 0x0

    .line 1892
    iget-boolean v1, p0, Lcom/google/b/a/a/n;->c:Z

    if-eqz v1, :cond_0

    .line 1893
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/n;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1896
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/n;->e:Z

    if-eqz v1, :cond_1

    .line 1897
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/n;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1900
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/n;->g:Z

    if-eqz v1, :cond_2

    .line 1901
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/a/n;->a:Lcom/google/b/a/a/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1904
    :cond_2
    iget-object v1, p0, Lcom/google/b/a/a/n;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/r;

    .line 1905
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 1907
    goto :goto_0

    .line 1908
    :cond_3
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->i:Z

    if-eqz v0, :cond_4

    .line 1909
    const/4 v0, 0x5

    iget v2, p0, Lcom/google/b/a/a/n;->j:I

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1912
    :cond_4
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->k:Z

    if-eqz v0, :cond_5

    .line 1913
    const/4 v0, 0x6

    iget v2, p0, Lcom/google/b/a/a/n;->l:I

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 1916
    :cond_5
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->m:Z

    if-eqz v0, :cond_6

    .line 1917
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/b/a/a/n;->b:Lcom/google/b/a/a/i;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1920
    :cond_6
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->n:Z

    if-eqz v0, :cond_7

    .line 1921
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/b/a/a/n;->o:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 1924
    :cond_7
    iget-boolean v0, p0, Lcom/google/b/a/a/n;->p:Z

    if-eqz v0, :cond_8

    .line 1925
    const/16 v0, 0x9

    iget-wide v2, p0, Lcom/google/b/a/a/n;->q:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 1928
    :cond_8
    iput v1, p0, Lcom/google/b/a/a/n;->r:I

    .line 1929
    return v1
.end method
