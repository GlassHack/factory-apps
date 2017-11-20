.class public final Lcom/google/glass/android/net/ConnectivityManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "ConnectivityManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/net/ConnectivityManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/net/ConnectivityManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/net/ConnectivityManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/net/ConnectivityManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/net/ConnectivityManagerProvider;->instance:Lcom/google/glass/android/net/ConnectivityManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/net/ConnectivityManagerProvider;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/android/net/ConnectivityManagerProvider;->instance:Lcom/google/glass/android/net/ConnectivityManagerProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/glass/android/net/ConnectivityManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/android/net/ConnectivityManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/net/ConnectivityManagerProvider$1;-><init>(Lcom/google/glass/android/net/ConnectivityManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/net/ConnectivityManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/net/ConnectivityManager;

    return-object v0
.end method
