.class final Lcom/google/common/collect/ok;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/of;)V
    .locals 0

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/google/common/collect/ok;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/common/collect/ok;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/google/common/collect/ok;->a:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    .line 503
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 505
    :cond_0
    iput-object p2, p0, Lcom/google/common/collect/ok;->a:Ljava/lang/Object;

    .line 506
    return-void
.end method
