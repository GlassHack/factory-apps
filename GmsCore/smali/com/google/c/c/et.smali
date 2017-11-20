.class public final Lcom/google/c/c/et;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/c/c/et;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/es;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/et;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    new-instance v1, Lcom/google/c/c/gs;

    invoke-direct {v1, v0}, Lcom/google/c/c/gs;-><init>([Ljava/util/Map$Entry;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {}, Lcom/google/c/c/es;->a()Lcom/google/c/c/es;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/google/c/c/hd;

    invoke-static {v0}, Lcom/google/c/c/fm;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {v1, v0}, Lcom/google/c/c/hd;-><init>(Ljava/util/Map$Entry;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/c/c/et;
    .locals 2

    iget-object v0, p0, Lcom/google/c/c/et;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/google/c/c/es;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
