.class public final Lcom/google/glass/android/location/LocationManagerProvider;
.super Lcom/google/glass/inject/Provider;
.source "LocationManagerProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Landroid/location/LocationManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/android/location/LocationManagerProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/google/glass/android/location/LocationManagerProvider;

    invoke-direct {v0}, Lcom/google/glass/android/location/LocationManagerProvider;-><init>()V

    sput-object v0, Lcom/google/glass/android/location/LocationManagerProvider;->INSTANCE:Lcom/google/glass/android/location/LocationManagerProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/android/location/LocationManagerProvider;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/google/glass/android/location/LocationManagerProvider;->INSTANCE:Lcom/google/glass/android/location/LocationManagerProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/google/glass/android/location/LocationManagerProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/android/location/LocationManagerProvider$1;-><init>(Lcom/google/glass/android/location/LocationManagerProvider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method
