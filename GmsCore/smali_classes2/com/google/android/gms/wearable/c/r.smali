.class public final Lcom/google/android/gms/wearable/c/r;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[B

.field public e:J

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:[Lcom/google/android/gms/wearable/c/d;

.field public i:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/wearable/c/d;->b()[Lcom/google/android/gms/wearable/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/r;->G:I

    .line 52
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 187
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 189
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int v4, v0, v2

    .line 191
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_8

    move v0, v1

    move v2, v1

    move v3, v1

    .line 194
    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    .line 195
    iget-object v5, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    aget-object v5, v5, v0

    .line 196
    if-eqz v5, :cond_0

    .line 197
    add-int/lit8 v3, v3, 0x1

    .line 198
    invoke-static {v5}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    .line 194
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    add-int v0, v4, v2

    .line 203
    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    sget-object v3, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v2

    add-int/2addr v0, v2

    .line 209
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 210
    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    invoke-static {v2, v4, v5}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 213
    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    if-eqz v2, :cond_4

    .line 214
    const/4 v2, 0x6

    iget-boolean v3, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 217
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 218
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 221
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    array-length v2, v2

    if-lez v2, :cond_7

    .line 222
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 223
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    aget-object v2, v2, v1

    .line 224
    if-eqz v2, :cond_6

    .line 225
    const/16 v3, 0x8

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 222
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 230
    :cond_7
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 232
    return v0

    :cond_8
    move v0, v4

    goto :goto_1
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    const/4 v1, 0x0

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

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x42

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/wearable/c/d;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/gms/wearable/c/d;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/gms/wearable/c/d;

    invoke-direct {v3}, Lcom/google/android/gms/wearable/c/d;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 150
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 151
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    aget-object v2, v2, v0

    .line 155
    if-eqz v2, :cond_0

    .line 156
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 163
    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    .line 164
    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 166
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    if-eqz v0, :cond_4

    .line 167
    const/4 v0, 0x6

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 170
    const/4 v0, 0x7

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    array-length v0, v0

    if-lez v0, :cond_7

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 174
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    aget-object v0, v0, v1

    .line 175
    if-eqz v0, :cond_6

    .line 176
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 173
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    :cond_7
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 181
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 182
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 73
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/r;

    if-nez v2, :cond_2

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/r;

    .line 77
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 78
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 82
    goto :goto_0

    .line 84
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 85
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 92
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    if-eqz v2, :cond_8

    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 96
    goto :goto_0

    .line 98
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/r;->d:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :cond_9
    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    iget-wide v4, p1, Lcom/google/android/gms/wearable/c/r;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    move v0, v1

    .line 102
    goto :goto_0

    .line 104
    :cond_a
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    iget-boolean v3, p1, Lcom/google/android/gms/wearable/c/r;->f:Z

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 108
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    if-eqz v2, :cond_d

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 116
    goto/16 :goto_0

    .line 118
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 120
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 130
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->d:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    iget-wide v4, p0, Lcom/google/android/gms/wearable/c/r;->e:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/r;->f:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x4cf

    :goto_3
    add-int/2addr v0, v2

    .line 138
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 140
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/r;->h:[Lcom/google/android/gms/wearable/c/d;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/r;->i:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    return v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/r;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 137
    :cond_3
    const/16 v0, 0x4d5

    goto :goto_3

    .line 138
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/r;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
