.class public final Lcom/google/android/location/m/a/v;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Boolean;

.field public c:Lcom/google/android/location/m/a/bq;

.field public d:Ljava/lang/Integer;

.field public e:Lcom/google/android/location/m/a/t;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/v;->G:I

    .line 46
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 176
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 178
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 182
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    if-eqz v1, :cond_2

    .line 186
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 190
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    if-eqz v1, :cond_4

    .line 194
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 198
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 201
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 202
    const/16 v1, 0x270e

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 205
    :cond_6
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/v;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/bq;

    invoke-direct {v0}, Lcom/google/android/location/m/a/bq;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/t;

    invoke-direct {v0}, Lcom/google/android/location/m/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x13870 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->b(II)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 154
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    if-eqz v0, :cond_2

    .line 157
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 160
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    if-eqz v0, :cond_4

    .line 163
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 166
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 168
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 169
    const/16 v0, 0x270e

    iget-object v1, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 171
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 172
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    if-ne p1, p0, :cond_1

    .line 64
    const/4 v0, 0x1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/v;

    if-eqz v1, :cond_0

    .line 69
    check-cast p1, Lcom/google/android/location/m/a/v;

    .line 70
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 71
    iget-object v1, p1, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 78
    iget-object v1, p1, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    if-nez v1, :cond_b

    .line 85
    iget-object v1, p1, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    if-nez v1, :cond_0

    .line 93
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 94
    iget-object v1, p1, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 100
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    if-nez v1, :cond_d

    .line 101
    iget-object v1, p1, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    if-nez v1, :cond_0

    .line 109
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_e

    .line 110
    iget-object v1, p1, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 116
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_f

    .line 117
    iget-object v1, p1, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 123
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/v;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 74
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 81
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 89
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    iget-object v2, p1, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/bq;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 97
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 105
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    iget-object v2, p1, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/t;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    .line 113
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 120
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 131
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 133
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 135
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 137
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 139
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_6

    :goto_6
    add-int/2addr v0, v1

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/v;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_1

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->c:Lcom/google/android/location/m/a/bq;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/bq;->hashCode()I

    move-result v0

    goto :goto_2

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->e:Lcom/google/android/location/m/a/t;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/t;->hashCode()I

    move-result v0

    goto :goto_4

    .line 139
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/v;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_5

    .line 141
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/v;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_6
.end method
