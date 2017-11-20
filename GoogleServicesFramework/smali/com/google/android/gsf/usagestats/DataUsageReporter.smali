.class public Lcom/google/android/gsf/usagestats/DataUsageReporter;
.super Ljava/lang/Object;
.source "DataUsageReporter.java"


# instance fields
.field private final mConnManager:Landroid/net/ConnectivityManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTeleManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mConnManager:Landroid/net/ConnectivityManager;

    .line 62
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 63
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    .line 65
    return-void
.end method

.method private buildNetworkStats(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IJJLandroid/util/SparseBooleanArray;Z)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    .locals 28
    .param p1, "session"    # Landroid/net/INetworkStatsSession;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "type"    # I
    .param p4, "start"    # J
    .param p6, "end"    # J
    .param p8, "knownUidsOut"    # Landroid/util/SparseBooleanArray;
    .param p9, "uploadAllStats"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v20, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;-><init>()V

    .line 141
    .local v20, "network":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;
    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->setType(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 143
    const/4 v3, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v3}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v17

    .line 144
    .local v17, "history":Landroid/net/NetworkStatsHistory;
    const/16 v16, 0x0

    .line 145
    .local v16, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    .line 147
    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v16

    .line 148
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-object/from16 v0, v16

    iget-wide v8, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v13, v3, v8

    .line 149
    .local v13, "bucketEnd":J
    cmp-long v3, v13, p4

    if-lez v3, :cond_0

    cmp-long v3, v13, p6

    if-gtz v3, :cond_0

    .line 150
    new-instance v19, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;-><init>()V

    .line 152
    .local v19, "ipBucket":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 153
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 154
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->setNetworkActiveDuration(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 157
    new-instance v27, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v27 .. v27}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 158
    .local v27, "totalTxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 159
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 160
    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 161
    new-instance v26, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct/range {v26 .. v26}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 162
    .local v26, "totalTxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 163
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 164
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 167
    new-instance v25, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v25 .. v25}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 168
    .local v25, "totalRxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 169
    const/4 v3, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 170
    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 171
    new-instance v24, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct/range {v24 .. v24}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 172
    .local v24, "totalRxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 173
    move-object/from16 v0, v16

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 174
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 176
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 177
    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;

    .line 179
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerNetworkBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 145
    .end local v19    # "ipBucket":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkBucket;
    .end local v24    # "totalRxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v25    # "totalRxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v26    # "totalTxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v27    # "totalTxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    :cond_0
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 185
    .end local v13    # "bucketEnd":J
    :cond_1
    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    :try_start_0
    invoke-interface/range {v3 .. v9}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 190
    .local v22, "stats":Landroid/net/NetworkStats;
    const/16 v23, 0x0

    .line 191
    .local v23, "statsEntry":Landroid/net/NetworkStats$Entry;
    const/16 v18, 0x0

    :goto_1
    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkStats;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_3

    .line 192
    move-object/from16 v0, v22

    move/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v23

    .line 193
    move-object/from16 v0, v23

    iget v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 194
    .local v6, "uid":I
    move-object/from16 v0, v23

    iget v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 195
    .local v7, "tag":I
    if-nez p9, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->uploadStatsForUid(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 191
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 186
    .end local v6    # "uid":I
    .end local v7    # "tag":I
    .end local v22    # "stats":Landroid/net/NetworkStats;
    .end local v23    # "statsEntry":Landroid/net/NetworkStats$Entry;
    :catch_0
    move-exception v15

    .line 214
    :cond_3
    return-object v20

    .line 199
    .restart local v6    # "uid":I
    .restart local v7    # "tag":I
    .restart local v22    # "stats":Landroid/net/NetworkStats;
    .restart local v23    # "statsEntry":Landroid/net/NetworkStats$Entry;
    :cond_4
    const/4 v3, 0x1

    move-object/from16 v0, p8

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 204
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildUidTagStats(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IIIJJ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    move-result-object v21

    .line 205
    .local v21, "stat":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    if-eqz v21, :cond_5

    .line 206
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    .line 209
    :cond_5
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v9, p4

    move-wide/from16 v11, p6

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildUidTagStats(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IIIJJ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    move-result-object v21

    .line 210
    if-eqz v21, :cond_2

    .line 211
    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;->addIpLayerAppStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    goto :goto_2
.end method

.method public static buildReport(Landroid/content/Context;JZ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sinceTime"    # J
    .param p3, "uploadAllStats"    # Z

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/usagestats/DataUsageReporter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildReport(JZ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    move-result-object v0

    return-object v0
.end method

.method private buildUidMapping(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    .locals 11
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v4, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    invoke-direct {v4}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;-><init>()V

    .line 309
    .local v4, "mapping":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;
    invoke-virtual {v4, p1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 311
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v8

    .line 312
    .local v8, "uidName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 313
    invoke-virtual {v4, v8}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->setUidName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 316
    :cond_0
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "packageNames":[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 318
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v0, v1

    .line 319
    .local v6, "packageName":Ljava/lang/String;
    new-instance v2, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    invoke-direct {v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;-><init>()V

    .line 320
    .local v2, "info":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 322
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {v2, v6}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->setPkgName(Ljava/lang/String;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 323
    iget v9, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v9}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;->setVersionCode(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;

    .line 324
    invoke-virtual {v4, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;->addSharedPackageList(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$PackageInfo;
    .end local v3    # "len$":I
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private buildUidTagStats(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IIIJJ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    .locals 20
    .param p1, "session"    # Landroid/net/INetworkStatsSession;
    .param p2, "template"    # Landroid/net/NetworkTemplate;
    .param p3, "uid"    # I
    .param p4, "tag"    # I
    .param p5, "fg_bg"    # I
    .param p6, "start"    # J
    .param p8, "end"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v14, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    invoke-direct {v14}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;-><init>()V

    .line 224
    .local v14, "stat":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    const/4 v13, 0x1

    .line 225
    .local v13, "isEmpty":Z
    move/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->setPackageKey(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 226
    move/from16 v0, p4

    invoke-virtual {v14, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->setApplicationTag(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 228
    const/4 v7, -0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v11

    .line 231
    .local v11, "history":Landroid/net/NetworkStatsHistory;
    const/4 v10, 0x0

    .line 232
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v11}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 234
    invoke-virtual {v11, v12, v10}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 235
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long v8, v2, v4

    .line 236
    .local v8, "bucketEnd":J
    cmp-long v2, v8, p6

    if-lez v2, :cond_0

    cmp-long v2, v8, p8

    if-gtz v2, :cond_0

    .line 237
    const/4 v13, 0x0

    .line 238
    new-instance v19, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;-><init>()V

    .line 239
    .local v19, "uidBucket":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setBucketStartMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 240
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setBucketDurationMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 241
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->setOperationCount(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 244
    new-instance v18, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 245
    .local v18, "totalTxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 246
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 247
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    const/4 v2, 0x2

    :goto_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 249
    new-instance v17, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 250
    .local v17, "totalTxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 251
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 252
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 255
    new-instance v16, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;-><init>()V

    .line 256
    .local v16, "totalRxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setNetworkProto(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 257
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setDirection(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 258
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    const/4 v2, 0x2

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setFgBg(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 260
    new-instance v15, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    invoke-direct {v15}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;-><init>()V

    .line 261
    .local v15, "totalRxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v15, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setBytes(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 262
    iget-wide v2, v10, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v15, v2, v3}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;->setPackets(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;

    .line 263
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;->setCounterData(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;

    .line 265
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 266
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;->addStatCounters(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;

    .line 268
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;->addIpLayerAppBucket(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;

    .line 232
    .end local v15    # "totalRxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v16    # "totalRxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v17    # "totalTxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v18    # "totalTxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v19    # "uidBucket":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 247
    .restart local v18    # "totalTxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .restart local v19    # "uidBucket":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 258
    .restart local v16    # "totalRxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .restart local v17    # "totalTxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 272
    .end local v8    # "bucketEnd":J
    .end local v16    # "totalRxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v17    # "totalTxCounterData":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$CounterData;
    .end local v18    # "totalTxStats":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$StatCounters;
    .end local v19    # "uidBucket":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AppBucket;
    :cond_3
    if-nez v13, :cond_4

    .end local v14    # "stat":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :goto_3
    return-object v14

    .restart local v14    # "stat":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerAppStat;
    :cond_4
    const/4 v14, 0x0

    goto :goto_3
.end method

.method private uploadStatsForUid(I)Z
    .locals 11
    .param p1, "uid"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 277
    const/16 v9, 0x2710

    if-ge p1, v9, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v7

    .line 282
    :cond_1
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "packageNames":[Ljava/lang/String;
    if-nez v6, :cond_2

    move v7, v8

    .line 284
    goto :goto_0

    .line 288
    :cond_2
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 289
    .local v5, "packageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "installerName":Ljava/lang/String;
    const-string v9, "com.google.android.feedback"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "com.google."

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "com.android."

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_0

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 300
    .end local v2    # "i$":I
    .end local v3    # "installerName":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "DataUsageReporter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "problem resolving package details for UID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    move v7, v8

    .line 304
    goto :goto_0
.end method


# virtual methods
.method public buildReport(JZ)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    .locals 20
    .param p1, "sinceTime"    # J
    .param p3, "uploadAllStats"    # Z

    .prologue
    .line 77
    new-instance v17, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;-><init>()V

    .line 78
    .local v17, "statReport":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;
    new-instance v12, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    invoke-direct {v12}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;-><init>()V

    .line 82
    .local v12, "duReport":Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 85
    :goto_0
    move-wide/from16 v6, p1

    .line 86
    .local v6, "start":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 88
    .local v8, "end":J
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->setVersion(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 89
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->setCurrentReportMsec(J)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 91
    const/4 v3, 0x0

    .line 93
    .local v3, "session":Landroid/net/INetworkStatsSession;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    .line 95
    new-instance v10, Landroid/util/SparseBooleanArray;

    invoke-direct {v10}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 100
    .local v10, "knownUids":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    const/4 v14, 0x1

    .line 102
    .local v14, "hasReadyMobile":Z
    :goto_1
    if-eqz v14, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v18

    .line 104
    .local v18, "subscriberId":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v2, p0

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildNetworkStats(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IJJLandroid/util/SparseBooleanArray;Z)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addIpLayerNetworkStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 109
    .end local v18    # "subscriberId":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gsf/usagestats/DataUsageReporter;->mConnManager:Landroid/net/ConnectivityManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v15

    .line 110
    .local v15, "hasWifi":Z
    if-eqz v15, :cond_1

    .line 111
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v2, p0

    move/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildNetworkStats(Landroid/net/INetworkStatsSession;Landroid/net/NetworkTemplate;IJJLandroid/util/SparseBooleanArray;Z)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addIpLayerNetworkStat(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$IpLayerNetworkStat;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;

    .line 117
    :cond_1
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    invoke-virtual {v10}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 118
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v19

    .line 119
    .local v19, "uid":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/gsf/usagestats/DataUsageReporter;->buildUidMapping(I)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;->addKeyToPackageNameMapping(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$KeyToPackageNameMapping;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 100
    .end local v14    # "hasReadyMobile":Z
    .end local v15    # "hasWifi":Z
    .end local v16    # "i":I
    .end local v19    # "uid":I
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 126
    .restart local v14    # "hasReadyMobile":Z
    .restart local v15    # "hasWifi":Z
    .restart local v16    # "i":I
    :cond_3
    invoke-static {v3}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 129
    .end local v10    # "knownUids":Landroid/util/SparseBooleanArray;
    .end local v14    # "hasReadyMobile":Z
    .end local v15    # "hasWifi":Z
    .end local v16    # "i":I
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;->setDataUsage(Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$AndroidDataUsageProto;)Lcom/google/android/gsf/usagestats/proto/UsageStatsProto$UsageStatsExtensionProto;

    .line 130
    return-object v17

    .line 121
    :catch_0
    move-exception v13

    .line 122
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "DataUsageReporter"

    const-string v4, "problem reading stats"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    invoke-static {v3}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    goto :goto_3

    .line 123
    .end local v13    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v13

    .line 124
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v2, "DataUsageReporter"

    const-string v4, "problem reading package details"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    invoke-static {v3}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    goto :goto_3

    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v2

    invoke-static {v3}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    throw v2

    .line 83
    .end local v3    # "session":Landroid/net/INetworkStatsSession;
    .end local v6    # "start":J
    .end local v8    # "end":J
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method
