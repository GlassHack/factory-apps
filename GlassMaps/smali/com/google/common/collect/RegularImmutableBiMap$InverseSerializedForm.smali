.class Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final forward:Lcom/google/common/collect/ImmutableBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;->forward:Lcom/google/common/collect/ImmutableBiMap;

    .line 292
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableBiMap$InverseSerializedForm;->forward:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method
