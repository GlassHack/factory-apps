.class public final Lcom/google/glass/android/accounts/AccountManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "AccountManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/accounts/AccountManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/android/accounts/AccountManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/glass/android/accounts/AccountManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/accounts/AccountManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/accounts/AccountManagerProvider;->instance:Lcom/google/glass/android/accounts/AccountManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/accounts/AccountManagerProvider;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/glass/android/accounts/AccountManagerProvider;->instance:Lcom/google/glass/android/accounts/AccountManagerProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/accounts/AccountManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/google/glass/android/accounts/AccountManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/accounts/AccountManagerProvider$1;-><init>(Lcom/google/glass/android/accounts/AccountManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/accounts/AccountManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    return-object v0
.end method
