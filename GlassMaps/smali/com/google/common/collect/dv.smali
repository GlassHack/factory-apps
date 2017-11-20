.class final Lcom/google/common/collect/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/lv;

.field static final b:Lcom/google/common/collect/lv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 308
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/lt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/dv;->a:Lcom/google/common/collect/lv;

    .line 310
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/lt;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/lv;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/dv;->b:Lcom/google/common/collect/lv;

    return-void
.end method
