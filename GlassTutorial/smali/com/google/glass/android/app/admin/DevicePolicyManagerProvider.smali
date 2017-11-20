.class public final Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "DevicePolicyManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/app/admin/DevicePolicyManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;->INSTANCE:Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;->INSTANCE:Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider$1;-><init>(Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/app/admin/DevicePolicyManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method
