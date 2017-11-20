.class public final Lcom/google/c/c/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/c/c/bf;->a:Ljava/util/ArrayList;

    .line 171
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/be;
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/c/c/bf;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/c/c/db;

    invoke-direct {v1, v0}, Lcom/google/c/c/db;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/c/c/be;->d()Lcom/google/c/c/be;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/google/c/c/dq;

    invoke-static {v0}, Lcom/google/c/c/bs;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lcom/google/c/c/dq;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/bf;
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/c/c/bf;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/c/c/be;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    return-object p0
.end method
