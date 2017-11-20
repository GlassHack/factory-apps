.class final Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "RecoveryCodeManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/lockrecovery/RecoveryCodeManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->instance:Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->instance:Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;

    return-object v0
.end method


# virtual methods
.method public from(Landroid/content/Context;)Lcom/google/glass/lockrecovery/RecoveryCodeManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider$1;-><init>(Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/lockrecovery/RecoveryCodeManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    return-object v0
.end method
