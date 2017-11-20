.class public final Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "LockRecoveryHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/lockrecovery/LockRecoveryHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;

.field private static final supplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/glass/lockrecovery/LockRecoveryHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->instance:Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;

    .line 12
    new-instance v0, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider$1;

    invoke-direct {v0}, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider$1;-><init>()V

    sput-object v0, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->supplier:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->instance:Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/lockrecovery/LockRecoveryHelper;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->supplier:Lcom/google/common/base/Supplier;

    invoke-virtual {p0, v0}, Lcom/google/glass/lockrecovery/LockRecoveryHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/lockrecovery/LockRecoveryHelper;

    return-object v0
.end method
