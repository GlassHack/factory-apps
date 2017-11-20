.class final Lcom/google/common/collect/kz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/v;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic b:Lcom/google/common/collect/ky;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ky;)V
    .locals 2

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/common/collect/kz;->b:Lcom/google/common/collect/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/collect/kz;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/common/collect/kz;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/google/common/collect/kz;->a(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
