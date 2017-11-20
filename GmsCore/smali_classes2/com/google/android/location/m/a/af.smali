.class public final Lcom/google/android/location/m/a/af;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:[Lcom/google/android/location/m/a/ag;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/location/m/a/bt;

.field public e:Lcom/google/android/location/m/a/cj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/location/m/a/ag;->b()[Lcom/google/android/location/m/a/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    iput-object v1, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    iput-object v1, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    iput-object v1, p0, Lcom/google/android/location/m/a/af;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/af;->G:I

    .line 40
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 142
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 143
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v1, v0

    .line 145
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 146
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 147
    iget-object v2, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    aget-object v2, v2, v0

    .line 148
    if-eqz v2, :cond_0

    .line 149
    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 155
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    if-eqz v0, :cond_3

    .line 159
    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    add-int/2addr v1, v0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    if-eqz v0, :cond_4

    .line 163
    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v0

    add-int/2addr v1, v0

    .line 166
    :cond_4
    return v1
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/af;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/m/a/ag;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/m/a/ag;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ag;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/m/a/ag;

    invoke-direct {v3}, Lcom/google/android/location/m/a/ag;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/m/a/bt;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bt;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/m/a/cj;

    invoke-direct {v0}, Lcom/google/android/location/m/a/cj;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_3
        0x1a -> :sswitch_4
        0x22 -> :sswitch_5
        0x2a -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0xc -> :sswitch_2
        0xd -> :sswitch_2
        0xe -> :sswitch_2
        0xf -> :sswitch_2
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_2
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 120
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 121
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 122
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    aget-object v1, v1, v0

    .line 123
    if-eqz v1, :cond_0

    .line 124
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 121
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 129
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    if-eqz v0, :cond_3

    .line 132
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    if-eqz v0, :cond_4

    .line 135
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 137
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 138
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 55
    if-ne p1, p0, :cond_1

    .line 56
    const/4 v0, 0x1

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 58
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/af;

    if-eqz v1, :cond_0

    .line 61
    check-cast p1, Lcom/google/android/location/m/a/af;

    .line 62
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    if-nez v1, :cond_6

    .line 63
    iget-object v1, p1, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    iget-object v2, p1, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 73
    iget-object v1, p1, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 79
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    if-nez v1, :cond_8

    .line 80
    iget-object v1, p1, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    if-nez v1, :cond_0

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    if-nez v1, :cond_9

    .line 89
    iget-object v1, p1, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    if-nez v1, :cond_0

    .line 97
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/af;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 66
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 84
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    iget-object v2, p1, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 93
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    iget-object v2, p1, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/cj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/af;->b:[Lcom/google/android/location/m/a/ag;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 108
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/af;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    return v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/af;->d:Lcom/google/android/location/m/a/bt;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bt;->hashCode()I

    move-result v0

    goto :goto_2

    .line 110
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/af;->e:Lcom/google/android/location/m/a/cj;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/cj;->hashCode()I

    move-result v1

    goto :goto_3
.end method
