.class public final Lcom/google/android/gms/auth/setup/d2d/b/d;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 62
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
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

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

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
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/d;->c:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 56
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 57
    return-void
.end method
