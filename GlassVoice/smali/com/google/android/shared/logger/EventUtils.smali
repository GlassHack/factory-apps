.class public Lcom/google/android/shared/logger/EventUtils;
.super Ljava/lang/Object;
.source "EventUtils.java"


# static fields
.field public static final DEBUG:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static checkGroup(II)Z
    .locals 1
    .param p0, "event"    # I
    .param p1, "group"    # I

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/android/shared/logger/EventUtils;->getGroup(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkId(II)Z
    .locals 1
    .param p0, "event"    # I
    .param p1, "id"    # I

    .prologue
    .line 23
    invoke-static {p0}, Lcom/google/android/shared/logger/EventUtils;->getId(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkValidEventWithGroup(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "events":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 57
    .local v0, "event":I
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {v2}, Lcom/google/android/shared/logger/EventUtils;->checkValidEventWithGroup([I)V

    goto :goto_0

    .line 59
    .end local v0    # "event":I
    :cond_0
    return-void
.end method

.method public static varargs checkValidEventWithGroup([I)V
    .locals 5
    .param p0, "events"    # [I

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 63
    .local v1, "event":I
    invoke-static {v1}, Lcom/google/android/shared/logger/EventUtils;->getGroup(I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/google/android/shared/logger/EventUtils;->getId(I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 65
    .end local v1    # "event":I
    :cond_1
    return-void
.end method

.method public static checkValidGroup(I)V
    .locals 1
    .param p0, "group"    # I

    .prologue
    .line 48
    invoke-static {p0}, Lcom/google/android/shared/logger/EventUtils;->getGroup(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkValidId(I)V
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 52
    invoke-static {p0}, Lcom/google/android/shared/logger/EventUtils;->getId(I)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 53
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEventLabel(I)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # I

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/android/shared/logger/EventUtils;->getGroup(I)I

    move-result v1

    .line 69
    .local v1, "group":I
    invoke-static {p0}, Lcom/google/android/shared/logger/EventUtils;->getId(I)I

    move-result v0

    .line 76
    .local v0, "eventId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getGroup(I)I
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 31
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    return v0
.end method

.method public static getGroupDescription(I)Ljava/lang/String;
    .locals 4
    .param p0, "event"    # I

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/shared/logger/EventUtils;->getGroup(I)I

    move-result v0

    .line 36
    .local v0, "group":I
    const/high16 v1, 0x10000000

    if-ne v0, v1, :cond_0

    .line 37
    const-string v1, "CLIENT_EVENT"

    return-object v1

    .line 40
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid group: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getId(I)I
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 44
    const v0, 0xfffffff

    and-int/2addr v0, p0

    return v0
.end method
