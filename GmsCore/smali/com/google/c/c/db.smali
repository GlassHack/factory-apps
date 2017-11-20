.class final Lcom/google/c/c/db;
.super Lcom/google/c/c/be;
.source "SourceFile"


# instance fields
.field private final transient a:[Lcom/google/c/c/de;

.field private final transient b:[Lcom/google/c/c/de;

.field private final transient c:I

.field private final transient d:I

.field private transient e:Lcom/google/c/c/bl;

.field private transient f:Lcom/google/c/c/bl;

.field private transient g:Lcom/google/c/c/bb;


# direct methods
.method varargs constructor <init>([Ljava/util/Map$Entry;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Lcom/google/c/c/be;-><init>()V

    .line 49
    array-length v6, p1

    .line 50
    new-array v0, v6, [Lcom/google/c/c/de;

    iput-object v0, p0, Lcom/google/c/c/db;->a:[Lcom/google/c/c/de;

    .line 52
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v3, v0, 0x1

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "table too large: %s"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {v0, v4, v5}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-array v0, v3, [Lcom/google/c/c/de;

    iput-object v0, p0, Lcom/google/c/c/db;->b:[Lcom/google/c/c/de;

    .line 54
    add-int/lit8 v0, v3, -0x1

    iput v0, p0, Lcom/google/c/c/db;->c:I

    move v3, v2

    move v0, v2

    .line 57
    :goto_1
    if-ge v3, v6, :cond_4

    .line 60
    aget-object v7, p1, v3

    .line 61
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 62
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v5

    .line 63
    add-int v4, v0, v5

    .line 64
    invoke-static {v5}, Lcom/google/c/c/ba;->a(I)I

    move-result v0

    iget v5, p0, Lcom/google/c/c/db;->c:I

    and-int v9, v0, v5

    .line 65
    iget-object v0, p0, Lcom/google/c/c/db;->b:[Lcom/google/c/c/de;

    aget-object v5, v0, v9

    .line 67
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_1

    new-instance v0, Lcom/google/c/c/dg;

    invoke-direct {v0, v8, v7}, Lcom/google/c/c/dg;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    check-cast v0, Lcom/google/c/c/de;

    .line 69
    iget-object v7, p0, Lcom/google/c/c/db;->b:[Lcom/google/c/c/de;

    aput-object v0, v7, v9

    .line 70
    iget-object v7, p0, Lcom/google/c/c/db;->a:[Lcom/google/c/c/de;

    aput-object v0, v7, v3

    .line 71
    :goto_3
    if-eqz v5, :cond_3

    .line 72
    invoke-interface {v5}, Lcom/google/c/c/de;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_4
    const-string v7, "duplicate key: %s"

    new-array v9, v1, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-static {v0, v7, v9}, Lcom/google/c/a/ah;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-interface {v5}, Lcom/google/c/c/de;->a()Lcom/google/c/c/de;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/google/c/c/df;

    invoke-direct {v0, v8, v7, v5}, Lcom/google/c/c/df;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/c/c/de;)V

    goto :goto_2

    :cond_2
    move v0, v2

    .line 72
    goto :goto_4

    .line 57
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_1

    .line 76
    :cond_4
    iput v0, p0, Lcom/google/c/c/db;->d:I

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/google/c/c/db;)[Lcom/google/c/c/de;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/c/c/db;->a:[Lcom/google/c/c/de;

    return-object v0
.end method

.method static synthetic b(Lcom/google/c/c/db;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/c/c/db;->d:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/c/c/bl;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/c/c/db;->e:Lcom/google/c/c/bl;

    .line 194
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/dc;

    invoke-direct {v0, p0}, Lcom/google/c/c/dc;-><init>(Lcom/google/c/c/db;)V

    iput-object v0, p0, Lcom/google/c/c/db;->e:Lcom/google/c/c/bl;

    :cond_0
    return-object v0
.end method

.method public final b()Lcom/google/c/c/bl;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/c/c/db;->f:Lcom/google/c/c/bl;

    .line 220
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/dd;

    invoke-direct {v0, p0}, Lcom/google/c/c/dd;-><init>(Lcom/google/c/c/db;)V

    iput-object v0, p0, Lcom/google/c/c/db;->f:Lcom/google/c/c/bl;

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/google/c/c/bb;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/c/c/db;->g:Lcom/google/c/c/bb;

    .line 250
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/c/c/dh;

    invoke-direct {v0, p0}, Lcom/google/c/c/dh;-><init>(Lcom/google/c/c/db;)V

    iput-object v0, p0, Lcom/google/c/c/db;->g:Lcom/google/c/c/bb;

    :cond_0
    return-object v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 175
    if-nez p1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/google/c/c/db;->a:[Lcom/google/c/c/de;

    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 179
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/c/c/db;->a()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/c/c/ba;->a(I)I

    move-result v1

    iget v2, p0, Lcom/google/c/c/db;->c:I

    and-int/2addr v1, v2

    .line 147
    iget-object v2, p0, Lcom/google/c/c/db;->b:[Lcom/google/c/c/de;

    aget-object v1, v2, v1

    .line 148
    :goto_1
    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1}, Lcom/google/c/c/de;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-interface {v1}, Lcom/google/c/c/de;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v1}, Lcom/google/c/c/de;->a()Lcom/google/c/c/de;

    move-result-object v1

    goto :goto_1
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/c/c/db;->b()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/c/c/db;->a:[Lcom/google/c/c/de;

    array-length v0, v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/c/c/db;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/c/c/al;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/google/c/c/al;->a:Lcom/google/c/a/ab;

    iget-object v2, p0, Lcom/google/c/c/db;->a:[Lcom/google/c/c/de;

    invoke-virtual {v1, v0, v2}, Lcom/google/c/a/ab;->a(Ljava/lang/StringBuilder;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 287
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
    .line 35
    invoke-virtual {p0}, Lcom/google/c/c/db;->c()Lcom/google/c/c/bb;

    move-result-object v0

    return-object v0
.end method
