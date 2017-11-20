.class public final Lcom/google/m/b/a/d/c;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/protobuf/a/a;

.field public b:I

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 15
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/d/c;->a:Lcom/google/protobuf/a/a;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/m/b/a/d/c;->b:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/d/c;->e:I

    .line 10
    return-void
.end method

.method public static a([B)Lcom/google/m/b/a/d/c;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/google/m/b/a/d/c;

    invoke-direct {v0}, Lcom/google/m/b/a/d/c;-><init>()V

    array-length v1, p0

    invoke-super {v0, p0, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/d/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/m/b/a/d/c;->e:I

    if-gez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/m/b/a/d/c;->b()I

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/d/c;->e:I

    return v0
.end method

.method public final a(I)Lcom/google/m/b/a/d/c;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/c;->d:Z

    .line 37
    iput p1, p0, Lcom/google/m/b/a/d/c;->b:I

    .line 38
    return-object p0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/c;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/d/c;->c:Z

    .line 20
    iput-object p1, p0, Lcom/google/m/b/a/d/c;->a:Lcom/google/protobuf/a/a;

    .line 21
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 7
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
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/c;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/d/c;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->h()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/d/c;->a(I)Lcom/google/m/b/a/d/c;

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
    .line 60
    iget-boolean v0, p0, Lcom/google/m/b/a/d/c;->c:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/c;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 63
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/d/c;->d:Z

    if-eqz v0, :cond_1

    .line 64
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/m/b/a/d/c;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(II)V

    .line 66
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    iget-boolean v1, p0, Lcom/google/m/b/a/d/c;->c:Z

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/d/c;->a:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 85
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/d/c;->d:Z

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/m/b/a/d/c;->b:I

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/d/c;->e:I

    .line 90
    return v0
.end method
