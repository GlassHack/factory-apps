.class public final Lcom/google/android/location/m/a/au;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/m/a/ae;

.field public b:Ljava/lang/Integer;

.field public c:Lcom/google/android/location/m/a/bq;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/au;->G:I

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 128
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    if-eqz v1, :cond_0

    .line 130
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 134
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    if-eqz v1, :cond_2

    .line 138
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 142
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/au;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/bq;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bq;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    if-eqz v0, :cond_2

    .line 118
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 121
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 123
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 124
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 51
    if-ne p1, p0, :cond_1

    .line 52
    const/4 v0, 0x1

    .line 90
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/au;

    if-eqz v1, :cond_0

    .line 57
    check-cast p1, Lcom/google/android/location/m/a/au;

    .line 58
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_6

    .line 59
    iget-object v1, p1, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_0

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 68
    iget-object v1, p1, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    if-nez v1, :cond_8

    .line 75
    iget-object v1, p1, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    if-nez v1, :cond_0

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 84
    iget-object v1, p1, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 90
    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/au;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 63
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    iget-object v2, p1, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 71
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 79
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    iget-object v2, p1, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 87
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 98
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 100
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/au;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    return v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->a:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ae;->hashCode()I

    move-result v0

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/au;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bq;->hashCode()I

    move-result v0

    goto :goto_2

    .line 102
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/au;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method
