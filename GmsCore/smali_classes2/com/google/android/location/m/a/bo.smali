.class public final Lcom/google/android/location/m/a/bo;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/google/android/location/m/a/g;

.field public g:Lcom/google/android/location/m/a/cg;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Lcom/google/android/location/m/a/br;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/bo;->G:I

    .line 55
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 226
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 232
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 236
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 240
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 244
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 247
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    if-eqz v1, :cond_5

    .line 248
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 251
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    if-eqz v1, :cond_6

    .line 252
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 256
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 259
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 260
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 263
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    if-eqz v1, :cond_9

    .line 264
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    :cond_9
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/bo;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/g;

    invoke-direct {v0}, Lcom/google/android/location/m/a/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/location/m/a/cg;

    invoke-direct {v0}, Lcom/google/android/location/m/a/cg;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/location/m/a/br;

    invoke-direct {v0}, Lcom/google/android/location/m/a/br;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 198
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 201
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 204
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 206
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    if-eqz v0, :cond_5

    .line 207
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    if-eqz v0, :cond_6

    .line 210
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 212
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 213
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 215
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 216
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 218
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    if-eqz v0, :cond_9

    .line 219
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 221
    :cond_9
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 222
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 75
    if-ne p1, p0, :cond_1

    .line 76
    const/4 v0, 0x1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/bo;

    if-eqz v1, :cond_0

    .line 81
    check-cast p1, Lcom/google/android/location/m/a/bo;

    .line 82
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    if-nez v1, :cond_c

    .line 83
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    if-nez v1, :cond_d

    .line 90
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 97
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 103
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 104
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 110
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 111
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 117
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    if-nez v1, :cond_11

    .line 118
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    if-nez v1, :cond_0

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    if-nez v1, :cond_12

    .line 127
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    if-nez v1, :cond_0

    .line 135
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 136
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 142
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    if-nez v1, :cond_14

    .line 143
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 149
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    if-nez v1, :cond_15

    .line 150
    iget-object v1, p1, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    if-nez v1, :cond_0

    .line 158
    :cond_b
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/bo;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 86
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 93
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 100
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 107
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 114
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 122
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 131
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/cg;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 139
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 146
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 154
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    iget-object v2, p1, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/br;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 166
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 170
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 174
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 176
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 178
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 180
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    if-nez v2, :cond_9

    :goto_9
    add-int/2addr v0, v1

    .line 184
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/bo;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    return v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_3

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->f:Lcom/google/android/location/m/a/g;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/g;->hashCode()I

    move-result v0

    goto :goto_5

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->g:Lcom/google/android/location/m/a/cg;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/cg;->hashCode()I

    move-result v0

    goto :goto_6

    .line 178
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7

    .line 180
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/bo;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    .line 182
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/bo;->j:Lcom/google/android/location/m/a/br;

    invoke-virtual {v1}, Lcom/google/android/location/m/a/br;->hashCode()I

    move-result v1

    goto :goto_9
.end method
