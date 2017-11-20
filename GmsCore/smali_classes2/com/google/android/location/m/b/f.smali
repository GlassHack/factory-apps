.class public final Lcom/google/android/location/m/b/f;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/b/f;->c:[B

    iput-object v0, p0, Lcom/google/android/location/m/b/f;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/b/f;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 103
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->c:[B

    if-eqz v1, :cond_2

    .line 111
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/b/f;->c:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    :cond_2
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/b/f;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b/f;->c:[B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 91
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/b/f;->c:[B

    if-eqz v0, :cond_2

    .line 94
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/b/f;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 96
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 97
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

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/b/f;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/m/b/f;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    if-nez v1, :cond_4

    .line 55
    iget-object v1, p1, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    if-nez v1, :cond_5

    .line 62
    iget-object v1, p1, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->c:[B

    iget-object v2, p1, Lcom/google/android/location/m/b/f;->c:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/b/f;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 58
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 65
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-object v0, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/location/m/b/f;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/b/f;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    return v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/b/f;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/b/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1
.end method
