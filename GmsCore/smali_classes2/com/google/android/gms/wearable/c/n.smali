.class public final Lcom/google/android/gms/wearable/c/n;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/c/n;->b()Lcom/google/android/gms/wearable/c/n;

    .line 40
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 110
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 111
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/wearable/c/n;->c:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/wearable/c/n;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    iget v1, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 120
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_0
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/n;->c:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/n;->d:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 99
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 100
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/gms/wearable/c/n;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 101
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/gms/wearable/c/n;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 102
    iget v0, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 103
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 106
    return-void
.end method

.method public final b()Lcom/google/android/gms/wearable/c/n;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 43
    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    .line 45
    iput v2, p0, Lcom/google/android/gms/wearable/c/n;->c:I

    .line 46
    iput v2, p0, Lcom/google/android/gms/wearable/c/n;->d:I

    .line 47
    iput v1, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    .line 48
    iput v1, p0, Lcom/google/android/gms/wearable/c/n;->G:I

    .line 49
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/n;

    if-nez v2, :cond_2

    move v0, v1

    .line 58
    goto :goto_0

    .line 60
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/n;

    .line 61
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/n;->a:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 65
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 66
    goto :goto_0

    .line 68
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :cond_5
    iget v2, p0, Lcom/google/android/gms/wearable/c/n;->c:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/n;->c:I

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_6
    iget v2, p0, Lcom/google/android/gms/wearable/c/n;->d:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/n;->d:I

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 75
    goto :goto_0

    .line 77
    :cond_7
    iget v2, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    iget v3, p1, Lcom/google/android/gms/wearable/c/n;->e:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/n;->a:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 87
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 89
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/n;->c:I

    add-int/2addr v0, v1

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/n;->d:I

    add-int/2addr v0, v1

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/wearable/c/n;->e:I

    add-int/2addr v0, v1

    .line 92
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/n;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
