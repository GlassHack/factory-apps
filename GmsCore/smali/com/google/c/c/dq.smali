.class final Lcom/google/c/c/dq;
.super Lcom/google/c/c/be;
.source "SourceFile"


# instance fields
.field final transient a:Ljava/lang/Object;

.field final transient b:Ljava/lang/Object;

.field private transient c:Ljava/util/Map$Entry;

.field private transient d:Lcom/google/c/c/bl;

.field private transient e:Lcom/google/c/c/bl;

.field private transient f:Lcom/google/c/c/bb;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/c/c/be;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    .line 42
    iput-object p2, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/c/c/be;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/c/c/dq;->c:Ljava/util/Map$Entry;

    .line 47
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    .line 48
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/bl;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/c/c/dq;->d:Lcom/google/c/c/bl;

    .line 86
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/c/c/dq;->c:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/c/c/cd;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/dq;->c:Ljava/util/Map$Entry;

    :cond_0
    invoke-static {v0}, Lcom/google/c/c/bl;->a(Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/dq;->d:Lcom/google/c/c/bl;

    :cond_1
    return-object v0
.end method

.method public final b()Lcom/google/c/c/bl;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/c/c/dq;->e:Lcom/google/c/c/bl;

    .line 93
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/c/c/bl;->a(Ljava/lang/Object;)Lcom/google/c/c/bl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/c/c/dq;->e:Lcom/google/c/c/bl;

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/google/c/c/bb;
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/c/c/dq;->f:Lcom/google/c/c/bb;

    .line 100
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/dr;

    iget-object v1, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/google/c/c/dr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/c/c/dq;->f:Lcom/google/c/c/bb;

    :cond_0
    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/c/c/dq;->a()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 146
    :goto_0
    return v0

    .line 137
    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 138
    check-cast p1, Ljava/util/Map;

    .line 139
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 140
    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    iget-object v3, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 146
    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/c/c/dq;->b()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/c/c/dq;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/c/c/dq;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/c/c/dq;->c()Lcom/google/c/c/bb;

    move-result-object v0

    return-object v0
.end method
