.class final Lcom/google/c/c/dz;
.super Lcom/google/c/c/eb;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/c/c/eb;-><init>(Ljava/util/Collection;Ljava/lang/Object;B)V

    .line 1201
    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1205
    invoke-super {p0}, Lcom/google/c/c/eb;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1206
    new-instance v1, Lcom/google/c/c/ea;

    invoke-direct {v1, p0, v0}, Lcom/google/c/c/ea;-><init>(Lcom/google/c/c/dz;Ljava/util/Iterator;)V

    return-object v1
.end method
