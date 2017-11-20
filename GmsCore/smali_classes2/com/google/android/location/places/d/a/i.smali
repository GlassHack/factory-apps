.class public final Lcom/google/android/location/places/d/a/i;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/location/places/d/a/o;

.field public b:[Lcom/google/android/location/places/d/a/g;

.field public c:Lcom/google/android/location/places/d/a/q;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    invoke-static {}, Lcom/google/android/location/places/d/a/o;->b()[Lcom/google/android/location/places/d/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    invoke-static {}, Lcom/google/android/location/places/d/a/g;->b()[Lcom/google/android/location/places/d/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/i;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/i;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 115
    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    array-length v2, v2

    if-lez v2, :cond_2

    move v2, v0

    move v0, v1

    .line 116
    :goto_0
    iget-object v3, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 117
    iget-object v3, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    aget-object v3, v3, v0

    .line 118
    if-eqz v3, :cond_0

    .line 119
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v3

    add-int/2addr v2, v3

    .line 116
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 124
    :cond_2
    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    array-length v2, v2

    if-lez v2, :cond_4

    .line 125
    :goto_1
    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 126
    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    aget-object v2, v2, v1

    .line 127
    if-eqz v2, :cond_3

    .line 128
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v0, v2

    .line 125
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    if-eqz v1, :cond_5

    .line 134
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_5
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/i;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/places/d/a/o;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/location/places/d/a/o;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/location/places/d/a/o;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/o;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/places/d/a/g;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_6

    new-instance v3, Lcom/google/android/location/places/d/a/g;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/g;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    array-length v0, v0

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/google/android/location/places/d/a/g;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/g;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/location/places/d/a/q;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    :cond_7
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12 -> :sswitch_1
        0x1a -> :sswitch_2
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    aget-object v2, v2, v0

    .line 93
    if-eqz v2, :cond_0

    .line 94
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 91
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    aget-object v0, v0, v1

    .line 101
    if-eqz v0, :cond_2

    .line 102
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    if-eqz v0, :cond_4

    .line 107
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 109
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 110
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    if-ne p1, p0, :cond_1

    .line 48
    const/4 v0, 0x1

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/i;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/places/d/a/i;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    if-nez v1, :cond_3

    .line 63
    iget-object v1, p1, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    if-nez v1, :cond_0

    .line 71
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/i;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/q;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->a:[Lcom/google/android/location/places/d/a/o;

    invoke-static {v0}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/places/d/a/i;->b:[Lcom/google/android/location/places/d/a/g;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 83
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/i;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    return v0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/i;->c:Lcom/google/android/location/places/d/a/q;

    invoke-virtual {v0}, Lcom/google/android/location/places/d/a/q;->hashCode()I

    move-result v0

    goto :goto_0
.end method
