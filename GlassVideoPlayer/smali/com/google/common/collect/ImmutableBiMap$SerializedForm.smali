.class Lcom/google/common/collect/ImmutableBiMap$SerializedForm;
.super Lcom/google/common/collect/ImmutableMap$SerializedForm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 258
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    new-instance v0, Lcom/google/common/collect/dg;

    invoke-direct {v0}, Lcom/google/common/collect/dg;-><init>()V

    .line 263
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableBiMap$SerializedForm;->createMap(Lcom/google/common/collect/dr;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
