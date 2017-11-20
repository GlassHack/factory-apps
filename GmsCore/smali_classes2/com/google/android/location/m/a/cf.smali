.class public final Lcom/google/android/location/m/a/cf;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile m:[Lcom/google/android/location/m/a/cf;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Long;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/cf;->G:I

    .line 68
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/cf;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/location/m/a/cf;->m:[Lcom/google/android/location/m/a/cf;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/cf;->m:[Lcom/google/android/location/m/a/cf;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/cf;

    sput-object v0, Lcom/google/android/location/m/a/cf;->m:[Lcom/google/android/location/m/a/cf;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/cf;->m:[Lcom/google/android/location/m/a/cf;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 255
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 256
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 259
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 263
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 267
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 271
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 275
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 278
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 279
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 283
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 287
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->h(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_8

    .line 291
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 295
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 299
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_a
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 2

    .prologue
    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/cf;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 216
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 221
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 224
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 227
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 230
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 233
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 236
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 238
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 239
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->e(II)V

    .line 241
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 242
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 244
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 245
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 248
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 250
    :cond_a
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 251
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 90
    if-ne p1, p0, :cond_1

    .line 91
    const/4 v0, 0x1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/cf;

    if-eqz v1, :cond_0

    .line 96
    check-cast p1, Lcom/google/android/location/m/a/cf;

    .line 97
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    if-nez v1, :cond_e

    .line 98
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 104
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 105
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 112
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 118
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    if-nez v1, :cond_11

    .line 119
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 125
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    if-nez v1, :cond_12

    .line 126
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 132
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_13

    .line 133
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 139
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    if-nez v1, :cond_14

    .line 140
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 146
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    if-nez v1, :cond_15

    .line 147
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 153
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    if-nez v1, :cond_16

    .line 154
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 160
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    if-nez v1, :cond_17

    .line 161
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 167
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    if-nez v1, :cond_18

    .line 168
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 173
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    if-nez v1, :cond_19

    .line 174
    iget-object v1, p1, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 180
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/cf;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 108
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 115
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 122
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 129
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 136
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 143
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 150
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 157
    :cond_16
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 164
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 171
    :cond_18
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 177
    :cond_19
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 188
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 198
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 202
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 204
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 206
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    if-nez v2, :cond_b

    :goto_b
    add-int/2addr v0, v1

    .line 209
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/cf;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    return v0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_4

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_5

    .line 198
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_6

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->h:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_7

    .line 202
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_8

    .line 204
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_9

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/cf;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_a

    .line 207
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/cf;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_b
.end method
