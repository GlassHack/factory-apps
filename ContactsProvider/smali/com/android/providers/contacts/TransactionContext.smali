.class public Lcom/android/providers/contacts/TransactionContext;
.super Ljava/lang/Object;
.source "TransactionContext.java"


# instance fields
.field private mChangedRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDirtyRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mForProfile:Z

.field private mInsertedRawContactsAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mStaleSearchIndexRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedRawContacts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdatedSyncStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forProfile"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean p1, p0, Lcom/android/providers/contacts/TransactionContext;->mForProfile:Z

    .line 49
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/providers/contacts/TransactionContext;->clearExceptSearchIndexUpdates()V

    .line 160
    invoke-virtual {p0}, Lcom/android/providers/contacts/TransactionContext;->clearSearchIndexUpdates()V

    .line 161
    return-void
.end method

.method public clearExceptSearchIndexUpdates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 147
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 148
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 149
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 150
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Ljava/util/HashSet;

    .line 151
    return-void
.end method

.method public clearSearchIndexUpdates()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    .line 155
    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    .line 156
    return-void
.end method

.method public getAccountIdOrNullForRawContact(J)Ljava/lang/Long;
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public getChangedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Ljava/util/HashSet;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getDirtyRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getInsertedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getStaleSearchIndexContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getStaleSearchIndexRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getUpdatedRawContactIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    return-object v0
.end method

.method public getUpdatedSyncStates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public invalidateSearchIndexForContact(J)V
    .locals 2
    .param p1, "contactId"    # J

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public invalidateSearchIndexForRawContact(J)V
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mStaleSearchIndexRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public isNewRawContact(J)Z
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public markRawContactChangedOrDeletedOrInserted(J)V
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Ljava/util/HashSet;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mChangedRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public markRawContactDirtyAndChanged(JZ)V
    .locals 2
    .param p1, "rawContactId"    # J
    .param p3, "isSyncAdapter"    # Z

    .prologue
    .line 68
    if-nez p3, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mDirtyRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/TransactionContext;->markRawContactChangedOrDeletedOrInserted(J)V

    .line 76
    return-void
.end method

.method public rawContactInserted(JJ)V
    .locals 3
    .param p1, "rawContactId"    # J
    .param p3, "accountId"    # J

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mInsertedRawContactsAccounts:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/TransactionContext;->markRawContactChangedOrDeletedOrInserted(J)V

    .line 60
    return-void
.end method

.method public rawContactUpdated(J)V
    .locals 2
    .param p1, "rawContactId"    # J

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedRawContacts:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public syncStateUpdated(JLjava/lang/Object;)V
    .locals 2
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/TransactionContext;->mUpdatedSyncStates:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method
