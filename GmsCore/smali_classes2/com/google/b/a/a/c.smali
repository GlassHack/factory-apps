.class public final Lcom/google/b/a/a/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4178
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 4183
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/c;->b:Ljava/lang/String;

    .line 4200
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/a/c;->d:I

    .line 4236
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/c;->e:I

    .line 4178
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 4239
    iget v0, p0, Lcom/google/b/a/a/c;->e:I

    if-gez v0, :cond_0

    .line 4241
    invoke-virtual {p0}, Lcom/google/b/a/a/c;->b()I

    .line 4243
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/c;->e:I

    return v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/b/a/a/c;
    .locals 1

    .prologue
    .line 4187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/b/a/a/c;->a:Z

    .line 4188
    iput-object p1, p0, Lcom/google/b/a/a/c;->b:Ljava/lang/String;

    .line 4189
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 4175
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

    invoke-virtual {p0, v0}, Lcom/google/b/a/a/c;->a(Ljava/lang/String;)Lcom/google/b/a/a/c;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/b/a/a/c;->c:Z

    iput v0, p0, Lcom/google/b/a/a/c;->d:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 4228
    iget-boolean v0, p0, Lcom/google/b/a/a/c;->a:Z

    if-eqz v0, :cond_0

    .line 4229
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 4231
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/c;->c:Z

    if-eqz v0, :cond_1

    .line 4232
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/a/c;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 4234
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 4248
    const/4 v0, 0x0

    .line 4249
    iget-boolean v1, p0, Lcom/google/b/a/a/c;->a:Z

    if-eqz v1, :cond_0

    .line 4250
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 4253
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/c;->c:Z

    if-eqz v1, :cond_1

    .line 4254
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/a/c;->d:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4257
    :cond_1
    iput v0, p0, Lcom/google/b/a/a/c;->e:I

    .line 4258
    return v0
.end method
