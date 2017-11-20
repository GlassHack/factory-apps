.class public final Lcom/google/android/gms/auth/setup/d2d/b/c;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/auth/setup/d2d/b/n;

.field public b:Lcom/google/android/gms/auth/setup/d2d/b/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->G:I

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-eqz v1, :cond_1

    .line 60
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

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
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/n;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-direct {v0}, Lcom/google/android/gms/auth/setup/d2d/b/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

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
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->a:Lcom/google/android/gms/auth/setup/d2d/b/n;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    if-eqz v0, :cond_1

    .line 47
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/auth/setup/d2d/b/c;->b:Lcom/google/android/gms/auth/setup/d2d/b/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 49
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 50
    return-void
.end method
