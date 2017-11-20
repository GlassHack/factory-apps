.class public Lcom/google/glass/maps/MapHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "MapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/maps/MapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/maps/MapHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/maps/MapHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/google/glass/maps/MapHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/maps/MapHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/maps/MapHelper$Provider;->INSTANCE:Lcom/google/glass/maps/MapHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/glass/maps/MapHelper$Provider;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/google/glass/maps/MapHelper$Provider;->INSTANCE:Lcom/google/glass/maps/MapHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Lcom/google/glass/maps/MapHelper$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/maps/MapHelper$Provider$1;-><init>(Lcom/google/glass/maps/MapHelper$Provider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/maps/MapHelper;

    return-object v0
.end method
