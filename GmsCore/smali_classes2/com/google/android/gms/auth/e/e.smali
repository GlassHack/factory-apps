.class public final Lcom/google/android/gms/auth/e/e;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/google/android/gms/auth/e/g;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/auth/e/e;->b:J

    .line 187
    iput-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->d:Z

    .line 204
    iput-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->f:Z

    .line 221
    iput-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->h:Z

    .line 238
    iput-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->j:Z

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/e/e;->l:Lcom/google/android/gms/auth/e/g;

    .line 310
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/auth/e/e;->m:I

    .line 165
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/google/android/gms/auth/e/e;->m:I

    if-gez v0, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/google/android/gms/auth/e/e;->b()I

    .line 317
    :cond_0
    iget v0, p0, Lcom/google/android/gms/auth/e/e;->m:I

    return v0
.end method

.method public final a(J)Lcom/google/android/gms/auth/e/e;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->a:Z

    .line 175
    iput-wide p1, p0, Lcom/google/android/gms/auth/e/e;->b:J

    .line 176
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/auth/e/g;)Lcom/google/android/gms/auth/e/e;
    .locals 1

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->k:Z

    .line 263
    iput-object p1, p0, Lcom/google/android/gms/auth/e/e;->l:Lcom/google/android/gms/auth/e/g;

    .line 264
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/auth/e/e;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->c:Z

    .line 192
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/e;->d:Z

    .line 193
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 162
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/e/e;->a(J)Lcom/google/android/gms/auth/e/e;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/e;->a(Z)Lcom/google/android/gms/auth/e/e;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/e;->b(Z)Lcom/google/android/gms/auth/e/e;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/e;->c(Z)Lcom/google/android/gms/auth/e/e;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/e;->d(Z)Lcom/google/android/gms/auth/e/e;

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/google/android/gms/auth/e/g;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e/g;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/e/e;->a(Lcom/google/android/gms/auth/e/g;)Lcom/google/android/gms/auth/e/e;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->a:Z

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/e;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->c:Z

    if-eqz v0, :cond_1

    .line 294
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->d:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 296
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->e:Z

    if-eqz v0, :cond_2

    .line 297
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 299
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->g:Z

    if-eqz v0, :cond_3

    .line 300
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->h:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 302
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->i:Z

    if-eqz v0, :cond_4

    .line 303
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->j:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(IZ)V

    .line 305
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->k:Z

    if-eqz v0, :cond_5

    .line 306
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/auth/e/e;->l:Lcom/google/android/gms/auth/e/g;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 308
    :cond_5
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 322
    const/4 v0, 0x0

    .line 323
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->a:Z

    if-eqz v1, :cond_0

    .line 324
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/auth/e/e;->b:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 327
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->c:Z

    if-eqz v1, :cond_1

    .line 328
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->d:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 331
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->e:Z

    if-eqz v1, :cond_2

    .line 332
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->f:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 335
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->g:Z

    if-eqz v1, :cond_3

    .line 336
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->h:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 339
    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->i:Z

    if-eqz v1, :cond_4

    .line 340
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/auth/e/e;->j:Z

    invoke-static {v1}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 343
    :cond_4
    iget-boolean v1, p0, Lcom/google/android/gms/auth/e/e;->k:Z

    if-eqz v1, :cond_5

    .line 344
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/auth/e/e;->l:Lcom/google/android/gms/auth/e/g;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v1

    add-int/2addr v0, v1

    .line 347
    :cond_5
    iput v0, p0, Lcom/google/android/gms/auth/e/e;->m:I

    .line 348
    return v0
.end method

.method public final b(Z)Lcom/google/android/gms/auth/e/e;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->e:Z

    .line 209
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/e;->f:Z

    .line 210
    return-object p0
.end method

.method public final c(Z)Lcom/google/android/gms/auth/e/e;
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->g:Z

    .line 226
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/e;->h:Z

    .line 227
    return-object p0
.end method

.method public final d(Z)Lcom/google/android/gms/auth/e/e;
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/e/e;->i:Z

    .line 243
    iput-boolean p1, p0, Lcom/google/android/gms/auth/e/e;->j:Z

    .line 244
    return-object p0
.end method
