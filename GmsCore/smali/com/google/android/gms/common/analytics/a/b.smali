.class public final Lcom/google/android/gms/common/analytics/a/b;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 934
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 935
    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->b:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->e:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->f:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->g:Ljava/lang/Long;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/common/analytics/a/b;->G:I

    .line 936
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 979
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 980
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 981
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/b;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 985
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/b;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 989
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/b;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 993
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/b;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    .line 997
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/b;->e:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->f:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 1001
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/b;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->g:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 1005
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/common/analytics/a/b;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_6
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 896
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->a:Ljava/lang/Long;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->b:Ljava/lang/Long;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->c:Ljava/lang/Long;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->d:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->e:Ljava/lang/Long;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->f:Ljava/lang/Long;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->g:Ljava/lang/Long;

    goto :goto_0

    nop

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
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 953
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 954
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 957
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 959
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->c:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 960
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 962
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 963
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 965
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->e:Ljava/lang/Long;

    if-eqz v0, :cond_4

    .line 966
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 968
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->f:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 969
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->f:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 971
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/common/analytics/a/b;->g:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 972
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/common/analytics/a/b;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 974
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 975
    return-void
.end method
