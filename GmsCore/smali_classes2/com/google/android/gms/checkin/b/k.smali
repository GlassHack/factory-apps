.class public final Lcom/google/android/gms/checkin/b/k;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:J

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 791
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/k;->c:Ljava/lang/String;

    .line 808
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/checkin/b/k;->e:Ljava/lang/String;

    .line 825
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/checkin/b/k;->a:J

    .line 866
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/checkin/b/k;->g:I

    .line 786
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 869
    iget v0, p0, Lcom/google/android/gms/checkin/b/k;->g:I

    if-gez v0, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/google/android/gms/checkin/b/k;->b()I

    .line 873
    :cond_0
    iget v0, p0, Lcom/google/android/gms/checkin/b/k;->g:I

    return v0
.end method

.method public final a(J)Lcom/google/android/gms/checkin/b/k;
    .locals 1

    .prologue
    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/k;->f:Z

    .line 830
    iput-wide p1, p0, Lcom/google/android/gms/checkin/b/k;->a:J

    .line 831
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;
    .locals 1

    .prologue
    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/k;->b:Z

    .line 796
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/k;->c:Ljava/lang/String;

    .line 797
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 783
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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/k;->a(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/checkin/b/k;->b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/checkin/b/k;->a(J)Lcom/google/android/gms/checkin/b/k;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/k;->b:Z

    if-eqz v0, :cond_0

    .line 856
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/k;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 858
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/k;->d:Z

    if-eqz v0, :cond_1

    .line 859
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/k;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 861
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/checkin/b/k;->f:Z

    if-eqz v0, :cond_2

    .line 862
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/k;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 864
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 878
    const/4 v0, 0x0

    .line 879
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/k;->b:Z

    if-eqz v1, :cond_0

    .line 880
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/checkin/b/k;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 883
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/k;->d:Z

    if-eqz v1, :cond_1

    .line 884
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/checkin/b/k;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 887
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/checkin/b/k;->f:Z

    if-eqz v1, :cond_2

    .line 888
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/checkin/b/k;->a:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 891
    :cond_2
    iput v0, p0, Lcom/google/android/gms/checkin/b/k;->g:I

    .line 892
    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/checkin/b/k;
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/checkin/b/k;->d:Z

    .line 813
    iput-object p1, p0, Lcom/google/android/gms/checkin/b/k;->e:Ljava/lang/String;

    .line 814
    return-object p0
.end method
