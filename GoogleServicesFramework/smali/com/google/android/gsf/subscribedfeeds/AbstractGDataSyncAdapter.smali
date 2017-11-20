.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;
.super Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;
.source "AbstractGDataSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$1;,
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;,
        Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    }
.end annotation


# static fields
.field private static final SYNC_STATE_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field protected mAccount:Landroid/accounts/Account;

.field protected mAuthToken:Ljava/lang/String;

.field protected mServerEntries:I

.field protected mServerQueries:I

.field protected volatile mSyncCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 469
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "provider"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 68
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 69
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 90
    return-void
.end method

.method private getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    .locals 4
    .param p1, "entryClass"    # Ljava/lang/Class;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1202
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getEntry(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1205
    :goto_0
    return-object v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error while fetching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B
    .locals 2
    .param p0, "syncData"    # Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    .prologue
    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 552
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 553
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    return-object v1

    .line 555
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 3
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 528
    if-eqz p0, :cond_0

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 531
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 533
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    .end local v0    # "parcel":Landroid/os/Parcel;
    :goto_0
    return-object v1

    .line 538
    .restart local v0    # "parcel":Landroid/os/Parcel;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    .line 534
    :catch_0
    move-exception v1

    .line 538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 541
    .end local v0    # "parcel":Landroid/os/Parcel;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected abstract deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method protected getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method protected getAccountAllowsSyncing(Landroid/accounts/Account;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected abstract getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;
.end method

.method protected getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .locals 5
    .param p1, "feedUrl"    # Ljava/lang/String;
    .param p2, "baseSyncData"    # Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;

    .prologue
    .line 832
    move-object v2, p2

    check-cast v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    .line 833
    .local v2, "syncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    iget-object v3, v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 835
    .local v0, "feedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-nez v0, :cond_0

    .line 836
    const-string v3, "^https://"

    const-string v4, "http://"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "httpFeedUrl":Ljava/lang/String;
    iget-object v3, v2, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "feedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .line 839
    .end local v1    # "httpFeedUrl":Ljava/lang/String;
    .restart local v0    # "feedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :cond_0
    return-object v0
.end method

.method protected abstract getFeedEntryClass()Ljava/lang/Class;
.end method

.method protected abstract getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method protected abstract getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;
.end method

.method public getIsSyncable(Landroid/accounts/Account;)Z
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccountAllowsSyncing(Landroid/accounts/Account;)Z

    move-result v0

    return v0
.end method

.method public getMaxEntriesPerSync()I
    .locals 1

    .prologue
    .line 466
    const/16 v0, 0xc8

    return v0
.end method

.method public getServerDiffs(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 8
    .param p1, "syncData"    # Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .param p2, "tempProvider"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "syncInfo"    # Ljava/lang/Object;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedUrl(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v3

    .line 570
    .local v3, "feedUrl":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v0, "feed"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    const-string v0, "feed"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "feedUrl":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 573
    .restart local v3    # "feedUrl":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedEntryClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getMaxEntriesPerSync()I

    move-result v5

    move-object v6, p1

    check-cast v6, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 575
    return-void
.end method

.method protected getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V
    .locals 42
    .param p1, "tempProvider"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .param p2, "feedEntryClass"    # Ljava/lang/Class;
    .param p3, "feedUrl"    # Ljava/lang/String;
    .param p4, "syncInfo"    # Ljava/lang/Object;
    .param p5, "maxResults"    # I
    .param p6, "syncData"    # Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .param p7, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 592
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v3, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getFeedData(Ljava/lang/String;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    move-result-object v9

    .line 596
    .local v9, "feedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    const-wide/16 v31, 0x0

    .line 597
    .local v31, "lastSyncTime":J
    if-eqz v9, :cond_2

    .line 598
    iget-wide v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    move-wide/from16 v31, v0

    .line 602
    :cond_2
    new-instance v38, Landroid/text/format/Time;

    const-string v3, "UTC"

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 604
    .local v38, "time":Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v18

    .line 606
    .local v18, "client":Lcom/google/wireless/gdata/client/GDataServiceClient;
    invoke-virtual/range {v18 .. v18}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createQueryParams()Lcom/google/wireless/gdata/client/QueryParams;

    move-result-object v34

    .line 607
    .local v34, "params":Lcom/google/wireless/gdata/client/QueryParams;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getContainsDiffs()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 608
    const-wide/16 v7, 0x0

    cmp-long v3, v31, v7

    if-lez v3, :cond_3

    .line 609
    move-object/from16 v0, v38

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 610
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format3339(Z)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setUpdatedMin(Ljava/lang/String;)V

    .line 611
    const-string v3, "requirealldeleted"

    const-string v5, "true"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v5}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_3
    const/16 v37, 0x1

    .line 616
    .local v37, "startIndex":I
    const/16 v25, 0x0

    .line 617
    .local v25, "expectedFirstId":Ljava/lang/String;
    if-eqz v9, :cond_5

    iget-boolean v3, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    if-eqz v3, :cond_5

    .line 627
    iget v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->endIndex:I

    move/from16 v37, v0

    .line 628
    if-gtz v37, :cond_4

    .line 629
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad startIndex, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", it must be greater than 0, SyncData is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 634
    :cond_4
    invoke-static/range {v37 .. v37}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setStartIndex(Ljava/lang/String;)V

    .line 635
    add-int/lit8 p5, p5, 0x1

    .line 636
    iget-object v0, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastId:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 639
    :cond_5
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/client/QueryParams;->setMaxResults(Ljava/lang/String;)V

    .line 641
    const/16 v16, 0x0

    .line 642
    .local v16, "lastId":Ljava/lang/String;
    const/16 v33, 0x0

    .line 643
    .local v33, "numResults":I
    const/16 v35, 0x0

    .line 644
    .local v35, "parser":Lcom/google/wireless/gdata/parser/GDataParser;
    const/16 v29, 0x0

    .line 646
    .local v29, "feedUrlToQuery":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v9}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 647
    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/wireless/gdata/client/QueryParams;->generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v29

    .line 650
    :try_start_1
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, v29

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    :try_start_2
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 657
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getParserForFeed(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/wireless/gdata/parser/GDataParser;

    move-result-object v35

    .line 660
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 661
    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->init()Lcom/google/wireless/gdata/data/Feed;

    move-result-object v4

    .line 662
    .local v4, "feed":Lcom/google/wireless/gdata/data/Feed;
    invoke-virtual {v4}, Lcom/google/wireless/gdata/data/Feed;->getLastUpdated()Ljava/lang/String;

    move-result-object v26

    .line 664
    .local v26, "feedUpdateDate":Ljava/lang/String;
    const/4 v6, 0x0

    .line 665
    .local v6, "entry":Lcom/google/wireless/gdata/data/Entry;
    move-wide/from16 v23, v31

    .line 666
    .local v23, "entryLastUpdated":J
    :goto_1
    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->hasMoreData()Z

    move-result v3

    if-eqz v3, :cond_e

    move/from16 v0, v33

    move/from16 v1, p5

    if-ge v0, v1, :cond_e

    .line 667
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z
    :try_end_2
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_7

    .line 821
    if-eqz v35, :cond_0

    .end local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .end local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .end local v23    # "entryLastUpdated":J
    .end local v26    # "feedUpdateDate":Ljava/lang/String;
    :goto_2
    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    goto/16 :goto_0

    .line 651
    :catch_0
    move-exception v22

    .line 652
    .local v22, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the feed url "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is not a valid URI"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v3, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J

    .line 821
    if-eqz v35, :cond_0

    goto :goto_2

    .line 668
    .end local v22    # "e":Ljava/net/URISyntaxException;
    .restart local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .restart local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .restart local v23    # "entryLastUpdated":J
    .restart local v26    # "feedUpdateDate":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I
    :try_end_3
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    add-int/lit8 v33, v33, 0x1

    .line 671
    :try_start_4
    move-object/from16 v0, v35

    invoke-interface {v0, v6}, Lcom/google/wireless/gdata/parser/GDataParser;->readNextEntry(Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;
    :try_end_4
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 678
    :try_start_5
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 679
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read entry: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_8
    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v16

    .line 685
    const/4 v3, 0x1

    move/from16 v0, v33

    if-ne v0, v3, :cond_9

    if-eqz v25, :cond_9

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 693
    const/4 v3, 0x0

    iput-boolean v3, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    .line 694
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    .line 821
    if-eqz v35, :cond_0

    goto/16 :goto_2

    .line 672
    :catch_1
    move-exception v22

    .line 673
    .local v22, "e":Lcom/google/wireless/gdata/parser/ParseException;
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    .line 674
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error while parsing entry from account "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", skipping"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 786
    .end local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .end local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .end local v22    # "e":Lcom/google/wireless/gdata/parser/ParseException;
    .end local v23    # "entryLastUpdated":J
    .end local v26    # "feedUpdateDate":Ljava/lang/String;
    :catch_2
    move-exception v36

    .line 787
    .local v36, "pe":Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_6
    const-string v3, "Sync"

    const-string v5, "Unable to process gdata feed"

    move-object/from16 v0, v36

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 788
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 821
    if-eqz v35, :cond_0

    goto/16 :goto_2

    .line 699
    .end local v36    # "pe":Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .restart local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .restart local v23    # "entryLastUpdated":J
    .restart local v26    # "feedUpdateDate":Ljava/lang/String;
    :cond_9
    :try_start_7
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 700
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getServerDiffs: updating provider with entry "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v21

    .line 705
    .local v21, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 706
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "we should not be in a transaction"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 789
    .end local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .end local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v23    # "entryLastUpdated":J
    .end local v26    # "feedUpdateDate":Ljava/lang/String;
    :catch_3
    move-exception v30

    .line 791
    .local v30, "ioe":Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 821
    if-eqz v35, :cond_0

    goto/16 :goto_2

    .line 708
    .end local v30    # "ioe":Ljava/io/IOException;
    .restart local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .restart local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23    # "entryLastUpdated":J
    .restart local v26    # "feedUpdateDate":Ljava/lang/String;
    :cond_b
    :try_start_9
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 710
    const/4 v5, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    :try_start_a
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 713
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numEntries:J

    .line 715
    invoke-virtual {v6}, Lcom/google/wireless/gdata/data/Entry;->getUpdateDate()Ljava/lang/String;

    move-result-object v39

    .line 716
    .local v39, "updateDate":Ljava/lang/String;
    if-eqz v39, :cond_c

    .line 717
    invoke-virtual/range {v38 .. v39}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 718
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v40

    .line 719
    .local v40, "updated":J
    cmp-long v3, v40, v23

    if-lez v3, :cond_c

    .line 720
    move-wide/from16 v23, v40

    .line 723
    .end local v40    # "updated":J
    :cond_c
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 731
    :try_start_b
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 792
    .end local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .end local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v23    # "entryLastUpdated":J
    .end local v26    # "feedUpdateDate":Ljava/lang/String;
    .end local v39    # "updateDate":Ljava/lang/String;
    :catch_4
    move-exception v22

    .line 793
    .local v22, "e":Lcom/google/wireless/gdata/client/HttpException;
    :try_start_c
    invoke-virtual/range {v22 .. v22}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 817
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 821
    :goto_3
    if-eqz v35, :cond_0

    goto/16 :goto_2

    .line 724
    .end local v22    # "e":Lcom/google/wireless/gdata/client/HttpException;
    .restart local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .restart local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23    # "entryLastUpdated":J
    .restart local v26    # "feedUpdateDate":Ljava/lang/String;
    :catch_5
    move-exception v22

    .line 726
    .local v22, "e":Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_d
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 731
    :try_start_e
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 821
    .end local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .end local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v22    # "e":Lcom/google/wireless/gdata/parser/ParseException;
    .end local v23    # "entryLastUpdated":J
    .end local v26    # "feedUpdateDate":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v35, :cond_d

    invoke-interface/range {v35 .. v35}, Lcom/google/wireless/gdata/parser/GDataParser;->close()V

    :cond_d
    throw v3

    .line 727
    .restart local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .restart local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .restart local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v23    # "entryLastUpdated":J
    .restart local v26    # "feedUpdateDate":Ljava/lang/String;
    :catch_6
    move-exception v22

    .line 729
    .local v22, "e":Ljava/lang/RuntimeException;
    :try_start_f
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v11, 0x1

    add-long/2addr v7, v11

    iput-wide v7, v3, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 731
    :try_start_10
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .end local v22    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 738
    .end local v21    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_e
    if-nez v26, :cond_11

    .line 739
    const-wide/16 v23, 0x0

    .line 759
    :goto_4
    move/from16 v0, v33

    move/from16 v1, p5

    if-ne v0, v1, :cond_13

    const/4 v15, 0x1

    .line 760
    .local v15, "moreRecordsToGet":Z
    :goto_5
    new-instance v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    if-eqz v15, :cond_14

    move-wide/from16 v11, v31

    :goto_6
    move/from16 v0, v33

    int-to-long v13, v0

    add-int v3, v37, v33

    add-int/lit8 v17, v3, -0x1

    invoke-direct/range {v10 .. v17}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;-><init>(JJZLjava/lang/String;I)V

    .line 765
    .local v10, "newFeedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    if-eqz v9, :cond_f

    .line 766
    if-nez v15, :cond_15

    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    const-wide/16 v11, 0x0

    cmp-long v3, v7, v11

    if-lez v3, :cond_15

    .line 768
    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 769
    const-wide/16 v7, 0x0

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    .line 773
    move-wide/from16 v0, v31

    iput-wide v0, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->lastUpdatedTime:J

    .line 780
    :cond_f
    :goto_7
    iget-boolean v3, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->hasMoreEntriesToFetch:Z

    move-object/from16 v0, p7

    iput-boolean v3, v0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    .line 781
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    move-object/from16 v0, p3

    invoke-interface {v3, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string v3, "Sync"

    const/4 v5, 0x2

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 783
    const-string v3, "Sync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This call to getServerDiffsImpl for feed "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is returning "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_10
    if-eqz v35, :cond_0

    goto/16 :goto_2

    .line 743
    .end local v10    # "newFeedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v15    # "moreRecordsToGet":Z
    :cond_11
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 744
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v27

    .line 745
    .local v27, "feedUpdateMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 746
    .local v19, "currentMillis":J
    const-wide/32 v7, 0x493e0

    add-long v7, v7, v27

    cmp-long v3, v7, v19

    if-gez v3, :cond_12

    .line 754
    const-wide/16 v7, 0x3e8

    add-long v27, v27, v7

    .line 756
    :cond_12
    move-wide/from16 v23, v27

    goto/16 :goto_4

    .line 759
    .end local v19    # "currentMillis":J
    .end local v27    # "feedUpdateMillis":J
    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_5

    .restart local v15    # "moreRecordsToGet":Z
    :cond_14
    move-wide/from16 v11, v23

    .line 760
    goto/16 :goto_6

    .line 776
    .restart local v10    # "newFeedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    :cond_15
    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->windowEnd:J

    .line 777
    iget-wide v7, v9, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J

    iput-wide v7, v10, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;->newWindowEnd:J
    :try_end_10
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    .line 796
    .end local v4    # "feed":Lcom/google/wireless/gdata/data/Feed;
    .end local v6    # "entry":Lcom/google/wireless/gdata/data/Entry;
    .end local v10    # "newFeedSyncData":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;
    .end local v15    # "moreRecordsToGet":Z
    .end local v23    # "entryLastUpdated":J
    .end local v26    # "feedUpdateDate":Ljava/lang/String;
    .local v22, "e":Lcom/google/wireless/gdata/client/HttpException;
    :sswitch_0
    :try_start_11
    move-object/from16 v0, p7

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthTokenWithStats(Landroid/content/SyncStats;)Z

    goto/16 :goto_3

    .line 800
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 805
    invoke-virtual/range {p0 .. p7}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getServerDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;ILcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Landroid/content/SyncResult;)V

    goto/16 :goto_3

    .line 812
    :cond_16
    const/4 v3, 0x1

    move-object/from16 v0, p7

    iput-boolean v3, v0, Landroid/content/SyncResult;->partialSyncUnavailable:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_3

    .line 793
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_0
        0x19a -> :sswitch_1
    .end sparse-switch
.end method

.method protected getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "result"    # Landroid/content/SyncResult;

    .prologue
    const-wide/16 v3, 0x0

    .line 123
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    if-lez v0, :cond_0

    .line 124
    const-string v0, "Q"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    if-lez v0, :cond_1

    .line 127
    const-string v0, "E"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 129
    :cond_1
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 130
    const-string v0, "u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numUpdates:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 132
    :cond_2
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_3

    .line 133
    const-string v0, "i"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numInserts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 135
    :cond_3
    iget-object v0, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_4

    .line 136
    const-string v0, "d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v1, Landroid/content/SyncStats;->numDeletes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 138
    :cond_4
    invoke-virtual {p2}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    return-void
.end method

.method protected abstract handleAllDeletedUnavailable(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;Ljava/lang/String;)Z
.end method

.method protected invalidateAndUpdateAuthToken()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 1163
    return-void
.end method

.method protected invalidateAndUpdateAuthTokenWithStats(Landroid/content/SyncStats;)Z
    .locals 6
    .param p1, "stats"    # Landroid/content/SyncStats;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x1

    .line 1136
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthToken()V

    .line 1137
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1138
    iget-wide v2, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    .line 1140
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 1150
    :cond_1
    :goto_0
    return v1

    .line 1142
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e1":Ljava/io/IOException;
    iget-wide v2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 1144
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1145
    .local v0, "e1":Landroid/accounts/AuthenticatorException;
    iget-wide v2, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    .line 1146
    .end local v0    # "e1":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 1147
    .local v0, "e1":Landroid/accounts/OperationCanceledException;
    iget-wide v2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract newEntry()Lcom/google/wireless/gdata/data/Entry;
.end method

.method public newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 1

    .prologue
    .line 494
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    invoke-direct {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newSyncData()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method protected onLogSyncDetails(JJLandroid/content/SyncResult;)V
    .locals 5
    .param p1, "bytesSent"    # J
    .param p3, "bytesReceived"    # J
    .param p5, "result"    # Landroid/content/SyncResult;

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0, v0, p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getStatsString(Ljava/lang/StringBuffer;Landroid/content/SyncResult;)V

    .line 114
    const v1, 0x318f9

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 117
    return-void
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 560
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 561
    return-void
.end method

.method public onSyncEnding(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 1213
    return-void
.end method

.method public onSyncStarting(Landroid/accounts/Account;ZLandroid/content/SyncResult;)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "manualSync"    # Z
    .param p3, "result"    # Landroid/content/SyncResult;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v5, 0x1

    .line 1220
    iput-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    .line 1221
    iput v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerQueries:I

    .line 1222
    iput v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mServerEntries:I

    .line 1226
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 1228
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    .line 1230
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->getServiceName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    .line 1232
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1233
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0

    .line 1237
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1238
    .local v0, "e":Landroid/accounts/AuthenticatorException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto :goto_0

    .line 1239
    .end local v0    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v0

    .line 1240
    .local v0, "e":Landroid/accounts/OperationCanceledException;
    iget-object v1, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v5

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_0
.end method

.method public readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    .locals 7
    .param p1, "contentProvider"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .prologue
    const/4 v2, 0x0

    .line 479
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v4, v0

    move-object v0, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 483
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 487
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 489
    :goto_0
    return-object v0

    .line 487
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 489
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newSyncData()Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .locals 1
    .param p1, "x0"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->readSyncData(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v0

    return-object v0
.end method

.method public sendClientDiffs(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .locals 7
    .param p1, "clientDiffs"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .param p2, "serverDiffs"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .param p3, "syncResult"    # Landroid/content/SyncResult;
    .param p4, "dontSendDeletes"    # Z

    .prologue
    .line 856
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->initTempProvider(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V

    .line 857
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->createSyncInfo()Ljava/lang/Object;

    move-result-object v3

    .line 858
    .local v3, "syncInfo":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newEntry()Lcom/google/wireless/gdata/data/Entry;

    move-result-object v2

    .local v2, "entry":Lcom/google/wireless/gdata/data/Entry;
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .line 859
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V

    .line 861
    return-void
.end method

.method protected sendClientDiffsImpl(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Landroid/content/SyncResult;Z)V
    .locals 20
    .param p1, "clientDiffs"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .param p2, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .param p3, "syncInfo"    # Ljava/lang/Object;
    .param p4, "serverDiffs"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .param p5, "syncResult"    # Landroid/content/SyncResult;
    .param p6, "dontSendDeletes"    # Z

    .prologue
    .line 880
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    if-nez v3, :cond_0

    .line 881
    const-string v3, "Sync"

    const-string v4, "no username, so skipping the merge"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_0
    return-void

    .line 892
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForDeletedTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v15

    .line 894
    .local v15, "c":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 896
    .local v5, "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    :try_start_0
    const-string v3, "_sync_local_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 897
    .local v19, "syncLocalIDColumn":I
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v18

    .local v18, "numRows":I
    move-object/from16 v17, v5

    .end local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .local v17, "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    :goto_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 898
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v3, :cond_4

    .line 899
    const-string v3, "Sync"

    const-string v4, "stopping since the sync was cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 927
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 934
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getCursorForTable(Landroid/content/ContentProvider;Ljava/lang/Class;)Landroid/database/Cursor;

    move-result-object v15

    .line 936
    :try_start_2
    const-string v3, "_sync_local_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 937
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v18

    move-object/from16 v5, v17

    .line 938
    .end local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    :cond_2
    :goto_2
    :try_start_3
    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->madeSomeProgress()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 939
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mSyncCanceled:Z

    if-eqz v3, :cond_6

    .line 940
    const-string v3, "Sync"

    const-string v4, "stopping since the sync was cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 977
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    goto :goto_0

    .line 902
    .end local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    :cond_4
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 904
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->deletedCursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;)V
    :try_end_5
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 914
    const/4 v3, 0x1

    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 915
    if-nez p6, :cond_5

    .line 916
    sget-object v4, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v5

    .line 921
    .end local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    :goto_3
    if-eqz v5, :cond_8

    .line 922
    :try_start_7
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v17, v5

    .end local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_1

    .line 905
    :catch_0
    move-exception v16

    .line 910
    .local v16, "e":Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_8
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 927
    .end local v16    # "e":Lcom/google/wireless/gdata/parser/ParseException;
    :catchall_0
    move-exception v3

    move-object/from16 v5, v17

    .end local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .end local v18    # "numRows":I
    .end local v19    # "syncLocalIDColumn":I
    .restart local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    :goto_4
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v3

    .line 919
    .end local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v18    # "numRows":I
    .restart local v19    # "syncLocalIDColumn":I
    :cond_5
    move-object/from16 v5, p2

    .end local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    goto :goto_3

    .line 944
    :cond_6
    :try_start_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->clear()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 950
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->cursorToEntry(Landroid/database/Cursor;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 951
    .local v8, "targetUrl":Ljava/lang/String;
    if-nez v8, :cond_7

    .line 952
    invoke-virtual/range {p2 .. p2}, Lcom/google/wireless/gdata/data/Entry;->getEditUri()Ljava/lang/String;

    move-result-object v8

    .line 953
    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_a
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 969
    .local v7, "op":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :goto_5
    const/4 v11, 0x1

    move-object/from16 v6, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    :try_start_b
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v5

    .line 971
    if-eqz v5, :cond_2

    .line 972
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v9, p0

    move-object/from16 v10, p4

    move-object v11, v5

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 977
    .end local v7    # "op":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v8    # "targetUrl":Ljava/lang/String;
    :catchall_1
    move-exception v3

    :goto_6
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    throw v3

    .line 955
    .restart local v8    # "targetUrl":Ljava/lang/String;
    :cond_7
    :try_start_c
    sget-object v7, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    :try_end_c
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .restart local v7    # "op":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    goto :goto_5

    .line 957
    .end local v7    # "op":Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .end local v8    # "targetUrl":Ljava/lang/String;
    :catch_1
    move-exception v16

    .line 958
    .restart local v16    # "e":Lcom/google/wireless/gdata/parser/ParseException;
    :try_start_d
    const-string v3, "skip"

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/gdata/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 961
    const-string v3, "Sync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to convert row to an Entry, skipping. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "_id"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 963
    move-object/from16 v0, p5

    iget-object v3, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v3, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .line 977
    .end local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .end local v16    # "e":Lcom/google/wireless/gdata/parser/ParseException;
    .restart local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    :catchall_2
    move-exception v3

    move-object/from16 v5, v17

    .end local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    goto :goto_6

    .line 927
    .end local v18    # "numRows":I
    .end local v19    # "syncLocalIDColumn":I
    :catchall_3
    move-exception v3

    goto/16 :goto_4

    .restart local v18    # "numRows":I
    .restart local v19    # "syncLocalIDColumn":I
    :cond_8
    move-object/from16 v17, v5

    .end local v5    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    .restart local v17    # "entryToSave":Lcom/google/wireless/gdata/data/Entry;
    goto/16 :goto_1
.end method

.method public sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;
    .locals 8
    .param p1, "op"    # Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;
    .param p2, "targetUrl"    # Ljava/lang/String;
    .param p3, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .param p4, "syncResult"    # Landroid/content/SyncResult;
    .param p5, "retryAuthentication"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x1

    .line 1003
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$1;->$SwitchMap$com$google$android$gsf$subscribedfeeds$AbstractGDataSyncAdapter$ClientDiffType:[I

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    move-object v0, p3

    .line 1129
    :cond_0
    :goto_1
    return-object v0

    .line 1005
    :pswitch_0
    const-string v1, "Sync"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1006
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_1
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1009
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "entry is marked as deleted but op is UPDATE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1038
    :catch_0
    move-exception v6

    .line 1039
    .local v6, "e":Lcom/google/wireless/gdata/parser/ParseException;
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse error during "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", skipping"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1040
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numParseExceptions:J

    goto :goto_1

    .line 1012
    .end local v6    # "e":Lcom/google/wireless/gdata/parser/ParseException;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p3, v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->updateEntry(Lcom/google/wireless/gdata/data/Entry;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1013
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numUpdates:J
    :try_end_1
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 1042
    :catch_1
    move-exception v6

    .line 1047
    .local v6, "e":Ljava/io/IOException;
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto :goto_1

    .line 1017
    .end local v6    # "e":Ljava/io/IOException;
    :pswitch_1
    :try_start_2
    const-string v1, "Sync"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1018
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserting entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_3
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1021
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "entry is marked as deleted but op is INSERT"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1049
    :catch_2
    move-exception v6

    .line 1050
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v1, "Sync"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "object "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caught an exception during "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numSkippedEntries:J

    goto/16 :goto_1

    .line 1024
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, p3}, Lcom/google/wireless/gdata/client/GDataServiceClient;->createEntry(Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1025
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numInserts:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numInserts:J
    :try_end_3
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 1054
    :catch_3
    move-exception v6

    .line 1055
    .local v6, "e":Lcom/google/wireless/gdata/client/HttpException;
    invoke-virtual {v6}, Lcom/google/wireless/gdata/client/HttpException;->getStatusCode()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 1128
    :pswitch_2
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_1

    .line 1029
    .end local v6    # "e":Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_3
    :try_start_4
    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->isDeleted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1030
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "entry is not marked as deleted but op is DELETE"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1033
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getGDataServiceClient()Lcom/google/wireless/gdata/client/GDataServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v1, p2, v2}, Lcom/google/wireless/gdata/client/GDataServiceClient;->deleteEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numDeletes:J
    :try_end_4
    .catch Lcom/google/wireless/gdata/parser/ParseException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/google/wireless/gdata/client/HttpException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 1058
    .restart local v6    # "e":Lcom/google/wireless/gdata/client/HttpException;
    :pswitch_4
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v1, :cond_8

    .line 1060
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/wireless/gdata/data/Entry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1061
    if-nez p3, :cond_6

    .line 1062
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    goto/16 :goto_1

    .line 1065
    :cond_6
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    :cond_7
    :goto_2
    move-object v0, p3

    .line 1073
    goto/16 :goto_1

    .line 1066
    :cond_8
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_9

    .line 1068
    invoke-virtual {p3, v7}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1069
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_2

    .line 1070
    :cond_9
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->DELETE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_7

    .line 1071
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    goto :goto_2

    .line 1076
    :pswitch_5
    sget-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->UPDATE:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v0, :cond_a

    .line 1077
    invoke-virtual {p3, v7}, Lcom/google/wireless/gdata/data/Entry;->setDeleted(Z)V

    .line 1079
    :cond_a
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    move-object v0, p3

    .line 1080
    goto/16 :goto_1

    .line 1085
    :pswitch_6
    if-eqz p5, :cond_b

    .line 1086
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->invalidateAndUpdateAuthTokenWithStats(Landroid/content/SyncStats;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1087
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->sendSingleClientDiff(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;Ljava/lang/String;Lcom/google/wireless/gdata/data/Entry;Landroid/content/SyncResult;Z)Lcom/google/wireless/gdata/data/Entry;

    move-result-object v0

    goto/16 :goto_1

    .line 1093
    :cond_b
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numAuthExceptions:J

    goto/16 :goto_1

    .line 1098
    :pswitch_7
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;->INSERT:Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$ClientDiffType;

    if-ne p1, v1, :cond_c

    .line 1100
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    goto/16 :goto_1

    .line 1111
    :cond_c
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->getSingleEntry(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/wireless/gdata/data/Entry;

    move-result-object p3

    .line 1112
    if-nez p3, :cond_d

    .line 1117
    iget-object v1, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    goto/16 :goto_1

    .line 1120
    :cond_d
    iget-object v0, p4, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    add-long/2addr v1, v4

    iput-wide v1, v0, Landroid/content/SyncStats;->numUpdates:J

    move-object v0, p3

    .line 1121
    goto/16 :goto_1

    .line 1003
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1055
    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_4
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
    .end packed-switch
.end method

.method protected abstract updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata/parser/ParseException;
        }
    .end annotation
.end method

.method updateProviderInTransaction(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/wireless/gdata/data/Entry;Ljava/lang/Long;Ljava/lang/Object;Landroid/content/SyncResult;)V
    .locals 9
    .param p1, "provider"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .param p2, "entry"    # Lcom/google/wireless/gdata/data/Entry;
    .param p3, "syncLocalId"    # Ljava/lang/Long;
    .param p4, "syncInfo"    # Ljava/lang/Object;
    .param p5, "syncResult"    # Landroid/content/SyncResult;

    .prologue
    .line 1173
    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1174
    .local v7, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1176
    :try_start_0
    const-string v0, "Sync"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1177
    const-string v0, "Sync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendClientDiffs: updating provider with entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->updateProvider(Lcom/google/wireless/gdata/data/Feed;Ljava/lang/Long;Lcom/google/wireless/gdata/data/Entry;Landroid/content/ContentProvider;Ljava/lang/Object;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V

    .line 1181
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    :goto_0
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1188
    return-void

    .line 1182
    :catch_0
    move-exception v8

    .line 1184
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v0, p5, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/content/SyncStats;->numSkippedEntries:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1186
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method protected updateQueryParameters(Lcom/google/wireless/gdata/client/QueryParams;Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;)V
    .locals 0
    .param p1, "params"    # Lcom/google/wireless/gdata/client/QueryParams;
    .param p2, "feedSyncData"    # Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData$FeedData;

    .prologue
    .line 395
    return-void
.end method

.method public writeSyncData(Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    .locals 6
    .param p1, "syncData"    # Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    .param p2, "contentProvider"    # Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .prologue
    .line 503
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v2, v3}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 506
    if-nez p1, :cond_0

    .line 507
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 508
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "data"

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 519
    .end local p1    # "syncData":Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    :goto_0
    return-void

    .line 514
    .end local v0    # "values":Landroid/content/ContentValues;
    .restart local p1    # "syncData":Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 515
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "data"

    check-cast p1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;

    .end local p1    # "syncData":Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter$SyncData;
    invoke-static {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->newBytesFromGDataSyncData(Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter$GDataSyncData;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 516
    const-string v1, "_sync_account"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    const-string v1, "_sync_account_type"

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-object v1, Lcom/google/android/gsf/subscribedfeeds/AbstractGDataSyncAdapter;->SYNC_STATE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v1, v0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method
