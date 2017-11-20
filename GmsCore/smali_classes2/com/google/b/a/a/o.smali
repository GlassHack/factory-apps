.class public final Lcom/google/b/a/a/o;
.super Lcom/google/protobuf/a/f;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2899
    invoke-direct {p0}, Lcom/google/protobuf/a/f;-><init>()V

    .line 2903
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/a/o;->a:Ljava/util/List;

    .line 2955
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/a/o;->b:I

    .line 2899
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2958
    iget v0, p0, Lcom/google/b/a/a/o;->b:I

    if-gez v0, :cond_0

    .line 2960
    invoke-virtual {p0}, Lcom/google/b/a/a/o;->b()I

    .line 2962
    :cond_0
    iget v0, p0, Lcom/google/b/a/a/o;->b:I

    return v0
.end method

.method public final synthetic a(Lcom/google/protobuf/a/b;)Lcom/google/protobuf/a/f;
    .locals 2

    .prologue
    .line 2896
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
    new-instance v0, Lcom/google/b/a/a/b;

    invoke-direct {v0}, Lcom/google/b/a/a/b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/protobuf/a/b;->a(Lcom/google/protobuf/a/f;)V

    iget-object v1, p0, Lcom/google/b/a/a/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/b/a/a/o;->a:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/google/b/a/a/o;->a:Ljava/util/List;

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
    .line 2950
    iget-object v0, p0, Lcom/google/b/a/a/o;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/b;

    .line 2951
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/a/c;->a(ILcom/google/protobuf/a/f;)V

    goto :goto_0

    .line 2953
    :cond_0
    return-void
.end method

.method public final b()I
    .locals 4

    .prologue
    .line 2967
    const/4 v0, 0x0

    .line 2968
    iget-object v1, p0, Lcom/google/b/a/a/o;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/a/a/b;

    .line 2969
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/a/c;->b(ILcom/google/protobuf/a/f;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 2971
    goto :goto_0

    .line 2972
    :cond_0
    iput v1, p0, Lcom/google/b/a/a/o;->b:I

    .line 2973
    return v1
.end method
