.class public final Lcom/google/m/b/a/d/r;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/google/m/b/a/d/r;->b:Ljava/lang/String;

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/d/r;->c:I

    .line 194
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/google/m/b/a/d/r;->c:I

    if-gez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/google/m/b/a/d/r;->b()I

    .line 238
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/d/r;->c:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/m/b/a/d/r;->a:Z

    iput-object v0, p0, Lcom/google/m/b/a/d/r;->b:Ljava/lang/String;

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
    .line 226
    iget-boolean v0, p0, Lcom/google/m/b/a/d/r;->a:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/r;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 2

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    iget-boolean v1, p0, Lcom/google/m/b/a/d/r;->a:Z

    if-eqz v1, :cond_0

    .line 245
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/r;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 248
    :cond_0
    iput v0, p0, Lcom/google/m/b/a/d/r;->c:I

    .line 249
    return v0
.end method
