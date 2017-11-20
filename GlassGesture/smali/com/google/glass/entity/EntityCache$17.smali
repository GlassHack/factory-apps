.class Lcom/google/glass/entity/EntityCache$17;
.super Ljava/lang/Object;
.source "EntityCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/entity/EntityCache;->extractRecentEntities(Ljava/util/List;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;I)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/glass/entity/EntityCache$EntityData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;

.field final synthetic val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/entity/EntityCache;

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$17;->this$0:Lcom/google/glass/entity/EntityCache;

    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$17;->val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I
    .locals 8
    .param p1, "entity1"    # Lcom/google/glass/entity/EntityCache$EntityData;
    .param p2, "entity2"    # Lcom/google/glass/entity/EntityCache$EntityData;

    .prologue
    .line 1153
    iget-object v4, p0, Lcom/google/glass/entity/EntityCache$17;->val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1154
    .local v4, "entityTimestampOptions1":Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;
    iget-object v5, p0, Lcom/google/glass/entity/EntityCache$17;->val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1155
    .local v5, "entityTimestampOptions2":Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;
    iget-boolean v7, p1, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity:Z

    if-nez v7, :cond_0

    iget-boolean v7, p1, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    if-eqz v7, :cond_1

    :cond_0
    sget-object v7, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    if-ne v4, v7, :cond_1

    .line 1157
    sget-object v4, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1159
    :cond_1
    iget-boolean v7, p2, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity:Z

    if-nez v7, :cond_2

    iget-boolean v7, p2, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    if-eqz v7, :cond_3

    :cond_2
    sget-object v7, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    if-ne v5, v7, :cond_3

    .line 1161
    sget-object v5, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1163
    :cond_3
    iget-object v7, p0, Lcom/google/glass/entity/EntityCache$17;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v7, p1, v4}, Lcom/google/glass/entity/EntityCache;->access$400(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J

    move-result-wide v0

    .line 1164
    .local v0, "entityTime1":J
    iget-object v7, p0, Lcom/google/glass/entity/EntityCache$17;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v7, p2, v5}, Lcom/google/glass/entity/EntityCache;->access$400(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J

    move-result-wide v2

    .line 1167
    .local v2, "entityTime2":J
    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v6

    .line 1170
    .local v6, "result":I
    if-nez v6, :cond_4

    .line 1171
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$500()Ljava/util/Comparator;

    move-result-object v7

    invoke-interface {v7, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    .line 1173
    :cond_4
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1146
    check-cast p1, Lcom/google/glass/entity/EntityCache$EntityData;

    check-cast p2, Lcom/google/glass/entity/EntityCache$EntityData;

    invoke-virtual {p0, p1, p2}, Lcom/google/glass/entity/EntityCache$17;->compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I

    move-result v0

    return v0
.end method
