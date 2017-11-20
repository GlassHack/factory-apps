.class public final Lcom/google/android/location/m/a/bq;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/m/a/ae;

.field public b:Lcom/google/android/location/m/a/ae;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    iput-object v0, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    iput-object v0, p0, Lcom/google/android/location/m/a/bq;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bq;->G:I

    .line 31
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bq;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

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
    .line 85
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    if-eqz v0, :cond_1

    .line 89
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 91
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 92
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 43
    if-ne p1, p0, :cond_1

    .line 44
    const/4 v0, 0x1

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bq;

    if-eqz v1, :cond_0

    .line 49
    check-cast p1, Lcom/google/android/location/m/a/bq;

    .line 50
    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_4

    .line 51
    iget-object v1, p1, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_0

    .line 59
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_5

    .line 60
    iget-object v1, p1, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_0

    .line 68
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bq;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 55
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    iget-object v2, p1, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 64
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    iget-object v2, p1, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 76
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 78
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bq;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 79
    return v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bq;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ae;->hashCode()I

    move-result v0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bq;->b:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/ae;->hashCode()I

    move-result v1

    goto :goto_1
.end method
