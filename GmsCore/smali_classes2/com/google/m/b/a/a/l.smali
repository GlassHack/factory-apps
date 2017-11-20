.class public final Lcom/google/m/b/a/a/l;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:J

.field private c:Ljava/util/List;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/m/b/a/a/l;->b:J

    .line 215
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/m/b/a/a/l;->c:Ljava/util/List;

    .line 268
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/a/l;->d:I

    .line 194
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/google/m/b/a/a/l;->d:I

    if-gez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/google/m/b/a/a/l;->b()I

    .line 275
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/a/l;->d:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 3

    .prologue
    .line 191
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

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/m/b/a/a/l;->a:Z

    iput-wide v0, p0, Lcom/google/m/b/a/a/l;->b:J

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/google/m/b/a/a/m;

    invoke-direct {v0}, Lcom/google/m/b/a/a/m;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/m/b/a/a/l;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/m/b/a/a/l;->c:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/m/b/a/a/l;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 4

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/google/m/b/a/a/l;->a:Z

    if-eqz v0, :cond_0

    .line 261
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/m/b/a/a/l;->b:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/a/c;->a(IJ)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/m/b/a/a/l;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/m;

    .line 264
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 266
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 280
    const/4 v0, 0x0

    .line 281
    iget-boolean v1, p0, Lcom/google/m/b/a/a/l;->a:Z

    if-eqz v1, :cond_0

    .line 282
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/m/b/a/a/l;->b:J

    invoke-static {v0, v2, v3}, Lcom/google/protobuf/a/c;->c(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/google/m/b/a/a/l;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/a/m;

    .line 286
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 288
    goto :goto_0

    .line 289
    :cond_1
    iput v1, p0, Lcom/google/m/b/a/a/l;->d:I

    .line 290
    return v1
.end method
