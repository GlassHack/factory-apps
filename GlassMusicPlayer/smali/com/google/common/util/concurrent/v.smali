.class final Lcom/google/common/util/concurrent/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/aw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1

    .prologue
    .line 254
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/google/common/util/concurrent/v;->a()Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    return-object v0
.end method