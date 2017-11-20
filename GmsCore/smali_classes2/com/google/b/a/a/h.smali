.class public final Lcom/google/b/a/a/h;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field private b:Z

.field private c:I

.field private d:Z

.field private e:Z

.field private f:J

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 208
    iput v0, p0, Lcom/google/b/a/a/h;->c:I

    .line 225
    iput v0, p0, Lcom/google/b/a/a/h;->a:I

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/b/a/a/h;->f:J

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/h;->g:I

    .line 203
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/google/b/a/a/h;->g:I

    if-gez v0, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/google/b/a/a/h;->b()I

    .line 289
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/h;->g:I

    return v0
.end method

.method public final a(I)Lcom/google/b/a/a/h;
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/h;->d:Z

    .line 230
    iput p1, p0, Lcom/google/b/a/a/h;->a:I

    .line 231
    return-object p0
.end method

.method public final a(J)Lcom/google/b/a/a/h;
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/h;->e:Z

    .line 247
    iput-wide p1, p0, Lcom/google/b/a/a/h;->f:J

    .line 248
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 200
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

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/b/a/a/h;->b:Z

    iput v0, p0, Lcom/google/b/a/a/h;->c:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/h;->a(I)Lcom/google/b/a/a/h;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/b/a/a/h;->a(J)Lcom/google/b/a/a/h;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/google/b/a/a/h;->b:Z

    if-eqz v0, :cond_0

    .line 272
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/h;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 274
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/h;->d:Z

    if-eqz v0, :cond_1

    .line 275
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/a/h;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 277
    :cond_1
    iget-boolean v0, p0, Lcom/google/b/a/a/h;->e:Z

    if-eqz v0, :cond_2

    .line 278
    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/b/a/a/h;->f:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 280
    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    iget-boolean v1, p0, Lcom/google/b/a/a/h;->b:Z

    if-eqz v1, :cond_0

    .line 296
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/h;->c:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 299
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/h;->d:Z

    if-eqz v1, :cond_1

    .line 300
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/a/h;->a:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_1
    iget-boolean v1, p0, Lcom/google/b/a/a/h;->e:Z

    if-eqz v1, :cond_2

    .line 304
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/b/a/a/h;->f:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_2
    iput v0, p0, Lcom/google/b/a/a/h;->g:I

    .line 308
    return v0
.end method
