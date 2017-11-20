.class public Lcom/android/systemui/statusbar/NotificationData;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationData$Entry;
    }
.end annotation


# instance fields
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryCmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/NotificationData$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationData$1;-><init>(Lcom/android/systemui/statusbar/NotificationData;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntryCmp:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 4
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 104
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntryCmp:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    return v1

    .line 104
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 3
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 94
    .local v0, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 98
    .end local v0    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method public hasClearableItems()Z
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 151
    .local v0, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const/4 v2, 0x1

    .line 157
    .end local v0    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 2
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 128
    .local v0, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
