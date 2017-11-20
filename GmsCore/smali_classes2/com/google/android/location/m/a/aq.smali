.class public final Lcom/google/android/location/m/a/aq;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/location/m/a/ae;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    iput-object v1, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/aq;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/aq;->G:I

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 161
    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 162
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    if-eqz v2, :cond_1

    .line 166
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 170
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 174
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 177
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 178
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 181
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    .line 184
    :goto_0
    iget-object v4, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 185
    iget-object v4, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 186
    if-eqz v4, :cond_5

    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 188
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 184
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_6
    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 195
    :cond_7
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/aq;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x32

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 139
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 142
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 145
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_6

    .line 148
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 149
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 150
    if-eqz v1, :cond_5

    .line 151
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 148
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 156
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 60
    const/4 v0, 0x1

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/aq;

    if-eqz v1, :cond_0

    .line 65
    check-cast p1, Lcom/google/android/location/m/a/aq;

    .line 66
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 67
    iget-object v1, p1, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_8

    .line 74
    iget-object v1, p1, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_0

    .line 82
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 83
    iget-object v1, p1, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 90
    iget-object v1, p1, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 97
    iget-object v1, p1, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 103
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/aq;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 70
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 78
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    iget-object v2, p1, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 86
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 93
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 100
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 115
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 117
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 119
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 121
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 123
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->f:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/aq;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->b:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ae;->hashCode()I

    move-result v0

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/aq;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/aq;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method
