.class public final Lcom/google/b/a/a/q;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4060
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 4064
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    .line 4113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/q;->b:I

    .line 4060
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 4116
    iget v0, p0, Lcom/google/b/a/a/q;->b:I

    if-gez v0, :cond_0

    .line 4118
    invoke-virtual {p0}, Lcom/google/b/a/a/q;->b()I

    .line 4120
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/q;->b:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 4057
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

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    :cond_2
    iget-object v1, p0, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final a(Lcom/google/protobuf/a/c;)V
    .locals 3

    .prologue
    .line 4108
    iget-object v0, p0, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4109
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 4111
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 4125
    const/4 v0, 0x0

    .line 4128
    iget-object v1, p0, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4129
    invoke-static {v0}, Lcom/google/protobuf/a/c;->a(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 4131
    goto :goto_0

    .line 4132
    :cond_0
    add-int/lit8 v0, v1, 0x0

    .line 4133
    iget-object v1, p0, Lcom/google/b/a/a/q;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 4135
    iput v0, p0, Lcom/google/b/a/a/q;->b:I

    .line 4136
    return v0
.end method
