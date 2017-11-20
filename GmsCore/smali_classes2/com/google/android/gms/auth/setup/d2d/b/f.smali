.class public final Lcom/google/android/gms/auth/setup/d2d/b/f;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->G:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 61
    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    if-eq v1, v2, :cond_0

    .line 62
    iget v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 69
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 49
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    if-eq v0, v1, :cond_0

    .line 50
    iget v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->a:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/f;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 55
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 56
    return-void
.end method
