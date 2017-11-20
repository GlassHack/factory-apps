.class public final Lcom/google/android/gms/wearable/c/q;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/google/android/gms/wearable/c/b;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/q;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 102
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    if-eqz v1, :cond_1

    .line 109
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_1
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

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/wearable/c/b;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 96
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 97
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    if-ne p1, p0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/q;

    if-nez v2, :cond_2

    move v0, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/q;

    .line 53
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 54
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    if-nez v2, :cond_5

    .line 61
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    if-eqz v2, :cond_6

    move v0, v1

    .line 62
    goto :goto_0

    .line 65
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 66
    goto :goto_0

    .line 69
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/q;->c:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 82
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/q;->c:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/q;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/q;->b:Lcom/google/android/gms/wearable/c/b;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/c/b;->hashCode()I

    move-result v1

    goto :goto_1
.end method
