.class public final Lcom/google/b/a/a/t;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2009
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2014
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/t;->b:Ljava/lang/String;

    .line 2031
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/a/t;->d:Ljava/lang/String;

    .line 2068
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/t;->e:I

    .line 2009
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2071
    iget v0, p0, Lcom/google/b/a/a/t;->e:I

    if-gez v0, :cond_0

    .line 2073
    invoke-virtual {p0}, Lcom/google/b/a/a/t;->b()I

    .line 2075
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/t;->e:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2006
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

    iput-boolean v1, p0, Lcom/google/b/a/a/t;->a:Z

    iput-object v0, p0, Lcom/google/b/a/a/t;->b:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->e()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/b/a/a/t;->c:Z

    iput-object v0, p0, Lcom/google/b/a/a/t;->d:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 2

    .prologue
    .line 2060
    iget-boolean v0, p0, Lcom/google/b/a/a/t;->a:Z

    if-eqz v0, :cond_0

    .line 2061
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/t;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2063
    :cond_0
    iget-boolean v0, p0, Lcom/google/b/a/a/t;->c:Z

    if-eqz v0, :cond_1

    .line 2064
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/a/t;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    .line 2066
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 2080
    const/4 v0, 0x0

    .line 2081
    iget-boolean v1, p0, Lcom/google/b/a/a/t;->a:Z

    if-eqz v1, :cond_0

    .line 2082
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/a/t;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2085
    :cond_0
    iget-boolean v1, p0, Lcom/google/b/a/a/t;->c:Z

    if-eqz v1, :cond_1

    .line 2086
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/a/t;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2089
    :cond_1
    iput v0, p0, Lcom/google/b/a/a/t;->e:I

    .line 2090
    return v0
.end method
