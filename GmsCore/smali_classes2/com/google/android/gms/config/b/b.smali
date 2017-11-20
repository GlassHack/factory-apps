.class public final Lcom/google/android/gms/config/b/b;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:Ljava/util/List;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 165
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 170
    iput-wide v2, p0, Lcom/google/android/gms/config/b/b;->b:J

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/config/b/b;->c:Ljava/util/List;

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/config/b/b;->e:Ljava/lang/String;

    .line 237
    iput-wide v2, p0, Lcom/google/android/gms/config/b/b;->g:J

    .line 281
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/config/b/b;->h:I

    .line 165
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/google/android/gms/config/b/b;->h:I

    if-gez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/google/android/gms/config/b/b;->b()I

    .line 288
    :cond_0
    iget v0, p0, Lcom/google/android/gms/config/b/b;->h:I

    return v0
.end method

.method public final a(J)Lcom/google/android/gms/config/b/b;
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/config/b/b;->a:Z

    .line 175
    iput-wide p1, p0, Lcom/google/android/gms/config/b/b;->b:J

    .line 176
    return-object p0
.end method

.method public final a(Lcom/google/android/gms/config/b/e;)Lcom/google/android/gms/config/b/b;
    .locals 1

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/config/b/b;->c:Ljava/util/List;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/config/b/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/config/b/b;
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/config/b/b;->d:Z

    .line 225
    iput-object p1, p0, Lcom/google/android/gms/config/b/b;->e:Ljava/lang/String;

    .line 226
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/config/b/b;->a(J)Lcom/google/android/gms/config/b/b;

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/android/gms/config/b/e;

    invoke-direct {v0}, Lcom/google/android/gms/config/b/e;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/config/b/b;->a(Lcom/google/android/gms/config/b/e;)Lcom/google/android/gms/config/b/b;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/config/b/b;->a(Ljava/lang/String;)Lcom/google/android/gms/config/b/b;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->j()J

    move-result-wide v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/config/b/b;->f:Z

    iput-wide v0, p0, Lcom/google/android/gms/config/b/b;->g:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/android/gms/config/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/config/b/b;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/config/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/b/e;

    .line 271
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 273
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/config/b/b;->d:Z

    if-eqz v0, :cond_2

    .line 274
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/config/b/b;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 276
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/config/b/b;->f:Z

    if-eqz v0, :cond_3

    .line 277
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/config/b/b;->g:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->b(IJ)V

    .line 279
    :cond_3
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    iget-boolean v1, p0, Lcom/google/android/gms/config/b/b;->a:Z

    if-eqz v1, :cond_0

    .line 295
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/config/b/b;->b:J

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/config/b/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/config/b/e;

    .line 299
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 301
    goto :goto_0

    .line 302
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/config/b/b;->d:Z

    if-eqz v0, :cond_2

    .line 303
    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/config/b/b;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 306
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/config/b/b;->f:Z

    if-eqz v0, :cond_3

    .line 307
    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/config/b/b;->g:J

    invoke-static {v0}, Lcom/google/protobuf/a/c;->b(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v1, v0

    .line 310
    :cond_3
    iput v1, p0, Lcom/google/android/gms/config/b/b;->h:I

    .line 311
    return v1
.end method
