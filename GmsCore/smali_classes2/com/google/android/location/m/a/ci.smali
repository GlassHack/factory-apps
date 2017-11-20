.class public final Lcom/google/android/location/m/a/ci;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/m/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    iput-object v0, p0, Lcom/google/android/location/m/a/ci;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/ci;->G:I

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 79
    iget-object v1, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 83
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/ci;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/b/a;

    invoke-direct {v0}, Lcom/google/android/location/m/b/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 73
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 74
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    if-ne p1, p0, :cond_1

    .line 40
    const/4 v0, 0x1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/ci;

    if-eqz v1, :cond_0

    .line 45
    check-cast p1, Lcom/google/android/location/m/a/ci;

    .line 46
    iget-object v1, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    if-nez v1, :cond_3

    .line 47
    iget-object v1, p1, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    if-nez v1, :cond_0

    .line 55
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/ci;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    iget-object v2, p1, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/b/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 63
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/ci;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 64
    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/ci;->a:Lcom/google/android/location/m/b/a;

    invoke-virtual {v0}, Lcom/google/android/location/m/b/a;->hashCode()I

    move-result v0

    goto :goto_0
.end method
