.class public Lcom/google/glass/util/SetupHelperProvider;
.super Lcom/google/glass/inject/LazySingletonProvider;
.source "SetupHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/LazySingletonProvider",
        "<",
        "Lcom/google/glass/util/SetupHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/util/SetupHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/glass/util/SetupHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/util/SetupHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/SetupHelperProvider;->INSTANCE:Lcom/google/glass/util/SetupHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/inject/LazySingletonProvider;-><init>()V

    .line 14
    new-instance v0, Lcom/google/glass/util/SetupHelperProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/util/SetupHelperProvider$1;-><init>(Lcom/google/glass/util/SetupHelperProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/SetupHelperProvider;->init(Lcom/google/common/base/Supplier;)V

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/SetupHelperProvider;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/glass/util/SetupHelperProvider;->INSTANCE:Lcom/google/glass/util/SetupHelperProvider;

    return-object v0
.end method
