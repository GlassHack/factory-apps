.class final Lcom/google/common/collect/on;
.super Lcom/google/common/collect/ck;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Set;


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/collect/ck;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/common/collect/on;->a:Ljava/util/Map;

    .line 43
    return-void
.end method

.method static a(Ljava/util/Map;)Lcom/google/common/collect/on;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/common/collect/on;

    invoke-direct {v0, p0}, Lcom/google/common/collect/on;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/google/common/collect/on;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/collect/on;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/common/collect/on;->b:Ljava/util/Set;

    .line 63
    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/op;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/op;-><init>(Lcom/google/common/collect/on;Lcom/google/common/collect/oo;)V

    iput-object v0, p0, Lcom/google/common/collect/on;->b:Ljava/util/Set;

    goto :goto_0
.end method
