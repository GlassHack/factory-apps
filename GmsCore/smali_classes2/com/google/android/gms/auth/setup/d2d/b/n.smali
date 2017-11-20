.class public final Lcom/google/android/gms/auth/setup/d2d/b/n;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/gms/auth/setup/d2d/b/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 27
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/b/e;->b()[Lcom/google/android/gms/auth/setup/d2d/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->G:I

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 52
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v1

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 54
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    aget-object v2, v2, v0

    .line 56
    if-eqz v2, :cond_0

    .line 57
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 54
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return v1
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

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->b(Lcom/google/protobuf/nano/a;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/auth/setup/d2d/b/e;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/b/e;

    invoke-direct {v3}, Lcom/google/android/gms/auth/setup/d2d/b/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/b/e;

    invoke-direct {v3}, Lcom/google/android/gms/auth/setup/d2d/b/e;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 40
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/n;->a:[Lcom/google/android/gms/auth/setup/d2d/b/e;

    aget-object v1, v1, v0

    .line 42
    if-eqz v1, :cond_0

    .line 43
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 40
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 48
    return-void
.end method
