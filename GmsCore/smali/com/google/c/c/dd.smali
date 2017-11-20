.class final Lcom/google/c/c/dd;
.super Lcom/google/c/c/bn;
.source "SourceFile"


# instance fields
.field final d:Lcom/google/c/c/db;


# direct methods
.method constructor <init>(Lcom/google/c/c/db;)V
    .locals 2

    .prologue
    .line 229
    invoke-static {p1}, Lcom/google/c/c/db;->a(Lcom/google/c/c/db;)[Lcom/google/c/c/de;

    move-result-object v0

    invoke-static {p1}, Lcom/google/c/c/db;->b(Lcom/google/c/c/db;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/c/c/bn;-><init>([Ljava/lang/Object;I)V

    .line 230
    iput-object p1, p0, Lcom/google/c/c/dd;->d:Lcom/google/c/c/db;

    .line 231
    return-void
.end method


# virtual methods
.method final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/c/c/dd;->d:Lcom/google/c/c/db;

    invoke-virtual {v0, p1}, Lcom/google/c/c/db;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
