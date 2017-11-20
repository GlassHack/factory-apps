.class final Lcom/google/c/c/fh;
.super Lcom/google/c/c/hk;


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/c/c/hk;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method final f()Ljava/util/Collection;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
