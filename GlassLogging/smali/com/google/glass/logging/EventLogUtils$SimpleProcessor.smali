.class Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;
.super Ljava/lang/Object;
.source "EventLogUtils.java"

# interfaces
.implements Lcom/google/glass/logging/EventLogUtils$LogProcessor;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/EventLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimpleProcessor"
.end annotation


# instance fields
.field private final action:Lcom/google/glass/userevent/UserEventAction;

.field private final params:[Ljava/lang/String;

.field private final tag:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "tag"    # I

    .prologue
    .line 219
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->actionForTag(I)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(ILcom/google/glass/userevent/UserEventAction;)V

    .line 220
    return-void
.end method

.method constructor <init>(ILcom/google/glass/userevent/UserEventAction;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "action"    # Lcom/google/glass/userevent/UserEventAction;

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(ILcom/google/glass/userevent/UserEventAction;[Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method constructor <init>(ILcom/google/glass/userevent/UserEventAction;[Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # I
    .param p2, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p3, "params"    # [Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iput p1, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->tag:I

    .line 234
    iput-object p2, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->action:Lcom/google/glass/userevent/UserEventAction;

    .line 235
    iput-object p3, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->params:[Ljava/lang/String;

    .line 236
    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # I
    .param p2, "params"    # [Ljava/lang/String;

    .prologue
    .line 227
    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->actionForTag(I)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;-><init>(ILcom/google/glass/userevent/UserEventAction;[Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method private static actionForTag(I)Lcom/google/glass/userevent/UserEventAction;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 265
    invoke-static {p0}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/glass/userevent/UserEventAction;->valueOf(Ljava/lang/String;)Lcom/google/glass/userevent/UserEventAction;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method extractData(Landroid/util/EventLog$Event;)Ljava/lang/String;
    .locals 6
    .param p1, "event"    # Landroid/util/EventLog$Event;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p1}, Landroid/util/EventLog$Event;->getData()Ljava/lang/Object;

    move-result-object v3

    .line 272
    .local v3, "obj":Ljava/lang/Object;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .local v0, "builder":Ljava/lang/StringBuilder;
    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 276
    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "obj":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    .line 282
    .local v4, "objArray":[Ljava/lang/Object;
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 284
    iget-object v5, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->params:[Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 285
    iget-object v5, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->params:[Ljava/lang/String;

    aget-object v2, v5, v1

    .line 293
    .local v2, "key":Ljava/lang/String;
    :goto_2
    aget-object v5, v4, v1

    invoke-static {v0, v2, v5}, Lcom/google/glass/userevent/UserEventHelper;->appendPair(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 278
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "objArray":[Ljava/lang/Object;
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Object;

    .line 279
    .restart local v4    # "objArray":[Ljava/lang/Object;
    const/4 v5, 0x0

    aput-object v3, v4, v5

    goto :goto_0

    .line 287
    .end local v3    # "obj":Ljava/lang/Object;
    .restart local v1    # "i":I
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "key":Ljava/lang/String;
    goto :goto_2

    .line 295
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getAction()Lcom/google/glass/userevent/UserEventAction;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->action:Lcom/google/glass/userevent/UserEventAction;

    return-object v0
.end method

.method public getParameterCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->params:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->params:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->tag:I

    return v0
.end method

.method public process(Landroid/util/EventLog$Event;)Ljava/util/List;
    .locals 4
    .param p1, "event"    # Landroid/util/EventLog$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/EventLog$Event;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->action:Lcom/google/glass/userevent/UserEventAction;

    invoke-static {p1}, Lcom/google/glass/logging/EventLogUtils;->access$000(Landroid/util/EventLog$Event;)J

    move-result-wide v1

    invoke-virtual {p0, p1}, Lcom/google/glass/logging/EventLogUtils$SimpleProcessor;->extractData(Landroid/util/EventLog$Event;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->createProto(Lcom/google/glass/userevent/UserEventAction;JLjava/lang/String;)Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/logging/EventLogUtils;->access$100(Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
