.class public final Lcom/google/android/location/m/b/b;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/location/m/b/e;

.field public b:Lcom/google/android/location/m/b/f;

.field public c:Lcom/google/android/location/m/b/f;

.field public d:Lcom/google/android/location/m/b/f;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/b/b;->G:I

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    if-eqz v1, :cond_2

    .line 174
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 178
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    if-eqz v1, :cond_4

    .line 182
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 186
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_5
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/b/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/b/e;

    invoke-direct {v0}, Lcom/google/android/location/m/b/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/b/f;

    invoke-direct {v0}, Lcom/google/android/location/m/b/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/location/m/b/f;

    invoke-direct {v0}, Lcom/google/android/location/m/b/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/location/m/b/f;

    invoke-direct {v0}, Lcom/google/android/location/m/b/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    if-eqz v0, :cond_2

    .line 148
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 151
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    if-eqz v0, :cond_4

    .line 154
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 157
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 159
    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 160
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 59
    if-ne p1, p0, :cond_1

    .line 60
    const/4 v0, 0x1

    .line 116
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/b/b;

    if-eqz v1, :cond_0

    .line 65
    check-cast p1, Lcom/google/android/location/m/b/b;

    .line 66
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    if-nez v1, :cond_8

    .line 67
    iget-object v1, p1, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    if-nez v1, :cond_0

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    if-nez v1, :cond_9

    .line 76
    iget-object v1, p1, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    if-nez v1, :cond_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    if-nez v1, :cond_a

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    if-nez v1, :cond_0

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    if-nez v1, :cond_b

    .line 94
    iget-object v1, p1, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    if-nez v1, :cond_0

    .line 102
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 103
    iget-object v1, p1, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 110
    iget-object v1, p1, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 116
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/b/b;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 71
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    iget-object v2, p1, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/b/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 80
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    iget-object v2, p1, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/b/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 89
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    iget-object v2, p1, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/b/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 98
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    iget-object v2, p1, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/b/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 106
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 113
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 124
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 126
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 128
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 130
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 132
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    :goto_5
    add-int/2addr v0, v1

    .line 134
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/b/b;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->a:Lcom/google/android/location/m/b/e;

    invoke-virtual {v0}, Lcom/google/android/location/m/b/e;->hashCode()I

    move-result v0

    goto :goto_0

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->b:Lcom/google/android/location/m/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/m/b/f;->hashCode()I

    move-result v0

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->c:Lcom/google/android/location/m/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/m/b/f;->hashCode()I

    move-result v0

    goto :goto_2

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->d:Lcom/google/android/location/m/b/f;

    invoke-virtual {v0}, Lcom/google/android/location/m/b/f;->hashCode()I

    move-result v0

    goto :goto_3

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/b/b;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_4

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/b/b;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method
