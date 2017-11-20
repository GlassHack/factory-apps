.class public abstract Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
.super Landroid/content/ContentProvider;
.source "SyncableContentProvider.java"


# instance fields
.field private volatile mTempProviderSyncAdapter:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract close()V
.end method

.method protected abstract deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getContainsDiffs()Z
.end method

.method public abstract getDatabase()Landroid/database/sqlite/SQLiteDatabase;
.end method

.method protected abstract getMergers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;",
            ">;"
        }
    .end annotation
.end method

.method public getTempProviderSyncAdapter()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->mTempProviderSyncAdapter:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;

    return-object v0
.end method

.method public abstract getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
.end method

.method protected abstract insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected abstract isTemporary()Z
.end method

.method public abstract merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V
.end method

.method protected abstract onAccountsChanged([Landroid/accounts/Account;)V
.end method

.method protected abstract onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract onSyncCanceled()V
.end method

.method public abstract onSyncStart(Landroid/accounts/Account;)V
.end method

.method public abstract onSyncStop(Z)V
.end method

.method protected abstract queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract setContainsDiffs(Z)V
.end method

.method public setTempProviderSyncAdapter(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;)V
    .locals 0
    .param p1, "syncAdapter"    # Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->mTempProviderSyncAdapter:Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;

    .line 42
    return-void
.end method

.method protected abstract updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
.end method

.method public abstract wipeAccount(Landroid/accounts/Account;)V
.end method
