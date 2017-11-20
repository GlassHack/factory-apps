.class public Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "ConnectivityStatusLiveCardManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->instance:Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->instance:Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardUI"    # Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;

    .prologue
    .line 31
    new-instance v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider$1;-><init>(Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;Landroid/content/Context;Lcom/google/glass/settings/connectivity/ConnectivityStatusCardUI;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/connectivity/ConnectivityStatusLiveCardManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/connectivity/ConnectivityStatusCardManager;

    return-object v0
.end method
