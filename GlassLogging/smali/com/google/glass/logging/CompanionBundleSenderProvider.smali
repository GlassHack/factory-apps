.class final Lcom/google/glass/logging/CompanionBundleSenderProvider;
.super Lcom/google/glass/inject/Provider;
.source "CompanionBundleSenderProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/logging/CompanionBundleSender;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/logging/CompanionBundleSenderProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/logging/CompanionBundleSenderProvider;

    invoke-direct {v0}, Lcom/google/glass/logging/CompanionBundleSenderProvider;-><init>()V

    sput-object v0, Lcom/google/glass/logging/CompanionBundleSenderProvider;->instance:Lcom/google/glass/logging/CompanionBundleSenderProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/google/glass/logging/CompanionBundleSenderProvider;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/google/glass/logging/CompanionBundleSenderProvider;->instance:Lcom/google/glass/logging/CompanionBundleSenderProvider;

    return-object v0
.end method


# virtual methods
.method get(Landroid/content/Context;)Lcom/google/glass/logging/CompanionBundleSender;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/google/glass/logging/CompanionBundleSenderProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/logging/CompanionBundleSenderProvider$1;-><init>(Lcom/google/glass/logging/CompanionBundleSenderProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/CompanionBundleSenderProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/logging/CompanionBundleSender;

    return-object v0
.end method
