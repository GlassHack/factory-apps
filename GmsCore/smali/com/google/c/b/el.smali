.class final Lcom/google/c/b/el;
.super Ljava/util/concurrent/atomic/AtomicLong;

# interfaces
.implements Lcom/google/c/b/eh;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/c/b/el;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/c/b/el;->getAndIncrement()J

    return-void
.end method

.method public final a(J)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/c/b/el;->getAndAdd(J)J

    return-void
.end method
