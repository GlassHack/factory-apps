.class public final Lcom/google/android/gms/wearable/c/s;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/c/s;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/s;->G:I

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 69
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/s;->a:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 71
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 5
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

    iput-wide v0, p0, Lcom/google/android/gms/wearable/c/s;->a:J

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 62
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/s;->a:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 63
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 64
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    if-ne p1, p0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/s;

    if-nez v2, :cond_2

    move v0, v1

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/s;

    .line 45
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/s;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/wearable/c/s;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 46
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/google/android/gms/wearable/c/s;->a:J

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/s;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 56
    return v0
.end method
