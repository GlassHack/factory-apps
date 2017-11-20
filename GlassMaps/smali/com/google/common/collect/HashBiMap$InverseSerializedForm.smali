.class final Lcom/google/common/collect/HashBiMap$InverseSerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final bimap:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lcom/google/common/collect/HashBiMap;

    .line 644
    return-void
.end method


# virtual methods
.method final readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$InverseSerializedForm;->bimap:Lcom/google/common/collect/HashBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method
