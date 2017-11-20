.class public final Lcom/google/android/gms/auth/setup/d2d/b/m;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 30
    invoke-static {}, Lcom/google/android/gms/auth/setup/d2d/b/q;->b()[Lcom/google/android/gms/auth/setup/d2d/b/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->G:I

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v1

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 61
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    aget-object v2, v2, v0

    .line 63
    if-eqz v2, :cond_0

    .line 64
    invoke-static {v3, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v2

    add-int/2addr v1, v2

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_1
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->b:I

    if-eq v0, v3, :cond_2

    .line 70
    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->b:I

    invoke-static {v0, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 73
    :cond_2
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

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/auth/setup/d2d/b/q;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/b/q;

    invoke-direct {v3}, Lcom/google/android/gms/auth/setup/d2d/b/q;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lcom/google/android/gms/auth/setup/d2d/b/q;

    invoke-direct {v3}, Lcom/google/android/gms/auth/setup/d2d/b/q;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    iput-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->b:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 44
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->a:[Lcom/google/android/gms/auth/setup/d2d/b/q;

    aget-object v1, v1, v0

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->b:I

    if-eq v0, v2, :cond_2

    .line 52
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/m;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 54
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 55
    return-void
.end method
