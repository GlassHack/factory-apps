.class public final Lcom/google/common/util/concurrent/u;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/util/concurrent/u;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/common/util/concurrent/u;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/u;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final set(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final setException(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
