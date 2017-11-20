.class public final Lcom/google/android/location/places/d/a/q;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/places/d/a/c;

.field public b:Ljava/lang/Integer;

.field public c:[Lcom/google/android/location/places/d/a/r;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/location/places/d/a/r;->b()[Lcom/google/android/location/places/d/a/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/q;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/q;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 112
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 122
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    aget-object v2, v2, v0

    .line 124
    if-eqz v2, :cond_2

    .line 125
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 122
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 130
    :cond_4
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/q;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/places/d/a/c;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/places/d/a/r;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    new-instance v3, Lcom/google/android/location/places/d/a/r;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/r;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    array-length v0, v0

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/google/android/location/places/d/a/r;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/r;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 97
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 100
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 101
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    aget-object v1, v1, v0

    .line 102
    if-eqz v1, :cond_2

    .line 103
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 100
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 108
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

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/q;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/places/d/a/q;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    if-nez v1, :cond_4

    .line 55
    iget-object v1, p1, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    if-nez v1, :cond_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 64
    iget-object v1, p1, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 70
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/q;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 84
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->c:[Lcom/google/android/location/places/d/a/r;

    invoke-static {v1}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/q;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    return v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/q;->a:Lcom/google/android/location/places/d/a/c;

    invoke-virtual {v0}, Lcom/google/android/location/places/d/a/c;->hashCode()I

    move-result v0

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/q;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_1
.end method
