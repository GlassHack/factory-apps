.class public final Lcom/google/glass/system/PerformanceHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "PerformanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/system/PerformanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/system/PerformanceHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/system/PerformanceHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/system/PerformanceHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper$Provider;->INSTANCE:Lcom/google/glass/system/PerformanceHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/system/PerformanceHelper$Provider;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/google/glass/system/PerformanceHelper$Provider;->INSTANCE:Lcom/google/glass/system/PerformanceHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/system/PerformanceHelper;
    .locals 1

    .prologue
    .line 347
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$Provider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/system/PerformanceHelper$Provider$1;-><init>(Lcom/google/glass/system/PerformanceHelper$Provider;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/system/PerformanceHelper;

    return-object v0
.end method
