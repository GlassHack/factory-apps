.class Lcom/google/android/gms/glass/location/GCoreLocationProvider$GCoreLocationProviderHolder;
.super Ljava/lang/Object;
.source "GCoreLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/glass/location/GCoreLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GCoreLocationProviderHolder"
.end annotation


# static fields
.field private static instance:Lcom/google/android/gms/glass/location/GCoreLocationProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/glass/location/GCoreLocationProvider;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider$1;)V

    sput-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$GCoreLocationProviderHolder;->instance:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/gms/glass/location/GCoreLocationProvider;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$GCoreLocationProviderHolder;->instance:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    return-object v0
.end method
