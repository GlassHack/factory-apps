.class final Lcom/google/c/c/h;
.super Lcom/google/c/c/cs;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lcom/google/c/c/g;


# direct methods
.method constructor <init>(Lcom/google/c/c/g;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/c/c/h;->b:Lcom/google/c/c/g;

    iput-object p2, p0, Lcom/google/c/c/h;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/c/c/cs;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/c/c/h;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()I
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/c/c/h;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    invoke-virtual {v0}, Lcom/google/c/c/ao;->a()I

    move-result v1

    .line 114
    if-nez v1, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/c/c/h;->b:Lcom/google/c/c/g;

    iget-object v0, v0, Lcom/google/c/c/g;->c:Lcom/google/c/c/f;

    invoke-static {v0}, Lcom/google/c/c/f;->a(Lcom/google/c/c/f;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/c/c/h;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/c/c/ao;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/google/c/c/ao;->a()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
