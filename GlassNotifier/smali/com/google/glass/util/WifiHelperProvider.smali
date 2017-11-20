.class public Lcom/google/glass/util/WifiHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "WifiHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/util/WifiHelper;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/util/WifiHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/glass/util/WifiHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/util/WifiHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/WifiHelperProvider;->INSTANCE:Lcom/google/glass/util/WifiHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/WifiHelperProvider;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/util/WifiHelperProvider;->INSTANCE:Lcom/google/glass/util/WifiHelperProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/glass/util/WifiHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/google/glass/util/WifiHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/WifiHelperProvider$1;-><init>(Lcom/google/glass/util/WifiHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/WifiHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/WifiHelper;

    return-object v0
.end method
