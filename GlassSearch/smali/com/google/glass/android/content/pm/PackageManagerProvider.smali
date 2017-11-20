.class public Lcom/google/glass/android/content/pm/PackageManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "PackageManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/content/pm/PackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/content/pm/PackageManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/google/glass/android/content/pm/PackageManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/content/pm/PackageManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/content/pm/PackageManagerProvider;->INSTANCE:Lcom/google/glass/android/content/pm/PackageManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/content/pm/PackageManagerProvider;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/android/content/pm/PackageManagerProvider;->INSTANCE:Lcom/google/glass/android/content/pm/PackageManagerProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/content/pm/PackageManagerProvider$1;-><init>(Lcom/google/glass/android/content/pm/PackageManagerProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/android/content/pm/PackageManagerProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    return-object v0
.end method
