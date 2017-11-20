.class final Lcom/google/c/c/ap;
.super Lcom/google/c/c/be;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/c/c/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/google/c/c/ap;

    invoke-direct {v0}, Lcom/google/c/c/ap;-><init>()V

    sput-object v0, Lcom/google/c/c/ap;->a:Lcom/google/c/c/ap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/c/c/be;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/c/c/bl;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/google/c/c/bl;->g()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/c/c/bl;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/google/c/c/bl;->g()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/google/c/c/bb;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/c/c/bb;->b:Lcom/google/c/c/bb;

    return-object v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/c/c/bl;->g()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 71
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Ljava/util/Map;

    .line 73
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/c/c/bl;->g()Lcom/google/c/c/bl;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "{}"

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/c/c/bb;->b:Lcom/google/c/c/bb;

    return-object v0
.end method
