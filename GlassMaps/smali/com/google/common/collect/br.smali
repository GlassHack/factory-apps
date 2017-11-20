.class final Lcom/google/common/collect/br;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/lv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    invoke-static {v0, v1}, Lcom/google/common/collect/lt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/br;->a:Lcom/google/common/collect/lv;

    return-void
.end method
