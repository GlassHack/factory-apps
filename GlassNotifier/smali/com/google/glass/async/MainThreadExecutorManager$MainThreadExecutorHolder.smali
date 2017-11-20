.class Lcom/google/glass/async/MainThreadExecutorManager$MainThreadExecutorHolder;
.super Ljava/lang/Object;
.source "MainThreadExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/async/MainThreadExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadExecutorHolder"
.end annotation


# static fields
.field private static instance:Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;-><init>(Lcom/google/glass/async/MainThreadExecutorManager$1;)V

    sput-object v0, Lcom/google/glass/async/MainThreadExecutorManager$MainThreadExecutorHolder;->instance:Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/async/MainThreadExecutorManager$MainThreadExecutorHolder;->instance:Lcom/google/glass/async/MainThreadExecutorManager$InlineMainThreadExecutor;

    return-object v0
.end method
