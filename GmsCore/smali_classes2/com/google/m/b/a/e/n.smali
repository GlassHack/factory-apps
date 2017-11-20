.class public final Lcom/google/m/b/a/e/n;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:Z

.field d:I

.field e:Z

.field public f:Lcom/google/protobuf/a/a;

.field g:Z

.field public h:Lcom/google/protobuf/a/a;

.field i:Lcom/google/protobuf/a/a;

.field public j:Lcom/google/protobuf/a/a;

.field k:I

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 157
    iput v0, p0, Lcom/google/m/b/a/e/n;->b:I

    .line 174
    iput v0, p0, Lcom/google/m/b/a/e/n;->d:I

    .line 191
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/n;->f:Lcom/google/protobuf/a/a;

    .line 208
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/n;->h:Lcom/google/protobuf/a/a;

    .line 225
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/n;->i:Lcom/google/protobuf/a/a;

    .line 242
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/n;->j:Lcom/google/protobuf/a/a;

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/m/b/a/e/n;->k:I

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/e/n;->o:I

    .line 152
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/google/m/b/a/e/n;->o:I

    if-gez v0, :cond_0

    .line 322
    invoke-virtual {p0}, Lcom/google/m/b/a/e/n;->b()I

    .line 324
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/e/n;->o:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/e/n;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/n;->a:Z

    .line 162
    iput p1, p0, Lcom/google/m/b/a/e/n;->b:I

    .line 163
    return-object p0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/n;->e:Z

    .line 196
    iput-object p1, p0, Lcom/google/m/b/a/e/n;->f:Lcom/google/protobuf/a/a;

    .line 197
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 149
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/n;->a(I)Lcom/google/m/b/a/e/n;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/n;->b(I)Lcom/google/m/b/a/e/n;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/n;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/n;->b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/n;->c(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/n;->d(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/n;->c(I)Lcom/google/m/b/a/e/n;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/google/m/b/a/e/n;->a:Z

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/e/n;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/e/n;->c:Z

    if-eqz v0, :cond_1

    .line 298
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/e/n;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 300
    :cond_1
    iget-boolean v0, p0, Lcom/google/m/b/a/e/n;->e:Z

    if-eqz v0, :cond_2

    .line 301
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/m/b/a/e/n;->f:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 303
    :cond_2
    iget-boolean v0, p0, Lcom/google/m/b/a/e/n;->g:Z

    if-eqz v0, :cond_3

    .line 304
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/m/b/a/e/n;->h:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 306
    :cond_3
    iget-boolean v0, p0, Lcom/google/m/b/a/e/n;->l:Z

    if-eqz v0, :cond_4

    .line 307
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/m/b/a/e/n;->i:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 309
    :cond_4
    iget-boolean v0, p0, Lcom/google/m/b/a/e/n;->m:Z

    if-eqz v0, :cond_5

    .line 310
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/m/b/a/e/n;->j:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 312
    :cond_5
    iget-boolean v0, p0, Lcom/google/m/b/a/e/n;->n:Z

    if-eqz v0, :cond_6

    .line 313
    iget v0, p0, Lcom/google/m/b/a/e/n;->k:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/a/c;->e(II)V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/c;->c(I)V

    .line 315
    :cond_6
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    iget-boolean v1, p0, Lcom/google/m/b/a/e/n;->a:Z

    if-eqz v1, :cond_0

    .line 331
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/m/b/a/e/n;->b:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 334
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/e/n;->c:Z

    if-eqz v1, :cond_1

    .line 335
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/m/b/a/e/n;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 338
    :cond_1
    iget-boolean v1, p0, Lcom/google/m/b/a/e/n;->e:Z

    if-eqz v1, :cond_2

    .line 339
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/m/b/a/e/n;->f:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 342
    :cond_2
    iget-boolean v1, p0, Lcom/google/m/b/a/e/n;->g:Z

    if-eqz v1, :cond_3

    .line 343
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/m/b/a/e/n;->h:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 346
    :cond_3
    iget-boolean v1, p0, Lcom/google/m/b/a/e/n;->l:Z

    if-eqz v1, :cond_4

    .line 347
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/m/b/a/e/n;->i:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 350
    :cond_4
    iget-boolean v1, p0, Lcom/google/m/b/a/e/n;->m:Z

    if-eqz v1, :cond_5

    .line 351
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/m/b/a/e/n;->j:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 354
    :cond_5
    iget-boolean v1, p0, Lcom/google/m/b/a/e/n;->n:Z

    if-eqz v1, :cond_6

    .line 355
    iget v1, p0, Lcom/google/m/b/a/e/n;->k:I

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/protobuf/a/c;->d(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 358
    :cond_6
    iput v0, p0, Lcom/google/m/b/a/e/n;->o:I

    .line 359
    return v0
.end method

.method public final b(I)Lcom/google/m/b/a/e/n;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/n;->c:Z

    .line 179
    iput p1, p0, Lcom/google/m/b/a/e/n;->d:I

    .line 180
    return-object p0
.end method

.method public final b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/n;->g:Z

    .line 213
    iput-object p1, p0, Lcom/google/m/b/a/e/n;->h:Lcom/google/protobuf/a/a;

    .line 214
    return-object p0
.end method

.method public final c(I)Lcom/google/m/b/a/e/n;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/n;->n:Z

    .line 264
    iput p1, p0, Lcom/google/m/b/a/e/n;->k:I

    .line 265
    return-object p0
.end method

.method public final c(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/n;->l:Z

    .line 230
    iput-object p1, p0, Lcom/google/m/b/a/e/n;->i:Lcom/google/protobuf/a/a;

    .line 231
    return-object p0
.end method

.method public final d(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/n;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/n;->m:Z

    .line 247
    iput-object p1, p0, Lcom/google/m/b/a/e/n;->j:Lcom/google/protobuf/a/a;

    .line 248
    return-object p0
.end method
