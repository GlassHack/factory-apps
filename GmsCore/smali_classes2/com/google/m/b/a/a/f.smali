.class public final Lcom/google/m/b/a/a/f;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;

.field private e:Ljava/util/List;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 681
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->b:Ljava/lang/String;

    .line 697
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    .line 731
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->d:Ljava/lang/String;

    .line 748
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->g:Ljava/lang/String;

    .line 765
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->i:Ljava/lang/String;

    .line 813
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/f;->j:I

    .line 676
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 816
    iget v0, p0, Lcom/google/m/b/a/a/f;->j:I

    if-gez v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/google/m/b/a/a/f;->b()I

    .line 820
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/f;->j:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/a/k;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/k;

    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 673
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

    iput-boolean v2, p0, Lcom/google/m/b/a/a/f;->a:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/m/b/a/a/k;

    invoke-direct {v0}, Lcom/google/m/b/a/a/k;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/f;->c:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/f;->f:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->g:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v2, p0, Lcom/google/m/b/a/a/f;->h:Z

    iput-object v0, p0, Lcom/google/m/b/a/a/f;->i:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
        0x3a -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/google/m/b/a/a/f;->a:Z

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 799
    :cond_0
    iget-object v0, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/k;

    .line 800
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 802
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/f;->c:Z

    if-eqz v0, :cond_2

    .line 803
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/a/f;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 805
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/f;->f:Z

    if-eqz v0, :cond_3

    .line 806
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/m/b/a/a/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 808
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/f;->h:Z

    if-eqz v0, :cond_4

    .line 809
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/m/b/a/a/f;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 811
    :cond_4
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 825
    const/4 v0, 0x0

    .line 826
    iget-boolean v1, p0, Lcom/google/m/b/a/a/f;->a:Z

    if-eqz v1, :cond_0

    .line 827
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/a/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 830
    :cond_0
    iget-object v1, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/k;

    .line 831
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 833
    goto :goto_0

    .line 834
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/a/f;->c:Z

    if-eqz v0, :cond_2

    .line 835
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/a/f;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 838
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/a/f;->f:Z

    if-eqz v0, :cond_3

    .line 839
    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/m/b/a/a/f;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 842
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/a/f;->h:Z

    if-eqz v0, :cond_4

    .line 843
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/m/b/a/a/f;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 846
    :cond_4
    iput v1, p0, Lcom/google/m/b/a/a/f;->j:I

    .line 847
    return v1
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/m/b/a/a/f;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
