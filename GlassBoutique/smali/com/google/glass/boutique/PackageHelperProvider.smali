.class public Lcom/google/glass/boutique/PackageHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "PackageHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/boutique/PackageHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/boutique/PackageHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/boutique/PackageHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/boutique/PackageHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/boutique/PackageHelperProvider;->instance:Lcom/google/glass/boutique/PackageHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/boutique/PackageHelperProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/boutique/PackageHelperProvider;->instance:Lcom/google/glass/boutique/PackageHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/boutique/PackageHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/google/glass/boutique/PackageHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/boutique/PackageHelperProvider$1;-><init>(Lcom/google/glass/boutique/PackageHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/boutique/PackageHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/boutique/PackageHelper;

    return-object v0
.end method
