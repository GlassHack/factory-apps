.class public final Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;
.super Lcom/google/glass/inject/InitializableProvider;
.source "TimelineItemDatabaseSerializationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/inject/InitializableProvider",
        "<",
        "Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;-><init>()V

    sput-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->INSTANCE:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/glass/inject/InitializableProvider;-><init>()V

    .line 247
    new-instance v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    invoke-direct {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->init(Ljava/lang/Object;)V

    .line 248
    return-void
.end method

.method public static final getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;->INSTANCE:Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper$Provider;

    return-object v0
.end method
