.class public final Lcom/google/m/b/a/d/e;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Lcom/google/m/b/a/e/m;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/m/b/a/d/e;->a:Lcom/google/m/b/a/e/m;

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/d/e;->c:I

    .line 241
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/google/m/b/a/d/e;->c:I

    if-gez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/google/m/b/a/d/e;->b()I

    .line 291
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/d/e;->c:I

    return v0
.end method

.method public final a(Lcom/google/m/b/a/e/m;)Lcom/google/m/b/a/d/e;
    .locals 1

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/e;->b:Z

    .line 254
    iput-object p1, p0, Lcom/google/m/b/a/d/e;->a:Lcom/google/m/b/a/e/m;

    .line 255
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 238
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
    new-instance v0, Lcom/google/m/b/a/e/m;

    invoke-direct {v0}, Lcom/google/m/b/a/e/m;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/e;->a(Lcom/google/m/b/a/e/m;)Lcom/google/m/b/a/d/e;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/m/b/a/d/e;->b:Z

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/e;->a:Lcom/google/m/b/a/e/m;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    .line 282
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    iget-boolean v1, p0, Lcom/google/m/b/a/d/e;->b:Z

    if-eqz v1, :cond_0

    .line 298
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/e;->a:Lcom/google/m/b/a/e/m;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 301
    :cond_0
    iput v0, p0, Lcom/google/m/b/a/d/e;->c:I

    .line 302
    return v0
.end method
