.class public final Lcom/google/android/location/m/a/l;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/m/a/p;

.field public b:Lcom/google/android/location/m/a/p;

.field public c:Lcom/google/android/location/m/a/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    iput-object v0, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    iput-object v0, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    iput-object v0, p0, Lcom/google/android/location/m/a/l;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/l;->G:I

    .line 34
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    if-eqz v1, :cond_0

    .line 116
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    if-eqz v1, :cond_1

    .line 120
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    if-eqz v1, :cond_2

    .line 124
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_2
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/l;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/p;

    invoke-direct {v0}, Lcom/google/android/location/m/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/p;

    invoke-direct {v0}, Lcom/google/android/location/m/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/location/m/a/p;

    invoke-direct {v0}, Lcom/google/android/location/m/a/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    if-eqz v0, :cond_1

    .line 104
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    if-eqz v0, :cond_2

    .line 107
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 109
    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 110
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 47
    if-ne p1, p0, :cond_1

    .line 48
    const/4 v0, 0x1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/l;

    if-eqz v1, :cond_0

    .line 53
    check-cast p1, Lcom/google/android/location/m/a/l;

    .line 54
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    if-nez v1, :cond_5

    .line 55
    iget-object v1, p1, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    if-nez v1, :cond_0

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    if-nez v1, :cond_6

    .line 64
    iget-object v1, p1, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    if-nez v1, :cond_0

    .line 72
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    if-nez v1, :cond_7

    .line 73
    iget-object v1, p1, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    if-nez v1, :cond_0

    .line 81
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/l;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    iget-object v2, p1, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    iget-object v2, p1, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 77
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    iget-object v2, p1, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/p;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 89
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 93
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/l;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->a:Lcom/google/android/location/m/a/p;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/p;->hashCode()I

    move-result v0

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/l;->b:Lcom/google/android/location/m/a/p;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/p;->hashCode()I

    move-result v0

    goto :goto_1

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/l;->c:Lcom/google/android/location/m/a/p;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/p;->hashCode()I

    move-result v1

    goto :goto_2
.end method
