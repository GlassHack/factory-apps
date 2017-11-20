.class public final Lcom/google/android/gms/auth/setup/d2d/b/q;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/android/gms/auth/setup/d2d/b/q;


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->b:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->G:I

    .line 31
    return-void
.end method

.method public static b()[Lcom/google/android/gms/auth/setup/d2d/b/q;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/b/q;->c:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/b/q;->c:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/auth/setup/d2d/b/q;

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/b/q;->c:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/b/q;->c:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->b:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 60
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->b:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 63
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

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->b:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->b:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/q;->b:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 49
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 50
    return-void
.end method
