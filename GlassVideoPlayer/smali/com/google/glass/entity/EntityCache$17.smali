.class Lcom/google/glass/entity/EntityCache$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/google/glass/entity/EntityCache;

.field final synthetic val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;


# direct methods
.method constructor <init>(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/google/glass/entity/EntityCache$17;->this$0:Lcom/google/glass/entity/EntityCache;

    iput-object p2, p0, Lcom/google/glass/entity/EntityCache$17;->val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$EntityData;)I
    .locals 4

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$17;->val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1154
    iget-object v1, p0, Lcom/google/glass/entity/EntityCache$17;->val$timestampOptions:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1155
    iget-boolean v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity:Z

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    if-ne v0, v2, :cond_1

    .line 1157
    sget-object v0, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1159
    :cond_1
    iget-boolean v2, p2, Lcom/google/glass/entity/EntityCache$EntityData;->isPlusEntity:Z

    if-nez v2, :cond_2

    iget-boolean v2, p2, Lcom/google/glass/entity/EntityCache$EntityData;->isFocusEntity:Z

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CREATION_AND_CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    if-ne v1, v2, :cond_3

    .line 1161
    sget-object v1, Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;->CONTENT_USAGE:Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;

    .line 1163
    :cond_3
    iget-object v2, p0, Lcom/google/glass/entity/EntityCache$17;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v2, p1, v0}, Lcom/google/glass/entity/EntityCache;->access$400(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J

    move-result-wide v2

    .line 1164
    iget-object v0, p0, Lcom/google/glass/entity/EntityCache$17;->this$0:Lcom/google/glass/entity/EntityCache;

    invoke-static {v0, p2, v1}, Lcom/google/glass/entity/EntityCache;->access$400(Lcom/google/glass/entity/EntityCache;Lcom/google/glass/entity/EntityCache$EntityData;Lcom/google/glass/entity/EntityCache$TimestampFieldOptions;)J

    move-result-wide v0

    .line 1167
    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->a(JJ)I

    move-result v0

    .line 1170
    if-nez v0, :cond_4

    .line 1171
    invoke-static {}, Lcom/google/glass/entity/EntityCache;->access$500()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 1173
    :cond_4
    return v0
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
