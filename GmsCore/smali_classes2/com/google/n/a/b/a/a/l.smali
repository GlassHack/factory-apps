.class public final Lcom/google/n/a/b/a/a/l;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Lcom/google/n/a/b/a/a/g;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2946
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 2947
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/n/a/b/a/a/l;->a:J

    iput-object v2, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    iput-object v2, p0, Lcom/google/n/a/b/a/a/l;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/n/a/b/a/a/l;->G:I

    .line 2948
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    .line 3007
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 3008
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/l;->a:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 3009
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/n/a/b/a/a/l;->a:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3012
    :cond_0
    iget-object v1, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    if-eqz v1, :cond_1

    .line 3013
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3016
    :cond_1
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 2923
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/n/a/b/a/a/l;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/n/a/b/a/a/l;->a:J

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/n/a/b/a/a/g;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    :cond_1
    iget-object v0, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 2996
    iget-wide v0, p0, Lcom/google/n/a/b/a/a/l;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2997
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/n/a/b/a/a/l;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 2999
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    if-eqz v0, :cond_1

    .line 3000
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 3002
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 3003
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2960
    if-ne p1, p0, :cond_1

    .line 2961
    const/4 v0, 0x1

    .line 2979
    :cond_0
    :goto_0
    return v0

    .line 2963
    :cond_1
    instance-of v1, p1, Lcom/google/n/a/b/a/a/l;

    if-eqz v1, :cond_0

    .line 2966
    check-cast p1, Lcom/google/n/a/b/a/a/l;

    .line 2967
    iget-wide v2, p0, Lcom/google/n/a/b/a/a/l;->a:J

    iget-wide v4, p1, Lcom/google/n/a/b/a/a/l;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 2970
    iget-object v1, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    if-nez v1, :cond_3

    .line 2971
    iget-object v1, p1, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    if-nez v1, :cond_0

    .line 2979
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/n/a/b/a/a/l;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 2975
    :cond_3
    iget-object v1, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    iget-object v2, p1, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    invoke-virtual {v1, v2}, Lcom/google/n/a/b/a/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 2984
    iget-wide v0, p0, Lcom/google/n/a/b/a/a/l;->a:J

    iget-wide v2, p0, Lcom/google/n/a/b/a/a/l;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 2987
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 2989
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/n/a/b/a/a/l;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 2990
    return v0

    .line 2987
    :cond_0
    iget-object v0, p0, Lcom/google/n/a/b/a/a/l;->b:Lcom/google/n/a/b/a/a/g;

    invoke-virtual {v0}, Lcom/google/n/a/b/a/a/g;->hashCode()I

    move-result v0

    goto :goto_0
.end method
