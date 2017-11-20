.class public final Lcom/google/android/gms/checkin/b/l;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Ljava/lang/String;

.field public g:Ljava/util/List;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1592
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 1724
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->b:Ljava/lang/String;

    .line 1741
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->d:Ljava/lang/String;

    .line 1758
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->f:Ljava/lang/String;

    .line 1775
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->i:Ljava/lang/String;

    .line 1791
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    .line 1860
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/l;->j:I

    .line 1592
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1863
    iget v0, p0, Lcom/google/android/gms/checkin/b/l;->j:I

    if-gez v0, :cond_0

    .line 1865
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/l;->b()I

    .line 1867
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/l;->j:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1589
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

    iput-boolean v3, p0, Lcom/google/android/gms/checkin/b/l;->a:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v3, p0, Lcom/google/android/gms/checkin/b/l;->c:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v3, p0, Lcom/google/android/gms/checkin/b/l;->e:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v3, p0, Lcom/google/android/gms/checkin/b/l;->h:Z

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/l;->i:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/google/android/gms/checkin/b/m;

    invoke-direct {v0}, Lcom/google/android/gms/checkin/b/m;-><init>()V

    iget v1, p1, Lcom/google/protobuf/a/b;->a:I

    iget v2, p1, Lcom/google/protobuf/a/b;->b:I

    if-lt v1, v2, :cond_1

    invoke-static {}, Lcom/google/protobuf/a/e;->g()Lcom/google/protobuf/a/e;

    move-result-object v0

    throw v0

    :cond_1
    iget v1, p1, Lcom/google/protobuf/a/b;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/google/protobuf/a/b;->a:I

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a/f;->a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/protobuf/a/g;->a(II)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/protobuf/a/b;->a(I)V

    iget v1, p1, Lcom/google/protobuf/a/b;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p1, Lcom/google/protobuf/a/b;->a:I

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2b -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 1843
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/l;->a:Z

    if-eqz v0, :cond_0

    .line 1844
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1846
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/l;->c:Z

    if-eqz v0, :cond_1

    .line 1847
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/l;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1849
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/l;->e:Z

    if-eqz v0, :cond_2

    .line 1850
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/l;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1852
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/l;->h:Z

    if-eqz v0, :cond_3

    .line 1853
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/l;->i:Ljava/lang/String;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 1855
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/m;

    .line 1856
    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/a/c;->e(II)V

    invoke-virtual {v0, p1}, Lcom/google/protobuf/a/f;->a(Lcom/google/protobuf/a/c;)V

    invoke-virtual {p1, v4, v3}, Lcom/google/protobuf/a/c;->e(II)V

    goto :goto_0

    .line 1858
    :cond_4
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 1872
    const/4 v0, 0x0

    .line 1873
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/l;->a:Z

    if-eqz v1, :cond_0

    .line 1874
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/l;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 1877
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/l;->c:Z

    if-eqz v1, :cond_1

    .line 1878
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/l;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1881
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/l;->e:Z

    if-eqz v1, :cond_2

    .line 1882
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/l;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1885
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/l;->h:Z

    if-eqz v1, :cond_3

    .line 1886
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/l;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1889
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/checkin/b/l;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/checkin/b/m;

    .line 1890
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Lcom/google/protobuf/a/f;->b()I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    .line 1892
    goto :goto_0

    .line 1893
    :cond_4
    iput v1, p0, Lcom/google/android/gms/checkin/b/l;->j:I

    .line 1894
    return v1
.end method
