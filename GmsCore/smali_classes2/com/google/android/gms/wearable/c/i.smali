.class public final Lcom/google/android/gms/wearable/c/i;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    iput v2, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    iput v2, p0, Lcom/google/android/gms/wearable/c/i;->e:I

    iput v2, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/i;->G:I

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    .line 131
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 132
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 136
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 140
    :cond_0
    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    if-eqz v1, :cond_1

    .line 141
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_1
    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    if-eqz v1, :cond_2

    .line 145
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_2
    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->e:I

    if-eqz v1, :cond_3

    .line 149
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/wearable/c/i;->e:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_3
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/i;->e:I

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

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 112
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 113
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 114
    iget-wide v0, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 117
    :cond_0
    iget v0, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    if-eqz v0, :cond_1

    .line 118
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 120
    :cond_1
    iget v0, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    if-eqz v0, :cond_2

    .line 121
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 123
    :cond_2
    iget v0, p0, Lcom/google/android/gms/wearable/c/i;->e:I

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 126
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 127
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 58
    if-ne p1, p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/i;

    if-nez v2, :cond_2

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/i;

    .line 65
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 66
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 67
    goto :goto_0

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 70
    goto :goto_0

    .line 72
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 73
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_6
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/wearable/c/i;->c:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_7
    iget v2, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/i;->d:I

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 83
    goto :goto_0

    .line 85
    :cond_8
    iget v2, p0, Lcom/google/android/gms/wearable/c/i;->e:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/i;->e:I

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_9
    iget v2, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/i;->f:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 89
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    iget-wide v4, p0, Lcom/google/android/gms/wearable/c/i;->c:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->d:I

    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->e:I

    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/i;->f:I

    add-int/2addr v0, v1

    .line 106
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/i;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
