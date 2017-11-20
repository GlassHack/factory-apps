.class public Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    invoke-direct {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->INSTANCE:Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 45
    new-instance v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider$1;-><init>(Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->init(Lcom/google/common/base/av;)V

    .line 51
    return-void
.end method

.method public static getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->INSTANCE:Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    return-object v0
.end method
