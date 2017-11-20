.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectInfo"
.end annotation


# instance fields
.field private final projection:[Ljava/lang/String;

.field private final selectArgs:[Ljava/lang/String;

.field private final selection:Ljava/lang/String;

.field private final sortOrder:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 1744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1745
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->projection:[Ljava/lang/String;

    .line 1746
    iput-object p2, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->selection:Ljava/lang/String;

    .line 1747
    iput-object p3, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->selectArgs:[Ljava/lang/String;

    .line 1748
    iput-object p4, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->sortOrder:Ljava/lang/String;

    .line 1749
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->projection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->selection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->selectArgs:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$SelectInfo;->sortOrder:Ljava/lang/String;

    return-object v0
.end method
