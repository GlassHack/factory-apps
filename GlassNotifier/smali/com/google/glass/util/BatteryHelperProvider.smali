.class public Lcom/google/glass/util/BatteryHelperProvider;
.super Lcom/google/glass/inject/Provider;
.source "BatteryHelperProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/util/BatteryHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/util/BatteryHelperProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/util/BatteryHelperProvider;

    invoke-direct {v0}, Lcom/google/glass/util/BatteryHelperProvider;-><init>()V

    sput-object v0, Lcom/google/glass/util/BatteryHelperProvider;->instance:Lcom/google/glass/util/BatteryHelperProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/google/glass/util/BatteryHelperProvider;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/util/BatteryHelperProvider;->instance:Lcom/google/glass/util/BatteryHelperProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/util/BatteryHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lcom/google/glass/util/BatteryHelperProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/util/BatteryHelperProvider$1;-><init>(Lcom/google/glass/util/BatteryHelperProvider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelperProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/BatteryHelper;

    return-object v0
.end method
