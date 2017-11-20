.class public final Lcom/google/m/b/a/e/p;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field a:Lcom/google/protobuf/a/a;

.field b:Lcom/google/protobuf/a/a;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 29
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/p;->a:Lcom/google/protobuf/a/a;

    .line 46
    sget-object v0, Lcom/google/protobuf/a/a;->a:Lcom/google/protobuf/a/a;

    iput-object v0, p0, Lcom/google/m/b/a/e/p;->b:Lcom/google/protobuf/a/a;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/m/b/a/e/p;->e:I

    .line 24
    return-void
.end method

.method public static a([B)Lcom/google/m/b/a/e/p;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Lcom/google/m/b/a/e/p;

    invoke-direct {v0}, Lcom/google/m/b/a/e/p;-><init>()V

    array-length v1, p0

    invoke-super {v0, p0, v1}, Lcom/google/protobuf/a/f;->a([BI)Lcom/google/protobuf/a/f;

    move-result-object v0

    check-cast v0, Lcom/google/m/b/a/e/p;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/m/b/a/e/p;->e:I

    if-gez v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/m/b/a/e/p;->b()I

    .line 91
    :cond_0
    iget v0, p0, Lcom/google/m/b/a/e/p;->e:I

    return v0
.end method

.method public final a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/p;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/p;->c:Z

    .line 34
    iput-object p1, p0, Lcom/google/m/b/a/e/p;->a:Lcom/google/protobuf/a/a;

    .line 35
    return-object p0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 1

    .prologue
    .line 21
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

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/p;->a(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/p;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/a/b;->f()Lcom/google/protobuf/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/m/b/a/e/p;->b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/p;

    goto :goto_0

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
    .line 76
    iget-boolean v0, p0, Lcom/google/m/b/a/e/p;->c:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/p;->a:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/google/m/b/a/e/p;->d:Z

    if-eqz v0, :cond_1

    .line 80
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/m/b/a/e/p;->b:Lcom/google/protobuf/a/a;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/a;)V

    .line 82
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    iget-boolean v1, p0, Lcom/google/m/b/a/e/p;->c:Z

    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/m/b/a/e/p;->a:Lcom/google/protobuf/a/a;

    invoke-static {v0, v1}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcom/google/m/b/a/e/p;->d:Z

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/m/b/a/e/p;->b:Lcom/google/protobuf/a/a;

    invoke-static {v1, v2}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_1
    iput v0, p0, Lcom/google/m/b/a/e/p;->e:I

    .line 106
    return v0
.end method

.method public final b(Lcom/google/protobuf/a/a;)Lcom/google/m/b/a/e/p;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/m/b/a/e/p;->d:Z

    .line 51
    iput-object p1, p0, Lcom/google/m/b/a/e/p;->b:Lcom/google/protobuf/a/a;

    .line 52
    return-object p0
.end method
