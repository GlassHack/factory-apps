.class public final Lcom/google/b/a/a/g;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/google/protobuf/a/a;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2203
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2208
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/a/g;->a:I

    .line 2225
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/b/a/a/g;->b:Lcom/google/protobuf/a/a;

    .line 2263
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/g;->e:I

    .line 2203
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2266
    iget v0, p0, Lcom/google/b/a/a/g;->e:I

    if-gez v0, :cond_0

    .line 2268
    invoke-virtual {p0}, Lcom/google/b/a/a/g;->b()I

    .line 2270
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/g;->e:I

    return v0
.end method

.method public final a(I)Lcom/google/b/a/a/g;
    .locals 1

    .prologue
    .line 2212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/g;->c:Z

    .line 2213
    iput p1, p0, Lcom/google/b/a/a/g;->a:I

    .line 2214
    return-object p0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/b/a/a/g;
    .locals 1

    .prologue
    .line 2229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/g;->d:Z

    .line 2230
    iput-object p1, p0, Lcom/google/b/a/a/g;->b:Lcom/google/protobuf/a/a;

    .line 2231
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 2200
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

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/g;->a(I)Lcom/google/b/a/a/g;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/g;->a(Lcom/google/protobuf/a/a;)Lcom/google/b/a/a/g;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 2255
    iget-boolean v0, p0, Lcom/google/b/a/a/g;->c:Z

    if-eqz v0, :cond_0

    .line 2256
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/g;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 2258
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/g;->d:Z

    if-eqz v0, :cond_1

    .line 2259
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/g;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 2261
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 2275
    const/4 v0, 0x0

    .line 2276
    iget-boolean v1, p0, Lcom/google/b/a/a/g;->c:Z

    if-eqz v1, :cond_0

    .line 2277
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/b/a/a/g;->a:I

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2280
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/g;->d:Z

    if-eqz v1, :cond_1

    .line 2281
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/g;->b:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2284
    :cond_1
    iput v0, p0, Lcom/google/b/a/a/g;->e:I

    .line 2285
    return v0
.end method
