.class public final Lcom/google/android/location/m/a/f;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile m:[Lcom/google/android/location/m/a/f;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/Integer;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ljava/lang/Integer;

.field public i:Lcom/google/android/location/m/a/ae;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Integer;

.field public l:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/m/a/f;->G:I

    .line 70
    return-void
.end method

.method public static b()[Lcom/google/android/location/m/a/f;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/android/location/m/a/f;->m:[Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/android/location/m/a/f;->m:[Lcom/google/android/location/m/a/f;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/m/a/f;

    sput-object v0, Lcom/google/android/location/m/a/f;->m:[Lcom/google/android/location/m/a/f;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/android/location/m/a/f;->m:[Lcom/google/android/location/m/a/f;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 263
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 267
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 271
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 275
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 279
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 283
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 287
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 291
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    if-eqz v1, :cond_8

    .line 295
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 299
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    .line 303
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 307
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_b
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/m/a/f;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/m/a/ae;

    invoke-direct {v0}, Lcom/google/android/location/m/a/ae;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
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
    .line 220
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 221
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 224
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 227
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 230
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 233
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 236
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 239
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 241
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 242
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    if-eqz v0, :cond_8

    .line 245
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 247
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 248
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 250
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_a

    .line 251
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 253
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    .line 254
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 256
    :cond_b
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 257
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 93
    const/4 v0, 0x1

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/m/a/f;

    if-eqz v1, :cond_0

    .line 98
    check-cast p1, Lcom/google/android/location/m/a/f;

    .line 99
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    if-nez v1, :cond_e

    .line 100
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    if-nez v1, :cond_f

    .line 107
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 113
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 114
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    if-nez v1, :cond_11

    .line 121
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 127
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    if-nez v1, :cond_12

    .line 128
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    if-nez v1, :cond_13

    .line 135
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 141
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    if-nez v1, :cond_14

    .line 142
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 148
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    if-nez v1, :cond_15

    .line 149
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 155
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_16

    .line 156
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    if-nez v1, :cond_0

    .line 164
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    if-nez v1, :cond_17

    .line 165
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 170
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    if-nez v1, :cond_18

    .line 171
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 177
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    if-nez v1, :cond_19

    .line 178
    iget-object v1, p1, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 184
    :cond_d
    invoke-virtual {p0, p1}, Lcom/google/android/location/m/a/f;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 110
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 117
    :cond_10
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 124
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 131
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 138
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 145
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 152
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 160
    :cond_16
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v1, v2}, Lcom/google/android/location/m/a/ae;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 168
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 174
    :cond_18
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 181
    :cond_19
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 198
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 200
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 202
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 204
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 206
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 208
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 209
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 211
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    if-nez v2, :cond_b

    :goto_b
    add-int/2addr v0, v1

    .line 213
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/m/a/f;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 214
    return v0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_1

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->c:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_2

    .line 196
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_3

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_4

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->f:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_5

    .line 202
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_6

    .line 204
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_7

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->i:Lcom/google/android/location/m/a/ae;

    invoke-virtual {v0}, Lcom/google/android/location/m/a/ae;->hashCode()I

    move-result v0

    goto :goto_8

    .line 208
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9

    .line 209
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/m/a/f;->k:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_a

    .line 211
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/m/a/f;->l:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    goto :goto_b
.end method
