.class public Lcom/google/glass/wifi/WifiManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "WifiManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/net/wifi/WifiManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/wifi/WifiManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/wifi/WifiManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/wifi/WifiManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/wifi/WifiManagerProvider;->INSTANCE:Lcom/google/glass/wifi/WifiManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/wifi/WifiManagerProvider;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/wifi/WifiManagerProvider;->INSTANCE:Lcom/google/glass/wifi/WifiManagerProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/google/glass/wifi/WifiManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/wifi/WifiManagerProvider$1;-><init>(Lcom/google/glass/wifi/WifiManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/wifi/WifiManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method
