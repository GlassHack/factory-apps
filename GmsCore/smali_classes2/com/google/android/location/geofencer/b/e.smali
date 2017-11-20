.class public final Lcom/google/android/location/geofencer/b/e;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lcom/google/android/location/geofencer/b/d;

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:J

.field public k:Z

.field public l:Z

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 671
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/e;->b:Lcom/google/android/location/geofencer/b/d;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/location/geofencer/b/e;->d:Ljava/lang/String;

    .line 708
    iput v2, p0, Lcom/google/android/location/geofencer/b/e;->f:I

    .line 725
    iput v2, p0, Lcom/google/android/location/geofencer/b/e;->h:I

    .line 742
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/location/geofencer/b/e;->j:J

    .line 759
    iput-boolean v2, p0, Lcom/google/android/location/geofencer/b/e;->l:Z

    .line 811
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/geofencer/b/e;->m:I

    .line 666
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 814
    iget v0, p0, Lcom/google/android/location/geofencer/b/e;->m:I

    if-gez v0, :cond_0

    .line 816
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/b/e;->b()I

    .line 818
    :cond_0
    iget v0, p0, Lcom/google/android/location/geofencer/b/e;->m:I

    return v0
.end method

.method public final a(I)Lcom/google/android/location/geofencer/b/e;
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->e:Z

    .line 713
    iput p1, p0, Lcom/google/android/location/geofencer/b/e;->f:I

    .line 714
    return-object p0
.end method

.method public final a(J)Lcom/google/android/location/geofencer/b/e;
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->i:Z

    .line 747
    iput-wide p1, p0, Lcom/google/android/location/geofencer/b/e;->j:J

    .line 748
    return-object p0
.end method

.method public final a(Lcom/google/android/location/geofencer/b/d;)Lcom/google/android/location/geofencer/b/e;
    .locals 1

    .prologue
    .line 675
    if-nez p1, :cond_0

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 678
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->a:Z

    .line 679
    iput-object p1, p0, Lcom/google/android/location/geofencer/b/e;->b:Lcom/google/android/location/geofencer/b/d;

    .line 680
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/e;
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->c:Z

    .line 696
    iput-object p1, p0, Lcom/google/android/location/geofencer/b/e;->d:Ljava/lang/String;

    .line 697
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/location/geofencer/b/e;
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->k:Z

    .line 764
    iput-boolean p1, p0, Lcom/google/android/location/geofencer/b/e;->l:Z

    .line 765
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 663
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
    new-instance v0, Lcom/google/android/location/geofencer/b/d;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/b/d;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/e;->a(Lcom/google/android/location/geofencer/b/d;)Lcom/google/android/location/geofencer/b/e;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/e;->a(Ljava/lang/String;)Lcom/google/android/location/geofencer/b/e;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/e;->a(I)Lcom/google/android/location/geofencer/b/e;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/e;->b(I)Lcom/google/android/location/geofencer/b/e;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/geofencer/b/e;->a(J)Lcom/google/android/location/geofencer/b/e;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/b/e;->a(Z)Lcom/google/android/location/geofencer/b/e;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->a:Z

    if-eqz v0, :cond_0

    .line 792
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/geofencer/b/e;->b:Lcom/google/android/location/geofencer/b/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 794
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->c:Z

    if-eqz v0, :cond_1

    .line 795
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/geofencer/b/e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 797
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->e:Z

    if-eqz v0, :cond_2

    .line 798
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/location/geofencer/b/e;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 800
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->g:Z

    if-eqz v0, :cond_3

    .line 801
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/location/geofencer/b/e;->h:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 803
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->i:Z

    if-eqz v0, :cond_4

    .line 804
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/e;->j:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 806
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->k:Z

    if-eqz v0, :cond_5

    .line 807
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/e;->l:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 809
    :cond_5
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/e;->a:Z

    if-eqz v1, :cond_0

    .line 825
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/geofencer/b/e;->b:Lcom/google/android/location/geofencer/b/d;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 828
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/e;->c:Z

    if-eqz v1, :cond_1

    .line 829
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/geofencer/b/e;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 832
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/e;->e:Z

    if-eqz v1, :cond_2

    .line 833
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/location/geofencer/b/e;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 836
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/e;->g:Z

    if-eqz v1, :cond_3

    .line 837
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/location/geofencer/b/e;->h:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 840
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/e;->i:Z

    if-eqz v1, :cond_4

    .line 841
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/android/location/geofencer/b/e;->j:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 844
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/location/geofencer/b/e;->k:Z

    if-eqz v1, :cond_5

    .line 845
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/location/geofencer/b/e;->l:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 848
    :cond_5
    iput v0, p0, Lcom/google/android/location/geofencer/b/e;->m:I

    .line 849
    return v0
.end method

.method public final b(I)Lcom/google/android/location/geofencer/b/e;
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/geofencer/b/e;->g:Z

    .line 730
    iput p1, p0, Lcom/google/android/location/geofencer/b/e;->h:I

    .line 731
    return-object p0
.end method
