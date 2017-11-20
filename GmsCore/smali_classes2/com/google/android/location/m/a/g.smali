.class public final Lcom/google/android/location/m/a/g;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/g;->G:I

    .line 49
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 147
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 153
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 157
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 161
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 165
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 168
    :cond_4
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/g;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 131
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 134
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 137
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 140
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 142
    :cond_4
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 143
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 105
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/g;

    if-eqz v1, :cond_0

    .line 70
    check-cast p1, Lcom/google/android/location/m/a/g;

    .line 71
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    if-nez v1, :cond_7

    .line 72
    iget-object v1, p1, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 78
    iget-object v1, p1, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 91
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    if-nez v1, :cond_a

    .line 92
    iget-object v1, p1, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 98
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    if-nez v1, :cond_b

    .line 99
    iget-object v1, p1, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 105
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/g;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 81
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 88
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 95
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 102
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 112
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 114
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 118
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    .line 120
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/g;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    return v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/g;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/g;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_4
.end method
