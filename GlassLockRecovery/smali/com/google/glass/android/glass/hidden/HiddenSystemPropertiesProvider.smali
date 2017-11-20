.class public final Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;
.super Lcom/google/glass/inject/Provider;
.source "HiddenSystemPropertiesProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/android/glass/hidden/HiddenSystemProperties;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;

.field private static final SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/android/glass/hidden/HiddenSystemProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;

    invoke-direct {v0}, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;->INSTANCE:Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;

    .line 15
    new-instance v0, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider$1;

    invoke-direct {v0}, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider$1;-><init>()V

    sput-object v0, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;->SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;->INSTANCE:Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/glass/hidden/HiddenSystemProperties;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/glass/android/glass/hidden/HiddenSystemPropertiesProvider;->SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/glass/hidden/HiddenSystemProperties;

    return-object v0
.end method
