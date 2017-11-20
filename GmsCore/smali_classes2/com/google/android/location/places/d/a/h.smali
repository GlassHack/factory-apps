.class public final Lcom/google/android/location/places/d/a/h;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/places/d/a/p;

.field public b:Lcom/google/android/location/places/d/a/d;

.field public c:[Lcom/google/android/location/places/d/a/v;

.field public d:Lcom/google/android/location/places/d/a/n;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    invoke-static {}, Lcom/google/android/location/places/d/a/v;->b()[Lcom/google/android/location/places/d/a/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    iput-object v1, p0, Lcom/google/android/location/places/d/a/h;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/places/d/a/h;->G:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 5

    .prologue
    .line 132
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    if-eqz v1, :cond_0

    .line 134
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    if-eqz v1, :cond_1

    .line 138
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    array-length v1, v1

    if-lez v1, :cond_4

    .line 142
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 143
    iget-object v2, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    aget-object v2, v2, v0

    .line 144
    if-eqz v2, :cond_2

    .line 145
    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 142
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    if-eqz v1, :cond_5

    .line 151
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/places/d/a/h;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/places/d/a/p;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/places/d/a/d;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/location/places/d/a/v;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    new-instance v3, Lcom/google/android/location/places/d/a/v;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/v;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    array-length v0, v0

    goto :goto_1

    :cond_5
    new-instance v3, Lcom/google/android/location/places/d/a/v;

    invoke-direct {v3}, Lcom/google/android/location/places/d/a/v;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/location/places/d/a/n;

    invoke-direct {v0}, Lcom/google/android/location/places/d/a/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    :cond_6
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

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
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 117
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 118
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    aget-object v1, v1, v0

    .line 119
    if-eqz v1, :cond_2

    .line 120
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 117
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    if-eqz v0, :cond_4

    .line 125
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 127
    :cond_4
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

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/places/d/a/h;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/places/d/a/h;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v1, :cond_5

    .line 59
    iget-object v1, p1, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v1, :cond_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    if-nez v1, :cond_6

    .line 68
    iget-object v1, p1, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    if-nez v1, :cond_0

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    if-nez v1, :cond_7

    .line 81
    iget-object v1, p1, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    if-nez v1, :cond_0

    .line 89
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/places/d/a/h;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 72
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 85
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    iget-object v2, p1, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    invoke-virtual {v1, v2}, Lcom/google/android/location/places/d/a/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 97
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 99
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/h;->c:[Lcom/google/android/location/places/d/a/v;

    invoke-static {v2}, Lcom/google/protobuf/nano/h;->a([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/places/d/a/h;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    return v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->a:Lcom/google/android/location/places/d/a/p;

    invoke-virtual {v0}, Lcom/google/android/location/places/d/a/p;->hashCode()I

    move-result v0

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/places/d/a/h;->b:Lcom/google/android/location/places/d/a/d;

    invoke-virtual {v0}, Lcom/google/android/location/places/d/a/d;->hashCode()I

    move-result v0

    goto :goto_1

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/places/d/a/h;->d:Lcom/google/android/location/places/d/a/n;

    invoke-virtual {v1}, Lcom/google/android/location/places/d/a/n;->hashCode()I

    move-result v1

    goto :goto_2
.end method
