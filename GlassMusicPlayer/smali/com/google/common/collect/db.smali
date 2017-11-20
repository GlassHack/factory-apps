.class final Lcom/google/common/collect/db;
.super Lcom/google/common/collect/dc;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/da;


# direct methods
.method constructor <init>(Lcom/google/common/collect/da;)V
    .locals 1

    .prologue
    .line 562
    iput-object p1, p0, Lcom/google/common/collect/db;->a:Lcom/google/common/collect/da;

    iget-object v0, p1, Lcom/google/common/collect/da;->a:Lcom/google/common/collect/HashBiMap$Inverse;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$Inverse;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/dc;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method final a(Lcom/google/common/collect/ct;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p1, Lcom/google/common/collect/ct;->c:Ljava/lang/Object;

    return-object v0
.end method
