.class final Lcom/google/protobuf/nano/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/protobuf/nano/g;


# instance fields
.field private b:Z

.field private c:[I

.field private d:[Lcom/google/protobuf/nano/g;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/google/protobuf/nano/g;

    invoke-direct {v0}, Lcom/google/protobuf/nano/g;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/f;->a:Lcom/google/protobuf/nano/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/protobuf/nano/f;-><init>(B)V

    .line 53
    return-void
.end method

.method private constructor <init>(B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v2, p0, Lcom/google/protobuf/nano/f;->b:Z

    .line 61
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/google/protobuf/nano/f;->c(I)I

    move-result v0

    .line 62
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/protobuf/nano/f;->c:[I

    .line 63
    new-array v0, v0, [Lcom/google/protobuf/nano/g;

    iput-object v0, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    .line 64
    iput v2, p0, Lcom/google/protobuf/nano/f;->e:I

    .line 65
    return-void
.end method

.method private static c(I)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 226
    mul-int/lit8 v0, p0, 0x4

    const/4 v1, 0x4

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    shl-int v2, v3, v1

    add-int/lit8 v2, v2, -0xc

    if-gt v0, v2, :cond_1

    shl-int v0, v3, v1

    add-int/lit8 v0, v0, -0xc

    :cond_0
    div-int/lit8 v0, v0, 0x4

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 94
    iget v3, p0, Lcom/google/protobuf/nano/f;->e:I

    .line 96
    iget-object v4, p0, Lcom/google/protobuf/nano/f;->c:[I

    .line 97
    iget-object v5, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    move v1, v2

    move v0, v2

    .line 99
    :goto_0
    if-ge v1, v3, :cond_2

    .line 100
    aget-object v6, v5, v1

    .line 102
    sget-object v7, Lcom/google/protobuf/nano/f;->a:Lcom/google/protobuf/nano/g;

    if-eq v6, v7, :cond_1

    .line 103
    if-eq v1, v0, :cond_0

    .line 104
    aget v7, v4, v1

    aput v7, v4, v0

    .line 105
    aput-object v6, v5, v0

    .line 106
    const/4 v6, 0x0

    aput-object v6, v5, v1

    .line 109
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    iput-boolean v2, p0, Lcom/google/protobuf/nano/f;->b:Z

    .line 114
    iput v0, p0, Lcom/google/protobuf/nano/f;->e:I

    .line 115
    return-void
.end method

.method private d(I)I
    .locals 4

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    iget v0, p0, Lcom/google/protobuf/nano/f;->e:I

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    .line 241
    :goto_0
    if-gt v2, v1, :cond_1

    .line 242
    add-int v0, v2, v1

    ushr-int/lit8 v0, v0, 0x1

    .line 243
    iget-object v3, p0, Lcom/google/protobuf/nano/f;->c:[I

    aget v3, v3, v0

    .line 245
    if-ge v3, p1, :cond_0

    .line 246
    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    .line 247
    :cond_0
    if-le v3, p1, :cond_2

    .line 248
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    .line 252
    :cond_1
    xor-int/lit8 v0, v2, -0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/google/protobuf/nano/f;->b:Z

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/google/protobuf/nano/f;->c()V

    .line 175
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/f;->e:I

    return v0
.end method

.method public final a(I)Lcom/google/protobuf/nano/g;
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/f;->d(I)I

    move-result v0

    .line 74
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/f;->a:Lcom/google/protobuf/nano/g;

    if-ne v1, v2, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public final a(ILcom/google/protobuf/nano/g;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/f;->d(I)I

    move-result v0

    .line 124
    if-ltz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aput-object p2, v1, v0

    .line 164
    :goto_0
    return-void

    .line 127
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 129
    iget v1, p0, Lcom/google/protobuf/nano/f;->e:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aget-object v1, v1, v0

    sget-object v2, Lcom/google/protobuf/nano/f;->a:Lcom/google/protobuf/nano/g;

    if-ne v1, v2, :cond_1

    .line 130
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->c:[I

    aput p1, v1, v0

    .line 131
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aput-object p2, v1, v0

    goto :goto_0

    .line 135
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/nano/f;->b:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/protobuf/nano/f;->e:I

    iget-object v2, p0, Lcom/google/protobuf/nano/f;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 136
    invoke-direct {p0}, Lcom/google/protobuf/nano/f;->c()V

    .line 139
    invoke-direct {p0, p1}, Lcom/google/protobuf/nano/f;->d(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    .line 142
    :cond_2
    iget v1, p0, Lcom/google/protobuf/nano/f;->e:I

    iget-object v2, p0, Lcom/google/protobuf/nano/f;->c:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .line 143
    iget v1, p0, Lcom/google/protobuf/nano/f;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/protobuf/nano/f;->c(I)I

    move-result v1

    .line 145
    new-array v2, v1, [I

    .line 146
    new-array v1, v1, [Lcom/google/protobuf/nano/g;

    .line 148
    iget-object v3, p0, Lcom/google/protobuf/nano/f;->c:[I

    iget-object v4, p0, Lcom/google/protobuf/nano/f;->c:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget-object v3, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    iget-object v4, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    iput-object v2, p0, Lcom/google/protobuf/nano/f;->c:[I

    .line 152
    iput-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    .line 155
    :cond_3
    iget v1, p0, Lcom/google/protobuf/nano/f;->e:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_4

    .line 156
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->c:[I

    iget-object v2, p0, Lcom/google/protobuf/nano/f;->c:[I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/protobuf/nano/f;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    iget-object v2, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/google/protobuf/nano/f;->e:I

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :cond_4
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->c:[I

    aput p1, v1, v0

    .line 161
    iget-object v1, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aput-object p2, v1, v0

    .line 162
    iget v0, p0, Lcom/google/protobuf/nano/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protobuf/nano/f;->e:I

    goto :goto_0
.end method

.method public final b(I)Lcom/google/protobuf/nano/g;
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/protobuf/nano/f;->b:Z

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/google/protobuf/nano/f;->c()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/protobuf/nano/f;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    if-ne p1, p0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    instance-of v2, p1, Lcom/google/protobuf/nano/f;

    if-nez v2, :cond_2

    move v0, v1

    .line 201
    goto :goto_0

    .line 204
    :cond_2
    check-cast p1, Lcom/google/protobuf/nano/f;

    .line 205
    invoke-virtual {p0}, Lcom/google/protobuf/nano/f;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/protobuf/nano/f;->a()I

    move-result v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/nano/f;->c:[I

    iget-object v4, p1, Lcom/google/protobuf/nano/f;->c:[I

    iget v5, p0, Lcom/google/protobuf/nano/f;->e:I

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_6

    aget v6, v3, v2

    aget v7, v4, v2

    if-eq v6, v7, :cond_5

    move v2, v1

    :goto_2
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    iget-object v4, p1, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    iget v5, p0, Lcom/google/protobuf/nano/f;->e:I

    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v6, v3, v2

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Lcom/google/protobuf/nano/g;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v1

    :goto_4
    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v2, v0

    goto :goto_4
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/google/protobuf/nano/f;->b:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/google/protobuf/nano/f;->c()V

    .line 217
    :cond_0
    const/16 v1, 0x11

    .line 218
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/protobuf/nano/f;->e:I

    if-ge v0, v2, :cond_1

    .line 219
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/f;->c:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 220
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/protobuf/nano/f;->d:[Lcom/google/protobuf/nano/g;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/protobuf/nano/g;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    return v1
.end method
