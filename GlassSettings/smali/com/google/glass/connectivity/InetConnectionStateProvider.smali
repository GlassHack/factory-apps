.class public Lcom/google/glass/connectivity/InetConnectionStateProvider;
.super Lcom/google/glass/inject/Provider;
.source "InetConnectionStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/connectivity/InetConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/connectivity/InetConnectionStateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/connectivity/InetConnectionStateProvider;

    invoke-direct {v0}, Lcom/google/glass/connectivity/InetConnectionStateProvider;-><init>()V

    sput-object v0, Lcom/google/glass/connectivity/InetConnectionStateProvider;->instance:Lcom/google/glass/connectivity/InetConnectionStateProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/connectivity/InetConnectionStateProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/connectivity/InetConnectionStateProvider;->instance:Lcom/google/glass/connectivity/InetConnectionStateProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/glass/connectivity/InetConnectionState;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    new-instance v0, Lcom/google/glass/connectivity/InetConnectionStateProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/connectivity/InetConnectionStateProvider$1;-><init>(Lcom/google/glass/connectivity/InetConnectionStateProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/connectivity/InetConnectionStateProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/connectivity/InetConnectionState;

    return-object v0
.end method
