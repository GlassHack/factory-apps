.class public final Lcom/google/glass/logging/WatchdogProvider;
.super Lcom/google/glass/inject/Provider;
.source "WatchdogProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/logging/Watchdog;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/logging/WatchdogProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/logging/WatchdogProvider;

    invoke-direct {v0}, Lcom/google/glass/logging/WatchdogProvider;-><init>()V

    sput-object v0, Lcom/google/glass/logging/WatchdogProvider;->instance:Lcom/google/glass/logging/WatchdogProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/logging/WatchdogProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/logging/WatchdogProvider;->instance:Lcom/google/glass/logging/WatchdogProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/logging/Watchdog;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/google/glass/logging/WatchdogProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/logging/WatchdogProvider$1;-><init>(Lcom/google/glass/logging/WatchdogProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/WatchdogProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/Watchdog;

    return-object v0
.end method
