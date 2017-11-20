.class public final Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;
.super Lcom/google/glass/inject/Provider;
.source "TimelineItemDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/Provider",
        "<",
        "Lcom/google/glass/timeline/TimelineItemDatabaseHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1539
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->INSTANCE:Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1541
    invoke-direct {p0}, Lcom/google/glass/inject/Provider;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;
    .locals 1

    .prologue
    .line 1543
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->INSTANCE:Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1552
    const-string v0, "null context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider$1;-><init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;Landroid/content/Context;)V

    invoke-super {p0, v0}, Lcom/google/glass/inject/Provider;->get(Lcom/google/common/base/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    return-object v0
.end method
