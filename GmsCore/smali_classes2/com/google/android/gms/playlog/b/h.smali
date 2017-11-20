.class public final Lcom/google/android/gms/playlog/b/h;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/playlog/b/h;->G:I

    .line 51
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 188
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 194
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 198
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 201
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 202
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 206
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 209
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 210
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 213
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 214
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 217
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 218
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_7
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 8
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 163
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 166
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 169
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 172
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 175
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 178
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 181
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 183
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 184
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 68
    if-ne p1, p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/playlog/b/h;

    if-nez v2, :cond_2

    move v0, v1

    .line 72
    goto :goto_0

    .line 74
    :cond_2
    check-cast p1, Lcom/google/android/gms/playlog/b/h;

    .line 75
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    if-nez v2, :cond_3

    .line 76
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    move v0, v1

    .line 77
    goto :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 80
    goto :goto_0

    .line 82
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 83
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 87
    goto :goto_0

    .line 89
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    if-nez v2, :cond_7

    .line 90
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    move v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    if-nez v2, :cond_9

    .line 97
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    move v0, v1

    .line 98
    goto :goto_0

    .line 100
    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 104
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    if-eqz v2, :cond_c

    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 108
    goto :goto_0

    .line 110
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 111
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    if-eqz v2, :cond_e

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    if-nez v2, :cond_f

    .line 118
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    if-eqz v2, :cond_10

    move v0, v1

    .line 119
    goto/16 :goto_0

    .line 121
    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    .line 122
    goto/16 :goto_0

    .line 124
    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    if-nez v2, :cond_11

    .line 125
    iget-object v2, p1, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 126
    goto/16 :goto_0

    .line 128
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 129
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 139
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 141
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 143
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 145
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 147
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 149
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    if-nez v2, :cond_7

    :goto_7
    add-int/2addr v0, v1

    .line 153
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5

    .line 149
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/playlog/b/h;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_6

    .line 151
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/playlog/b/h;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_7
.end method
