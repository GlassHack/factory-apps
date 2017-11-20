.class final Lcom/google/common/collect/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/es;


# direct methods
.method constructor <init>(Lcom/google/common/collect/es;)V
    .locals 0

    .prologue
    .line 1308
    iput-object p1, p0, Lcom/google/common/collect/et;->a:Lcom/google/common/collect/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/common/collect/lb;Lcom/google/common/collect/lb;)I
    .locals 3

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/google/common/collect/et;->a:Lcom/google/common/collect/es;

    iget-object v0, v0, Lcom/google/common/collect/es;->b:Ljava/util/Comparator;

    invoke-interface {p1}, Lcom/google/common/collect/lb;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/lb;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1308
    check-cast p1, Lcom/google/common/collect/lb;

    check-cast p2, Lcom/google/common/collect/lb;

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/et;->a(Lcom/google/common/collect/lb;Lcom/google/common/collect/lb;)I

    move-result v0

    return v0
.end method
