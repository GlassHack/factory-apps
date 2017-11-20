.class public final Lcom/google/glass/location/LocationManagerHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/google/glass/location/LocationManagerHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 471
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/location/LocationManagerHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/location/LocationManagerHelper$Provider;->INSTANCE:Lcom/google/glass/location/LocationManagerHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/location/LocationManagerHelper$Provider;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/google/glass/location/LocationManagerHelper$Provider;->INSTANCE:Lcom/google/glass/location/LocationManagerHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Lcom/google/glass/location/LocationManagerHelper;
    .locals 1

    .prologue
    .line 484
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    new-instance v0, Lcom/google/glass/location/LocationManagerHelper$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/location/LocationManagerHelper$Provider$1;-><init>(Lcom/google/glass/location/LocationManagerHelper$Provider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/aw;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/location/LocationManagerHelper;

    return-object v0
.end method
