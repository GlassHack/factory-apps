.class public final Lcom/google/android/location/m/a/q;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:[Lcom/google/android/location/m/a/r;

.field public d:Ljava/lang/Boolean;

.field public e:[Ljava/lang/String;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    invoke-static {}, Lcom/google/android/location/m/a/r;->b()[Lcom/google/android/location/m/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    iput-object v1, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    iput-object v1, p0, Lcom/google/android/location/m/a/q;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/q;->G:I

    .line 75
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 206
    iget-object v2, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 207
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 211
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 214
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v0

    move v0, v1

    .line 215
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 216
    iget-object v3, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    aget-object v3, v3, v0

    .line 217
    if-eqz v3, :cond_2

    .line 218
    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 215
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 223
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 224
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v2}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 227
    :cond_5
    iget-object v2, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_8

    move v2, v1

    move v3, v1

    .line 230
    :goto_1
    iget-object v4, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_7

    .line 231
    iget-object v4, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 232
    if-eqz v4, :cond_6

    .line 233
    add-int/lit8 v3, v3, 0x1

    .line 234
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 230
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_7
    add-int/2addr v0, v2

    .line 239
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 241
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 242
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 245
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    if-eqz v1, :cond_a

    .line 246
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_a
    return v0
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/q;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/r;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/r;

    invoke-direct {v3}, Lcom/google/android/location/m/a/r;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/r;

    invoke-direct {v3}, Lcom/google/android/location/m/a/r;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 169
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 177
    iget-object v2, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    aget-object v2, v2, v0

    .line 178
    if-eqz v2, :cond_2

    .line 179
    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 176
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 184
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 186
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_6

    .line 188
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 189
    if-eqz v0, :cond_5

    .line 190
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 187
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 195
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 197
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 198
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->a(IJ)V

    .line 200
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 201
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 93
    const/4 v0, 0x1

    .line 142
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/q;

    if-eqz v1, :cond_0

    .line 98
    check-cast p1, Lcom/google/android/location/m/a/q;

    .line 99
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 100
    iget-object v1, p1, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_8

    .line 107
    iget-object v1, p1, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    iget-object v2, p1, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 118
    iget-object v1, p1, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 124
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 129
    iget-object v1, p1, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 135
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    if-nez v1, :cond_b

    .line 136
    iget-object v1, p1, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 142
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/q;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 110
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 121
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 132
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 139
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 150
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->c:[Lcom/google/android/location/m/a/r;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 154
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 156
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->e:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 158
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 160
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 162
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/q;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/q;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_3

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/q;->g:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    goto :goto_4
.end method
