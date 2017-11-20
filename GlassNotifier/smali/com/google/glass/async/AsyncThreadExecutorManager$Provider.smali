.class public Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "AsyncThreadExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/async/AsyncThreadExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/async/AsyncThreadExecutorManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    invoke-direct {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->INSTANCE:Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 56
    new-instance v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider$1;-><init>(Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->init(Lcom/google/common/base/Supplier;)V

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->INSTANCE:Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    return-object v0
.end method
