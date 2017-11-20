.class public final Lcom/google/android/gms/auth/setup/d2d/b/e;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# static fields
.field private static volatile f:[Lcom/google/android/gms/auth/setup/d2d/b/e;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:[B

.field public e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    sget-object v0, Lcom/google/protobuf/nano/m;->h:[B

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->e:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->G:I

    .line 40
    return-void
.end method

.method public static b()[Lcom/google/android/gms/auth/setup/d2d/b/e;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/b/e;->f:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/b/e;->f:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/auth/setup/d2d/b/e;

    sput-object v0, Lcom/google/android/gms/auth/setup/d2d/b/e;->f:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/gms/auth/setup/d2d/b/e;->f:[Lcom/google/android/gms/auth/setup/d2d/b/e;

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
    .line 75
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 76
    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->a:I

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 85
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 88
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->e:[B

    sget-object v2, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    .line 93
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->e:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    :cond_4
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->d()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->e:[B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->a:I

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 62
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->d:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->e:[B

    sget-object v1, Lcom/google/protobuf/nano/m;->h:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    .line 68
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/e;->e:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(I[B)V

    .line 70
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 71
    return-void
.end method
