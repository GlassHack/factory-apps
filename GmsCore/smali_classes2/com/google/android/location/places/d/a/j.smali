.class public final Lcom/google/android/location/places/d/a/j;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/places/d/a/d;

.field public b:[Lcom/google/android/location/places/d/a/v;

.field public c:Lcom/google/android/location/places/d/a/b;

.field public d:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    invoke-static {}, Lcom/google/android/location/places/d/a/v;->b()[Lcom/google/android/location/places/d/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    sget-object v0, Lcom/google/protobuf/nano/m;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/j;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/j;->G:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 133
    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    if-eqz v2, :cond_0

    .line 134
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    array-length v2, v2

    if-lez v2, :cond_3

    move v2, v0

    move v0, v1

    .line 138
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 139
    iget-object v3, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    aget-object v3, v3, v0

    .line 140
    if-eqz v3, :cond_1

    .line 141
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 138
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 146
    :cond_3
    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    if-eqz v2, :cond_4

    .line 147
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 150
    :cond_4
    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_7

    move v2, v1

    move v3, v1

    .line 153
    :goto_1
    iget-object v4, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 154
    iget-object v4, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 155
    if-eqz v4, :cond_5

    .line 156
    add-int/lit8 v3, v3, 0x1

    .line 157
    invoke-static {v4}, Lcom/google/protobuf/nano/b;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    .line 153
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    :cond_6
    add-int/2addr v0, v2

    .line 162
    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    .line 164
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/j;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/places/d/a/d;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/places/d/a/v;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/location/places/d/a/v;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/v;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/location/places/d/a/v;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/v;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/location/places/d/a/b;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_8

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    array-length v0, v0

    if-lez v0, :cond_2

    move v0, v1

    .line 109
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    aget-object v2, v2, v0

    .line 111
    if-eqz v2, :cond_1

    .line 112
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 109
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    if-eqz v0, :cond_3

    .line 117
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_5

    .line 120
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_5

    .line 121
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 122
    if-eqz v0, :cond_4

    .line 123
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 120
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 128
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    if-ne p1, p0, :cond_1

    .line 52
    const/4 v0, 0x1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/j;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/places/d/a/j;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    if-nez v1, :cond_4

    .line 59
    iget-object v1, p1, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    if-nez v1, :cond_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    if-nez v1, :cond_5

    .line 72
    iget-object v1, p1, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    if-nez v1, :cond_0

    .line 80
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/j;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 76
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->b:[Lcom/google/android/location/places/d/a/v;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 94
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->d:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/j;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/j;->a:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {v0}, Lcom/google/android/location/places/d/a/d;->hashCode()I

    move-result v0

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/j;->c:Lcom/google/android/location/places/d/a/b;

    invoke-virtual {v1}, Lcom/google/android/location/places/d/a/b;->hashCode()I

    move-result v1

    goto :goto_1
.end method
