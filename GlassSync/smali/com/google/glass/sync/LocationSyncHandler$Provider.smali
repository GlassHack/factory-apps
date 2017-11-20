.class final Lcom/google/glass/sync/LocationSyncHandler$Provider;
.super Lcom/google/glass/inject/Provider;
.source "LocationSyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/LocationSyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/sync/LocationSyncHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/sync/LocationSyncHandler$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/google/glass/sync/LocationSyncHandler$Provider;

    invoke-direct {v0}, Lcom/google/glass/sync/LocationSyncHandler$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/sync/LocationSyncHandler$Provider;->INSTANCE:Lcom/google/glass/sync/LocationSyncHandler$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/google/glass/sync/LocationSyncHandler$Provider;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/google/glass/sync/LocationSyncHandler$Provider;->INSTANCE:Lcom/google/glass/sync/LocationSyncHandler$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/sync/LocationSyncHandler;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    new-instance v0, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/sync/LocationSyncHandler$Provider$1;-><init>(Lcom/google/glass/sync/LocationSyncHandler$Provider;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/sync/LocationSyncHandler$Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sync/LocationSyncHandler;

    return-object v0
.end method
