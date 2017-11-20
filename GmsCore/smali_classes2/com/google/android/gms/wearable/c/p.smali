.class public final Lcom/google/android/gms/wearable/c/p;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 45
    iput v1, p0, Lcom/google/android/gms/wearable/c/p;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/wearable/c/p;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/p;->G:I

    .line 46
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 144
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/wearable/c/p;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/wearable/c/p;->e:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_0
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/p;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/p;->e:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/wearable/c/p;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 130
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 131
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 132
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 133
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/wearable/c/p;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 134
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 139
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    if-ne p1, p0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/p;

    if-nez v2, :cond_2

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/p;

    .line 69
    iget v2, p0, Lcom/google/android/gms/wearable/c/p;->a:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/p;->a:I

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 70
    goto :goto_0

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 73
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 80
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 81
    goto :goto_0

    .line 83
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 87
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 88
    goto :goto_0

    .line 90
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_9
    iget v2, p0, Lcom/google/android/gms/wearable/c/p;->e:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/p;->e:I

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 97
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/p;->g:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 104
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 111
    iget v0, p0, Lcom/google/android/gms/wearable/c/p;->a:I

    add-int/lit16 v0, v0, 0x20f

    .line 113
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 115
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/android/gms/wearable/c/p;->e:I

    add-int/2addr v0, v2

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 122
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->g:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/p;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/p;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/p;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 120
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/p;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
