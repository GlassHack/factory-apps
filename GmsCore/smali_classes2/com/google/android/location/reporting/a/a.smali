.class public final Lcom/google/android/location/reporting/a/a;
.super Lcom/google/protobuf/nano/d;
.source "SourceFile"


# static fields
.field private static volatile p:[Lcom/google/android/location/reporting/a/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Boolean;

.field public d:Ljava/lang/Long;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/Boolean;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Long;

.field public j:Ljava/lang/Integer;

.field public k:Ljava/lang/Boolean;

.field public l:Ljava/lang/Boolean;

.field public m:Lcom/google/android/location/reporting/a/b;

.field public n:Ljava/lang/Integer;

.field public o:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/google/protobuf/nano/d;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->F:Lcom/google/protobuf/nano/f;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/location/reporting/a/a;->G:I

    .line 70
    return-void
.end method

.method public static b()[Lcom/google/android/location/reporting/a/a;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/location/reporting/a/a;->p:[Lcom/google/android/location/reporting/a/a;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/h;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/android/location/reporting/a/a;->p:[Lcom/google/android/location/reporting/a/a;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/location/reporting/a/a;

    sput-object v0, Lcom/google/android/location/reporting/a/a;->p:[Lcom/google/android/location/reporting/a/a;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/android/location/reporting/a/a;->p:[Lcom/google/android/location/reporting/a/a;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected final a()I
    .locals 4

    .prologue
    .line 302
    invoke-super {p0}, Lcom/google/protobuf/nano/d;->a()I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 304
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 308
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 312
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 316
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    .line 320
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 323
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 324
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 327
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    .line 328
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 331
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 332
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 335
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    if-eqz v1, :cond_8

    .line 336
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/b;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 339
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 340
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_a

    .line 344
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 347
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 348
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 351
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    if-eqz v1, :cond_c

    .line 352
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 355
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 356
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 359
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    if-eqz v1, :cond_e

    .line 360
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 363
    :cond_e
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

    invoke-virtual {p0, p1, v0}, Lcom/google/android/location/reporting/a/a;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    goto/16 :goto_0

    :sswitch_d
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/location/reporting/a/b;

    invoke-direct {v0}, Lcom/google/android/location/reporting/a/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    goto/16 :goto_0

    nop

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
        0x6a -> :sswitch_d
        0x70 -> :sswitch_e
        0x78 -> :sswitch_f
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILjava/lang/String;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 259
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 262
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    .line 265
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 268
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 270
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    .line 271
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 274
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 276
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 277
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/b;->b(IJ)V

    .line 279
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 280
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    .line 283
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 285
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 286
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 288
    :cond_b
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    if-eqz v0, :cond_c

    .line 289
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 291
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_d

    .line 292
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(II)V

    .line 294
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    .line 295
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 297
    :cond_e
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/d;->a(Lcom/google/protobuf/nano/b;)V

    .line 298
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 95
    if-ne p1, p0, :cond_1

    .line 96
    const/4 v0, 0x1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    instance-of v1, p1, Lcom/google/android/location/reporting/a/a;

    if-eqz v1, :cond_0

    .line 101
    check-cast p1, Lcom/google/android/location/reporting/a/a;

    .line 102
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    if-nez v1, :cond_11

    .line 103
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    if-nez v1, :cond_12

    .line 110
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_13

    .line 117
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 123
    :cond_4
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    if-nez v1, :cond_14

    .line 124
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 130
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_15

    .line 131
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 137
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_16

    .line 138
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 144
    :cond_7
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_17

    .line 145
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 151
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_18

    .line 152
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 158
    :cond_9
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    if-nez v1, :cond_19

    .line 159
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 165
    :cond_a
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    if-nez v1, :cond_1a

    .line 166
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 172
    :cond_b
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_1b

    .line 173
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 179
    :cond_c
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_1c

    .line 180
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 186
    :cond_d
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    if-nez v1, :cond_1d

    .line 187
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    if-nez v1, :cond_0

    .line 195
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    if-nez v1, :cond_1e

    .line 196
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 202
    :cond_f
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    if-nez v1, :cond_1f

    .line 203
    iget-object v1, p1, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 209
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/a/a;->a(Lcom/google/protobuf/nano/d;)Z

    move-result v0

    goto/16 :goto_0

    .line 106
    :cond_11
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    .line 113
    :cond_12
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    .line 120
    :cond_13
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    .line 127
    :cond_14
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    .line 134
    :cond_15
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    .line 141
    :cond_16
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    .line 148
    :cond_17
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    .line 155
    :cond_18
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    .line 162
    :cond_19
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    .line 169
    :cond_1a
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 176
    :cond_1b
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    .line 183
    :cond_1c
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    .line 191
    :cond_1d
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {v1, v2}, Lcom/google/android/location/reporting/a/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    .line 199
    :cond_1e
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    .line 206
    :cond_1f
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 217
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 219
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 221
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 223
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 225
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 227
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 229
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 231
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 233
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 235
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 237
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_b

    move v0, v1

    :goto_b
    add-int/2addr v0, v2

    .line 239
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    if-nez v0, :cond_c

    move v0, v1

    :goto_c
    add-int/2addr v0, v2

    .line 241
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    if-nez v0, :cond_d

    move v0, v1

    :goto_d
    add-int/2addr v0, v2

    .line 243
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    if-nez v2, :cond_e

    :goto_e
    add-int/2addr v0, v1

    .line 245
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/location/reporting/a/a;->c()I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    return v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_3

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_4

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_5

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_6

    .line 229
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_7

    .line 231
    :cond_8
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->i:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    goto :goto_8

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->j:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_9

    .line 235
    :cond_a
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->k:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_a

    .line 237
    :cond_b
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_b

    .line 239
    :cond_c
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->m:Lcom/google/android/location/reporting/a/b;

    invoke-virtual {v0}, Lcom/google/android/location/reporting/a/b;->hashCode()I

    move-result v0

    goto :goto_c

    .line 241
    :cond_d
    iget-object v0, p0, Lcom/google/android/location/reporting/a/a;->n:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_d

    .line 243
    :cond_e
    iget-object v1, p0, Lcom/google/android/location/reporting/a/a;->o:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_e
.end method
