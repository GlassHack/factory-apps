.class public Lcom/google/glass/locale/RegionProvider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "RegionProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/locale/Region;",
        ">;"
    }
.end annotation


# static fields
.field public static final COUNTRY_US:Ljava/lang/String; = "US"

.field public static final REGION_CODE:Ljava/lang/String; = "ro.region"

.field private static final instance:Lcom/google/glass/locale/RegionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/glass/locale/RegionProvider;

    invoke-direct {v0}, Lcom/google/glass/locale/RegionProvider;-><init>()V

    sput-object v0, Lcom/google/glass/locale/RegionProvider;->instance:Lcom/google/glass/locale/RegionProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/locale/RegionProvider;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/glass/locale/RegionProvider;->instance:Lcom/google/glass/locale/RegionProvider;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/glass/locale/Region;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/glass/locale/RegionProvider$1;

    invoke-direct {v0, p0}, Lcom/google/glass/locale/RegionProvider$1;-><init>(Lcom/google/glass/locale/RegionProvider;)V

    invoke-virtual {p0, v0}, Lcom/google/glass/locale/RegionProvider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/locale/Region;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/google/glass/locale/RegionProvider;->get()Lcom/google/glass/locale/Region;

    move-result-object v0

    return-object v0
.end method
