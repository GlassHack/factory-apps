.class public final Lcom/google/a/a/a/a/a/b;
.super Lcom/google/protobuf/nano/j;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/a/a/a/a/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/protobuf/nano/j;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/a/a/b;->G:I

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 3

    .prologue
    .line 55
    invoke-super {p0}, Lcom/google/protobuf/nano/j;->a()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    if-eqz v1, :cond_0

    .line 57
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/b;->b(ILcom/google/protobuf/nano/j;)I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    :cond_0
    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/j;
    .locals 1

    .prologue
    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/m;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v0, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/a/a/a/a/a/c;

    invoke-direct {v0}, Lcom/google/a/a/a/a/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    :cond_1
    iget-object v0, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/a;->a(Lcom/google/protobuf/nano/j;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/nano/b;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/a/a/b;->a:Lcom/google/a/a/a/a/a/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/b;->a(ILcom/google/protobuf/nano/j;)V

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/b;)V

    .line 51
    return-void
.end method
