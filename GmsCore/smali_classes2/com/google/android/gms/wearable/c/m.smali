.class public final Lcom/google/android/gms/wearable/c/m;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/gms/wearable/c/g;

.field public b:Lcom/google/android/gms/wearable/c/h;

.field public c:Lcom/google/android/gms/wearable/c/f;

.field public d:Lcom/google/android/gms/wearable/c/q;

.field public e:Lcom/google/android/gms/wearable/c/a;

.field public f:Lcom/google/android/gms/wearable/c/j;

.field public g:Lcom/google/android/gms/wearable/c/i;

.field public h:Lcom/google/android/gms/wearable/c/s;

.field public i:Lcom/google/android/gms/wearable/c/r;

.field public j:Lcom/google/android/gms/wearable/c/p;

.field public k:Lcom/google/android/gms/wearable/c/l;

.field public l:Lcom/google/android/gms/wearable/c/k;

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/wearable/c/m;->G:I

    .line 64
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 285
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    if-eqz v1, :cond_0

    .line 287
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    if-eqz v1, :cond_1

    .line 291
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    if-eqz v1, :cond_2

    .line 295
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v1, :cond_3

    .line 299
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 302
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-eqz v1, :cond_4

    .line 303
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-eqz v1, :cond_5

    .line 307
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-eqz v1, :cond_6

    .line 311
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-eqz v1, :cond_7

    .line 315
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 318
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-eqz v1, :cond_8

    .line 319
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 322
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-eqz v1, :cond_9

    .line 323
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-eqz v1, :cond_a

    .line 327
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-eqz v1, :cond_b

    .line 331
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 334
    :cond_b
    iget-boolean v1, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    if-eqz v1, :cond_c

    .line 335
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    invoke-static {v1}, Lcom/google/protobuf/nano/b;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 338
    :cond_c
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

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/wearable/c/g;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/wearable/c/h;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/android/gms/wearable/c/f;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/f;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/wearable/c/q;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/wearable/c/a;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-nez v0, :cond_6

    new-instance v0, Lcom/google/android/gms/wearable/c/j;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/j;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-nez v0, :cond_7

    new-instance v0, Lcom/google/android/gms/wearable/c/i;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/wearable/c/s;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/s;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/wearable/c/r;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/r;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/wearable/c/p;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_b
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/wearable/c/l;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/l;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-nez v0, :cond_c

    new-instance v0, Lcom/google/android/gms/wearable/c/k;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/c/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    goto/16 :goto_0

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
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    if-eqz v0, :cond_1

    .line 245
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    if-eqz v0, :cond_2

    .line 248
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v0, :cond_3

    .line 251
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 253
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-eqz v0, :cond_4

    .line 254
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 256
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-eqz v0, :cond_5

    .line 257
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 259
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-eqz v0, :cond_6

    .line 260
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 262
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-eqz v0, :cond_7

    .line 263
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-eqz v0, :cond_8

    .line 266
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 268
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-eqz v0, :cond_9

    .line 269
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 271
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-eqz v0, :cond_a

    .line 272
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 274
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-eqz v0, :cond_b

    .line 275
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 277
    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    if-eqz v0, :cond_c

    .line 278
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(IZ)V

    .line 280
    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 281
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 86
    if-ne p1, p0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/wearable/c/m;

    if-nez v2, :cond_2

    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :cond_2
    check-cast p1, Lcom/google/android/gms/wearable/c/m;

    .line 93
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    if-nez v2, :cond_3

    .line 94
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    if-eqz v2, :cond_4

    move v0, v1

    .line 95
    goto :goto_0

    .line 98
    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 99
    goto :goto_0

    .line 102
    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    if-nez v2, :cond_5

    .line 103
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    if-eqz v2, :cond_6

    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/h;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 108
    goto :goto_0

    .line 111
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    if-nez v2, :cond_7

    .line 112
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    if-eqz v2, :cond_8

    move v0, v1

    .line 113
    goto :goto_0

    .line 116
    :cond_7
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 117
    goto :goto_0

    .line 120
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-nez v2, :cond_9

    .line 121
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-eqz v2, :cond_a

    move v0, v1

    .line 122
    goto :goto_0

    .line 125
    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    .line 126
    goto :goto_0

    .line 129
    :cond_a
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-nez v2, :cond_b

    .line 130
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-eqz v2, :cond_c

    move v0, v1

    .line 131
    goto :goto_0

    .line 134
    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move v0, v1

    .line 135
    goto :goto_0

    .line 138
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-nez v2, :cond_d

    .line 139
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-eqz v2, :cond_e

    move v0, v1

    .line 140
    goto :goto_0

    .line 143
    :cond_d
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/j;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    .line 144
    goto/16 :goto_0

    .line 147
    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-nez v2, :cond_f

    .line 148
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-eqz v2, :cond_10

    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 152
    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    .line 153
    goto/16 :goto_0

    .line 156
    :cond_10
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-nez v2, :cond_11

    .line 157
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-eqz v2, :cond_12

    move v0, v1

    .line 158
    goto/16 :goto_0

    .line 161
    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/s;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    move v0, v1

    .line 162
    goto/16 :goto_0

    .line 165
    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-nez v2, :cond_13

    .line 166
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-eqz v2, :cond_14

    move v0, v1

    .line 167
    goto/16 :goto_0

    .line 170
    :cond_13
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/r;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    .line 171
    goto/16 :goto_0

    .line 174
    :cond_14
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-nez v2, :cond_15

    .line 175
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-eqz v2, :cond_16

    move v0, v1

    .line 176
    goto/16 :goto_0

    .line 179
    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    move v0, v1

    .line 180
    goto/16 :goto_0

    .line 183
    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-nez v2, :cond_17

    .line 184
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-eqz v2, :cond_18

    move v0, v1

    .line 185
    goto/16 :goto_0

    .line 188
    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    move v0, v1

    .line 189
    goto/16 :goto_0

    .line 192
    :cond_18
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-nez v2, :cond_19

    .line 193
    iget-object v2, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-eqz v2, :cond_1a

    move v0, v1

    .line 194
    goto/16 :goto_0

    .line 197
    :cond_19
    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    iget-object v3, p1, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/wearable/c/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    move v0, v1

    .line 198
    goto/16 :goto_0

    .line 201
    :cond_1a
    iget-boolean v2, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    iget-boolean v3, p1, Lcom/google/android/gms/wearable/c/m;->m:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 202
    goto/16 :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 212
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 214
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 216
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    .line 218
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v2

    .line 220
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v2

    .line 222
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v2

    .line 224
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 226
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 228
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 230
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    if-nez v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v2

    .line 232
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    if-nez v2, :cond_b

    :goto_b
    add-int/2addr v0, v1

    .line 234
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/wearable/c/m;->m:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x4cf

    :goto_c
    add-int/2addr v0, v1

    .line 235
    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->a:Lcom/google/android/gms/wearable/c/g;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/g;->hashCode()I

    move-result v0

    goto :goto_0

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->b:Lcom/google/android/gms/wearable/c/h;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/h;->hashCode()I

    move-result v0

    goto :goto_1

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->c:Lcom/google/android/gms/wearable/c/f;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/f;->hashCode()I

    move-result v0

    goto :goto_2

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->d:Lcom/google/android/gms/wearable/c/q;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/q;->hashCode()I

    move-result v0

    goto :goto_3

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->e:Lcom/google/android/gms/wearable/c/a;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/a;->hashCode()I

    move-result v0

    goto :goto_4

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->f:Lcom/google/android/gms/wearable/c/j;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/j;->hashCode()I

    move-result v0

    goto :goto_5

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->g:Lcom/google/android/gms/wearable/c/i;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/i;->hashCode()I

    move-result v0

    goto :goto_6

    .line 224
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->h:Lcom/google/android/gms/wearable/c/s;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/s;->hashCode()I

    move-result v0

    goto :goto_7

    .line 226
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->i:Lcom/google/android/gms/wearable/c/r;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/r;->hashCode()I

    move-result v0

    goto :goto_8

    .line 228
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->j:Lcom/google/android/gms/wearable/c/p;

    invoke-virtual {v0}, Lcom/google/android/gms/wearable/c/p;->hashCode()I

    move-result v0

    goto :goto_9

    .line 230
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/wearable/c/m;->k:Lcom/google/android/gms/wearable/c/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    .line 232
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/wearable/c/m;->l:Lcom/google/android/gms/wearable/c/k;

    invoke-virtual {v1}, Lcom/google/android/gms/wearable/c/k;->hashCode()I

    move-result v1

    goto :goto_b

    .line 234
    :cond_c
    const/16 v0, 0x4d5

    goto :goto_c
.end method
