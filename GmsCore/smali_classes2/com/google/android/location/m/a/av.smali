.class public final Lcom/google/android/location/m/a/av;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/av;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/av;->G:I

    .line 28
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/av;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

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
    .line 68
    iget-object v0, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 72
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

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 42
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/av;

    if-eqz v1, :cond_0

    .line 45
    check-cast p1, Lcom/google/android/location/m/a/av;

    .line 46
    iget-object v1, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 47
    iget-object v1, p1, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 53
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/av;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 50
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/av;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    return v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/av;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
