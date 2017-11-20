.class public final Lcom/google/android/location/m/a/al;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile j:[Lcom/google/android/location/m/a/al;


# instance fields
.field public a:Ljava/lang/Float;

.field public b:Ljava/lang/Float;

.field public c:Ljava/lang/Float;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Float;

.field public h:Ljava/lang/Integer;

.field public i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/al;->G:I

    .line 52
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/al;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/m/a/al;->j:[Lcom/google/android/location/m/a/al;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/al;->j:[Lcom/google/android/location/m/a/al;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/al;

    sput-object v0, Lcom/google/android/location/m/a/al;->j:[Lcom/google/android/location/m/a/al;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/al;->j:[Lcom/google/android/location/m/a/al;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 204
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 210
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 214
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 218
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 222
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 225
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 226
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 229
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 230
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 233
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 234
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 238
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_8
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/al;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3d -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    if-eqz v0, :cond_1

    .line 176
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    if-eqz v0, :cond_2

    .line 179
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 182
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 185
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 187
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 188
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 191
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IF)V

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 194
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 197
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 199
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 200
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    .line 72
    const/4 v0, 0x1

    .line 141
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/al;

    if-eqz v1, :cond_0

    .line 77
    check-cast p1, Lcom/google/android/location/m/a/al;

    .line 78
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    if-nez v1, :cond_b

    .line 79
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 85
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    if-nez v1, :cond_c

    .line 86
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    if-nez v1, :cond_d

    .line 93
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 99
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    if-nez v1, :cond_e

    .line 100
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 106
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    if-nez v1, :cond_f

    .line 107
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 113
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 114
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 120
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    if-nez v1, :cond_11

    .line 121
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    if-nez v1, :cond_0

    .line 127
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    if-nez v1, :cond_12

    .line 128
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 134
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    if-nez v1, :cond_13

    .line 135
    iget-object v1, p1, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 141
    :cond_a
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/al;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 89
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 96
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 103
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 110
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 117
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 124
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    invoke-virtual {v1, v2}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 131
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 138
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 149
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 151
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 153
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 157
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 159
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 161
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 163
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    if-nez v2, :cond_8

    :goto_8
    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/al;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 166
    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->a:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->b:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_1

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->c:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_2

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_4

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_5

    .line 159
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->g:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    goto :goto_6

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/al;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_7

    .line 163
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/al;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_8
.end method
