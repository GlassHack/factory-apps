.class public final Lcom/google/glass/android/app/PendingIntentFactoryProvider;
.super Lcom/google/glass/inject/Provider;
.source "PendingIntentFactoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/android/app/PendingIntentFactory;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SUPPLIER:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Lcom/google/glass/android/app/PendingIntentFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final instance:Lcom/google/glass/android/app/PendingIntentFactoryProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/google/glass/android/app/PendingIntentFactoryProvider;

    invoke-direct {v0}, Lcom/google/glass/android/app/PendingIntentFactoryProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->instance:Lcom/google/glass/android/app/PendingIntentFactoryProvider;

    .line 12
    new-instance v0, Lcom/google/glass/android/app/PendingIntentFactoryProvider$1;

    invoke-direct {v0}, Lcom/google/glass/android/app/PendingIntentFactoryProvider$1;-><init>()V

    sput-object v0, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/app/PendingIntentFactoryProvider;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->instance:Lcom/google/glass/android/app/PendingIntentFactoryProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/android/app/PendingIntentFactory;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->DEFAULT_SUPPLIER:Lcom/google/common/base/Supplier;

    invoke-virtual {p0, v0}, Lcom/google/glass/android/app/PendingIntentFactoryProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/android/app/PendingIntentFactory;

    return-object v0
.end method
