.class public final Lcom/google/android/gms/auth/e/d;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:J

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 723
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 746
    iput v0, p0, Lcom/google/android/gms/auth/e/d;->b:I

    .line 763
    iput v0, p0, Lcom/google/android/gms/auth/e/d;->d:I

    .line 780
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->f:Z

    .line 797
    iput-wide v2, p0, Lcom/google/android/gms/auth/e/d;->h:J

    .line 814
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->j:Z

    .line 831
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->l:Z

    .line 848
    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->n:Z

    .line 865
    iput-wide v2, p0, Lcom/google/android/gms/auth/e/d;->p:J

    .line 925
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/e/d;->q:I

    .line 723
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 928
    iget v0, p0, Lcom/google/android/gms/auth/e/d;->q:I

    if-gez v0, :cond_0

    .line 930
    invoke-virtual {p0}, Lcom/google/android/gms/auth/e/d;->b()I

    .line 932
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/e/d;->q:I

    return v0
.end method

.method public final a(I)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->a:Z

    .line 751
    iput p1, p0, Lcom/google/android/gms/auth/e/d;->b:I

    .line 752
    return-object p0
.end method

.method public final a(J)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->g:Z

    .line 802
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/d;->h:J

    .line 803
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->e:Z

    .line 785
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/d;->f:Z

    .line 786
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 720
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/d;->a(I)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/d;->b(I)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/d;->a(Z)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/d;->a(J)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/d;->b(Z)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/d;->c(Z)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/d;->d(Z)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/d;->b(J)Lcom/google/android/gms/auth/e/d;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 899
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->a:Z

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/d;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 902
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->c:Z

    if-eqz v0, :cond_1

    .line 903
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/auth/e/d;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 905
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->e:Z

    if-eqz v0, :cond_2

    .line 906
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 908
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->g:Z

    if-eqz v0, :cond_3

    .line 909
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/d;->h:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 911
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->i:Z

    if-eqz v0, :cond_4

    .line 912
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 914
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->k:Z

    if-eqz v0, :cond_5

    .line 915
    const/4 v0, 0x6

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->l:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 917
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->m:Z

    if-eqz v0, :cond_6

    .line 918
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->n:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 920
    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->o:Z

    if-eqz v0, :cond_7

    .line 921
    const/16 v0, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/d;->p:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 923
    :cond_7
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 937
    const/4 v0, 0x0

    .line 938
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->a:Z

    if-eqz v1, :cond_0

    .line 939
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/e/d;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 942
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->c:Z

    if-eqz v1, :cond_1

    .line 943
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/android/gms/auth/e/d;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 946
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->e:Z

    if-eqz v1, :cond_2

    .line 947
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/d;->f:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 950
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->g:Z

    if-eqz v1, :cond_3

    .line 951
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/d;->h:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 954
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->i:Z

    if-eqz v1, :cond_4

    .line 955
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/d;->j:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 958
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->k:Z

    if-eqz v1, :cond_5

    .line 959
    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/d;->l:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 962
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->m:Z

    if-eqz v1, :cond_6

    .line 963
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/d;->n:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 966
    :cond_6
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/d;->o:Z

    if-eqz v1, :cond_7

    .line 967
    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/d;->p:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 970
    :cond_7
    iput v0, p0, Lcom/google/android/gms/auth/e/d;->q:I

    .line 971
    return v0
.end method

.method public final b(I)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->c:Z

    .line 768
    iput p1, p0, Lcom/google/android/gms/auth/e/d;->d:I

    .line 769
    return-object p0
.end method

.method public final b(J)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->o:Z

    .line 870
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/d;->p:J

    .line 871
    return-object p0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->i:Z

    .line 819
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/d;->j:Z

    .line 820
    return-object p0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->k:Z

    .line 836
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/d;->l:Z

    .line 837
    return-object p0
.end method

.method public final d(Z)Lcom/google/android/gms/auth/e/d;
    .locals 1

    .prologue
    .line 852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/d;->m:Z

    .line 853
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/d;->n:Z

    .line 854
    return-object p0
.end method
