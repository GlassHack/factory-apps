.class public Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;
.super Lcom/google/glass/inject/Provider;
.source "TimeZoneUpdaterProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/settings/timezone/TimeZoneUpdater;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;

    invoke-direct {v0}, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;-><init>()V

    sput-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;->instance:Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;->instance:Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;)Lcom/google/glass/settings/timezone/TimeZoneUpdater;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;
    .param p3, "listeningExecutorService"    # Lcom/google/common/util/concurrent/ListeningExecutorService;
    .param p4, "listener"    # Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;

    .prologue
    .line 43
    new-instance v0, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider$1;-><init>(Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;Landroid/content/Context;Lcom/google/glass/settings/timezone/TimeZoneUpdater$OnTimeZoneReceivedListener;Lcom/google/common/util/concurrent/ListeningExecutorService;Lcom/google/glass/location/LocationManagerHelper;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/timezone/TimeZoneUpdaterProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/timezone/TimeZoneUpdater;

    return-object v0
.end method
