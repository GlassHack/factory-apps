.class Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;
.super Ljava/lang/Object;
.source "TimelineItemDatabaseHelper.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->updateBundle(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Landroid/database/Cursor;",
        "Lcom/google/googlex/glass/common/proto/nano/TimelineItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;


# direct methods
.method constructor <init>(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;->this$0:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    invoke-static {v0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->access$500(Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseSerializationHelper;->fromCursor(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1610
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$8;->apply(Landroid/database/Cursor;)Lcom/google/googlex/glass/common/proto/nano/TimelineItem;

    move-result-object v0

    return-object v0
.end method
