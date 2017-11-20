.class public Lcom/google/glass/html/PagedWebViewCache$Key;
.super Ljava/lang/Object;
.source "PagedWebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/html/PagedWebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;JZ)V
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "displayTime"    # J
    .param p4, "readMore"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/html/PagedWebViewCache$Key;->key:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JZLcom/google/glass/html/PagedWebViewCache$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # Z
    .param p5, "x3"    # Lcom/google/glass/html/PagedWebViewCache$1;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/html/PagedWebViewCache$Key;-><init>(Ljava/lang/String;JZ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 59
    instance-of v1, p1, Lcom/google/glass/html/PagedWebViewCache$Key;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 60
    check-cast v0, Lcom/google/glass/html/PagedWebViewCache$Key;

    .line 61
    .local v0, "incoming":Lcom/google/glass/html/PagedWebViewCache$Key;
    iget-object v1, p0, Lcom/google/glass/html/PagedWebViewCache$Key;->key:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/glass/html/PagedWebViewCache$Key;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 64
    .end local v0    # "incoming":Lcom/google/glass/html/PagedWebViewCache$Key;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/html/PagedWebViewCache$Key;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/html/PagedWebViewCache$Key;->key:Ljava/lang/String;

    return-object v0
.end method
