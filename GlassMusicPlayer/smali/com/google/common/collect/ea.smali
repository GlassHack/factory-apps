.class final Lcom/google/common/collect/ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/w;


# instance fields
.field final synthetic a:Lcom/google/common/collect/dz;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dz;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/common/collect/ea;->a:Lcom/google/common/collect/dz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 276
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/google/common/collect/ea;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
