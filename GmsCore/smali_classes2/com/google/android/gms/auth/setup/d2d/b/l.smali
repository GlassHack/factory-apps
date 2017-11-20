.class public final Lcom/google/android/gms/auth/setup/d2d/b/l;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/auth/setup/d2d/b/j;

.field public b:Lcom/google/android/gms/auth/setup/d2d/b/f;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->G:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->d:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 82
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_3
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
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/j;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->d:Ljava/lang/String;

    goto :goto_0

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
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->a:Lcom/google/android/gms/auth/setup/d2d/b/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-eqz v0, :cond_1

    .line 55
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/l;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 63
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 64
    return-void
.end method
