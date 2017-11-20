.class public Lcom/android/providers/settings/SettingsBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SettingsBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;,
        Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;,
        Lcom/android/providers/settings/SettingsBackupAgent$Network;
    }
.end annotation


# static fields
.field private static final EMPTY_DATA:[B

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final STATE_SIZES:[I

.field private static mWifiConfigFile:Ljava/lang/String;


# instance fields
.field private mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

.field private mWfm:Landroid/net/wifi/WifiManager;

.field mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    .line 100
    new-array v0, v2, [B

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B

    .line 107
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    return-void

    .line 87
    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/settings/SettingsBackupAgent;Z)I
    .locals 1
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/settings/SettingsBackupAgent;Ljava/lang/String;[BI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/providers/settings/SettingsBackupAgent;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .param p3, "x3"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    return-void
.end method

.method private copyWifiSupplicantTemplate(Ljava/io/BufferedWriter;)V
    .locals 6
    .param p1, "bw"    # Ljava/io/BufferedWriter;

    .prologue
    .line 918
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/system/etc/wifi/wpa_supplicant.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 919
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v4, 0x400

    new-array v3, v4, [C

    .line 921
    .local v3, "temp":[C
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    .local v2, "size":I
    if-lez v2, :cond_0

    .line 922
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/BufferedWriter;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "size":I
    .end local v3    # "temp":[C
    :catch_0
    move-exception v1

    .line 926
    .local v1, "ioe":Ljava/io/IOException;
    const-string v4, "SettingsBackupAgent"

    const-string v5, "Couldn\'t copy wpa_supplicant file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_1
    return-void

    .line 924
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "size":I
    .restart local v3    # "temp":[C
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private enableWifi(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 960
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 961
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    .line 963
    :cond_0
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 965
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWfm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 970
    .end local v0    # "state":I
    :goto_0
    return v0

    .line 968
    :cond_1
    const-string v1, "SettingsBackupAgent"

    const-string v2, "Failed to fetch WifiManager instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    .locals 19
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "settings"    # [Ljava/lang/String;

    .prologue
    .line 726
    move-object/from16 v0, p2

    array-length v12, v0

    .line 727
    .local v12, "settingsCount":I
    mul-int/lit8 v17, v12, 0x2

    move/from16 v0, v17

    new-array v0, v0, [[B

    move-object/from16 v16, v0

    .line 728
    .local v16, "values":[[B
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-nez v17, :cond_1

    .line 729
    const-string v17, "SettingsBackupAgent"

    const-string v18, "Couldn\'t read from the cursor"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v11, v0, [B

    .line 785
    :cond_0
    return-object v11

    .line 734
    :cond_1
    const/4 v13, 0x0

    .line 735
    .local v13, "totalSize":I
    const/4 v2, 0x0

    .line 736
    .local v2, "backedUpSettingIndex":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 737
    .local v3, "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v12, :cond_5

    .line 738
    aget-object v7, p2, v6

    .line 739
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 742
    .local v14, "value":Ljava/lang/String;
    if-nez v14, :cond_2

    .line 743
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v17

    if-nez v17, :cond_2

    .line 744
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, "cursorKey":Ljava/lang/String;
    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 746
    .local v5, "cursorValue":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 747
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 748
    move-object v14, v5

    .line 756
    .end local v4    # "cursorKey":Ljava/lang/String;
    .end local v5    # "cursorValue":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Lcom/android/providers/settings/SettingsHelper;->onBackupValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 758
    if-nez v14, :cond_4

    .line 737
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 751
    .restart local v4    # "cursorKey":Ljava/lang/String;
    .restart local v5    # "cursorValue":Ljava/lang/String;
    :cond_3
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 762
    .end local v4    # "cursorKey":Ljava/lang/String;
    .end local v5    # "cursorValue":Ljava/lang/String;
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 763
    .local v8, "keyBytes":[B
    array-length v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 764
    mul-int/lit8 v17, v2, 0x2

    aput-object v8, v16, v17

    .line 766
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 767
    .local v15, "valueBytes":[B
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x4

    add-int v13, v13, v17

    .line 768
    mul-int/lit8 v17, v2, 0x2

    add-int/lit8 v17, v17, 0x1

    aput-object v15, v16, v17

    .line 770
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 778
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keyBytes":[B
    .end local v14    # "value":Ljava/lang/String;
    .end local v15    # "valueBytes":[B
    :cond_5
    new-array v11, v13, [B

    .line 779
    .local v11, "result":[B
    const/4 v10, 0x0

    .line 780
    .local v10, "pos":I
    mul-int/lit8 v9, v2, 0x2

    .line 781
    .local v9, "keyValuePairCount":I
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v9, :cond_0

    .line 782
    aget-object v17, v16, v6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeInt([BII)I

    move-result v10

    .line 783
    aget-object v17, v16, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v10, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->writeBytes([BI[B)I

    move-result v10

    .line 781
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private getFileData(Ljava/lang/String;)[B
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 789
    const/4 v3, 0x0

    .line 791
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 792
    .local v1, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [B

    .line 798
    .local v0, "bytes":[B
    const/4 v6, 0x0

    .line 799
    .local v6, "offset":I
    const/4 v5, 0x0

    .line 801
    .local v5, "numRead":I
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v6

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-ltz v5, :cond_0

    .line 802
    add-int/2addr v6, v5

    goto :goto_0

    .line 806
    :cond_0
    array-length v7, v0

    if-ge v6, v7, :cond_3

    .line 807
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 815
    .end local v0    # "bytes":[B
    if-eqz v4, :cond_1

    .line 817
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v3, v4

    .line 819
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "numRead":I
    .end local v6    # "offset":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_2
    return-object v0

    .line 815
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "bytes":[B
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "offset":I
    :cond_3
    if-eqz v4, :cond_4

    .line 817
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_3
    move-object v3, v4

    .line 819
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2

    .line 811
    .end local v0    # "bytes":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "numRead":I
    .end local v6    # "offset":I
    :catch_0
    move-exception v2

    .line 812
    .local v2, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_4
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object v0, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 815
    if-eqz v3, :cond_2

    .line 817
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 818
    :catch_1
    move-exception v7

    goto :goto_2

    .line 815
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_5

    .line 817
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 819
    :cond_5
    :goto_6
    throw v7

    .line 818
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v5    # "numRead":I
    .restart local v6    # "offset":I
    :catch_2
    move-exception v7

    goto :goto_1

    .restart local v0    # "bytes":[B
    :catch_3
    move-exception v7

    goto :goto_3

    .end local v0    # "bytes":[B
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "numRead":I
    .end local v6    # "offset":I
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 815
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 811
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_4
.end method

.method private getGlobalSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 626
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 629
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 631
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSecureSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 616
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 619
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 621
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSystemSettings()[B
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 606
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/settings/SettingsBackupAgent;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 609
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-direct {p0, v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->extractRelevantValues(Landroid/database/Cursor;[Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 611
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getWifiSupplicant(Ljava/lang/String;)[B
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 842
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 844
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 846
    .local v5, "relevantLines":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .line 848
    .local v6, "started":Z
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 849
    if-nez v6, :cond_1

    const-string v7, "network"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 850
    const/4 v6, 0x1

    .line 852
    :cond_1
    if-eqz v6, :cond_0

    .line 853
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 864
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "relevantLines":Ljava/lang/StringBuffer;
    .end local v6    # "started":Z
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 865
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "ioe":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t backup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 868
    if-eqz v0, :cond_2

    .line 870
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 872
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_2
    return-object v7

    .line 856
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "relevantLines":Ljava/lang/StringBuffer;
    .restart local v6    # "started":Z
    :cond_3
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 857
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 868
    if-eqz v1, :cond_4

    .line 870
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_3
    move-object v0, v1

    .line 872
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 859
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_5
    :try_start_6
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 868
    if-eqz v1, :cond_6

    .line 870
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_4
    move-object v0, v1

    .line 872
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 862
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "relevantLines":Ljava/lang/StringBuffer;
    .end local v6    # "started":Z
    :cond_7
    :try_start_8
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->EMPTY_DATA:[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 868
    if-eqz v0, :cond_2

    .line 870
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2

    .line 871
    :catch_1
    move-exception v8

    goto :goto_2

    .line 868
    .end local v2    # "file":Ljava/io/File;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v0, :cond_8

    .line 870
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 872
    :cond_8
    :goto_6
    throw v7

    .line 871
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "relevantLines":Ljava/lang/StringBuffer;
    .restart local v6    # "started":Z
    :catch_2
    move-exception v8

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "relevantLines":Ljava/lang/StringBuffer;
    .end local v6    # "started":Z
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_2

    .end local v3    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_6

    .line 868
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 864
    .end local v2    # "file":Ljava/io/File;
    :catch_6
    move-exception v3

    goto :goto_1
.end method

.method private readInt([BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "pos"    # I

    .prologue
    .line 951
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int v0, v1, v2

    .line 956
    .local v0, "result":I
    return v0
.end method

.method private readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J
    .locals 6
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 558
    const/4 v4, 0x6

    new-array v2, v4, [J

    .line 560
    .local v2, "stateChecksums":[J
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 564
    .local v0, "dataInput":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 565
    .local v3, "stateVersion":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v4, Lcom/android/providers/settings/SettingsBackupAgent;->STATE_SIZES:[I

    aget v4, v4, v3

    if-ge v1, v4, :cond_0

    .line 566
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 568
    .end local v1    # "i":I
    .end local v3    # "stateVersion":I
    :catch_0
    move-exception v4

    .line 572
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 573
    return-object v2
.end method

.method private restoreFileData(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "size"    # I

    .prologue
    .line 827
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 830
    :cond_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 831
    .local v2, "os":Ljava/io/OutputStream;
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 832
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 836
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "os":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v1

    .line 834
    .local v1, "ioe":Ljava/io/IOException;
    const-string v3, "SettingsBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V
    .locals 4
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/backup/BackupDataInput;",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p3, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v2

    new-array v1, v2, [B

    .line 639
    .local v1, "settings":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    array-length v2, v1

    invoke-direct {p0, v1, v2, p2, p3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 645
    :goto_0
    return-void

    .line 640
    :catch_0
    move-exception v0

    .line 641
    .local v0, "ioe":Ljava/io/IOException;
    const-string v2, "SettingsBackupAgent"

    const-string v3, "Couldn\'t read entity data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V
    .locals 18
    .param p1, "settings"    # [B
    .param p2, "bytes"    # I
    .param p3, "contentUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Landroid/net/Uri;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 654
    .local p4, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 655
    .local v14, "whitelist":[Ljava/lang/String;
    sget-object v15, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 656
    sget-object v14, Landroid/provider/Settings$Secure;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    .line 666
    :goto_0
    const/4 v10, 0x0

    .line 667
    .local v10, "pos":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 668
    .local v2, "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Landroid/content/ContentValues;

    const/4 v15, 0x2

    invoke-direct {v3, v15}, Landroid/content/ContentValues;-><init>(I)V

    .line 669
    .local v3, "contentValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 671
    .local v11, "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    array-length v13, v14

    .line 672
    .local v13, "whiteListSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v13, :cond_a

    .line 673
    aget-object v8, v14, v7

    .line 674
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 677
    .local v12, "value":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 678
    :goto_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_0

    .line 679
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v9

    .line 680
    .local v9, "length":I
    add-int/lit8 v10, v10, 0x4

    .line 681
    if-lez v9, :cond_5

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .line 682
    .local v4, "dataKey":Ljava/lang/String;
    :goto_3
    add-int/2addr v10, v9

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/providers/settings/SettingsBackupAgent;->readInt([BI)I

    move-result v9

    .line 684
    add-int/lit8 v10, v10, 0x4

    .line 685
    if-lez v9, :cond_6

    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-direct {v5, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V

    .line 686
    .local v5, "dataValue":Ljava/lang/String;
    :goto_4
    add-int/2addr v10, v9

    .line 687
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 688
    move-object v12, v5

    .line 695
    .end local v4    # "dataKey":Ljava/lang/String;
    .end local v5    # "dataValue":Ljava/lang/String;
    .end local v9    # "length":I
    :cond_0
    if-nez v12, :cond_8

    .line 672
    :cond_1
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 657
    .end local v2    # "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "contentValues":Landroid/content/ContentValues;
    .end local v7    # "i":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "pos":I
    .end local v11    # "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "whiteListSize":I
    :cond_2
    sget-object v15, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 658
    sget-object v14, Landroid/provider/Settings$System;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    goto :goto_0

    .line 659
    :cond_3
    sget-object v15, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 660
    sget-object v14, Landroid/provider/Settings$Global;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    goto :goto_0

    .line 662
    :cond_4
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unknown URI: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 681
    .restart local v2    # "cachedEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "contentValues":Landroid/content/ContentValues;
    .restart local v7    # "i":I
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "length":I
    .restart local v10    # "pos":I
    .restart local v11    # "settingsHelper":Lcom/android/providers/settings/SettingsHelper;
    .restart local v12    # "value":Ljava/lang/String;
    .restart local v13    # "whiteListSize":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 685
    .restart local v4    # "dataKey":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x0

    goto :goto_4

    .line 691
    .restart local v5    # "dataValue":Ljava/lang/String;
    :cond_7
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 699
    .end local v4    # "dataKey":Ljava/lang/String;
    .end local v5    # "dataValue":Ljava/lang/String;
    .end local v9    # "length":I
    :cond_8
    if-eqz p4, :cond_9

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    sget-object v6, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 704
    .local v6, "destination":Landroid/net/Uri;
    :goto_6
    invoke-virtual {v11, v8, v12}, Lcom/android/providers/settings/SettingsHelper;->restoreValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 705
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 706
    const-string v15, "name"

    invoke-virtual {v3, v15, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v15, "value"

    invoke-virtual {v3, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    invoke-virtual {v15, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5

    .end local v6    # "destination":Landroid/net/Uri;
    :cond_9
    move-object/from16 v6, p3

    .line 699
    goto :goto_6

    .line 715
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private restoreWifiSupplicant(Ljava/lang/String;[BI)V
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .param p3, "size"    # I

    .prologue
    .line 879
    :try_start_0
    new-instance v6, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;

    invoke-direct {v6, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    .line 881
    .local v6, "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    new-instance v5, Ljava/io/File;

    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    .local v5, "supplicantFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 884
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 885
    .local v2, "in":Ljava/io/BufferedReader;
    invoke-virtual {v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;)V

    .line 886
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 888
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 892
    .end local v2    # "in":Ljava/io/BufferedReader;
    :cond_0
    if-lez p3, :cond_2

    .line 893
    new-array v4, p3, [C

    .line 894
    .local v4, "restoredAsBytes":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    aget-byte v7, p2, v1

    int-to-char v7, v7

    aput-char v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    :cond_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/CharArrayReader;

    invoke-direct {v7, v4}, Ljava/io/CharArrayReader;-><init>([C)V

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 896
    .restart local v2    # "in":Ljava/io/BufferedReader;
    invoke-virtual {v6, v2}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->readNetworks(Ljava/io/BufferedReader;)V

    .line 905
    .end local v1    # "i":I
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v4    # "restoredAsBytes":[C
    :cond_2
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/FileWriter;

    const-string v8, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 906
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-direct {p0, v0}, Lcom/android/providers/settings/SettingsBackupAgent;->copyWifiSupplicantTemplate(Ljava/io/BufferedWriter;)V

    .line 909
    invoke-virtual {v6, v0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;->write(Ljava/io/Writer;)V

    .line 910
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "supplicantFile":Ljava/io/File;
    .end local v6    # "supplicantImage":Lcom/android/providers/settings/SettingsBackupAgent$WifiNetworkSettings;
    :goto_1
    return-void

    .line 911
    :catch_0
    move-exception v3

    .line 912
    .local v3, "ioe":Ljava/io/IOException;
    const-string v7, "SettingsBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t restore "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeBytes([BI[B)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # [B

    .prologue
    .line 946
    const/4 v0, 0x0

    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 947
    array-length v0, p3

    add-int/2addr v0, p2

    return v0
.end method

.method private writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J
    .locals 4
    .param p1, "oldChecksum"    # J
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "data"    # [B
    .param p5, "output"    # Landroid/app/backup/BackupDataOutput;

    .prologue
    .line 590
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 591
    .local v0, "checkSummer":Ljava/util/zip/CRC32;
    invoke-virtual {v0, p4}, Ljava/util/zip/CRC32;->update([B)V

    .line 592
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    .line 593
    .local v1, "newChecksum":J
    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 602
    .end local p1    # "oldChecksum":J
    :goto_0
    return-wide p1

    .line 597
    .restart local p1    # "oldChecksum":J
    :cond_0
    :try_start_0
    array-length v3, p4

    invoke-virtual {p5, p3, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 598
    array-length v3, p4

    invoke-virtual {p5, p4, v3}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-wide p1, v1

    .line 602
    goto :goto_0

    .line 599
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private writeInt([BII)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "pos"    # I
    .param p3, "value"    # I

    .prologue
    .line 938
    add-int/lit8 v0, p2, 0x0

    shr-int/lit8 v1, p3, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 939
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 940
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p3, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 941
    add-int/lit8 v0, p2, 0x3

    shr-int/lit8 v1, p3, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 942
    add-int/lit8 v0, p2, 0x4

    return v0
.end method

.method private writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V
    .locals 4
    .param p1, "checksums"    # [J
    .param p2, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 581
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 582
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 583
    aget-wide v2, p1, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 586
    return-void
.end method


# virtual methods
.method initWifiRestoreIfNecessary()V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-direct {v0, p0}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;-><init>(Lcom/android/providers/settings/SettingsBackupAgent;)V

    iput-object v0, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    .line 387
    :cond_0
    return-void
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 35
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v7

    .line 290
    .local v7, "systemSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v12

    .line 291
    .local v12, "secureSettingsData":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v17

    .line 292
    .local v17, "globalSettingsData":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v22

    .line 293
    .local v22, "locale":[B
    const-string v3, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v27

    .line 294
    .local v27, "wifiSupplicantData":[B
    sget-object v3, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v32

    .line 296
    .local v32, "wifiConfigData":[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/settings/SettingsBackupAgent;->readOldChecksums(Landroid/os/ParcelFileDescriptor;)[J

    move-result-object v34

    .line 298
    .local v34, "stateChecksums":[J
    const/4 v9, 0x0

    const/4 v3, 0x0

    aget-wide v4, v34, v3

    const-string v6, "system"

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v3

    aput-wide v3, v34, v9

    .line 300
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v9, v34, v4

    const-string v11, "secure"

    move-object/from16 v8, p0

    move-object/from16 v13, p2

    invoke-direct/range {v8 .. v13}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 302
    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v14, v34, v4

    const-string v16, "global"

    move-object/from16 v13, p0

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 304
    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v19, v34, v4

    const-string v21, "locale"

    move-object/from16 v18, p0

    move-object/from16 v23, p2

    invoke-direct/range {v18 .. v23}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 306
    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v24, v34, v4

    const-string v26, "\uffedWIFI"

    move-object/from16 v23, p0

    move-object/from16 v28, p2

    invoke-direct/range {v23 .. v28}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 309
    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v29, v34, v4

    const-string v31, "\uffedCONFIG_WIFI"

    move-object/from16 v28, p0

    move-object/from16 v33, p2

    invoke-direct/range {v28 .. v33}, Lcom/android/providers/settings/SettingsBackupAgent;->writeIfChanged(JLjava/lang/String;[BLandroid/app/backup/BackupDataOutput;)J

    move-result-wide v4

    aput-wide v4, v34, v3

    .line 313
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->writeNewChecksums([JLandroid/os/ParcelFileDescriptor;)V

    .line 314
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 278
    new-instance v1, Lcom/android/providers/settings/SettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/settings/SettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    .line 279
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 281
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 282
    .local v0, "mWfm":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfigFile()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    .line 283
    :cond_0
    return-void
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 12
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSystemSettings()[B

    move-result-object v8

    .line 432
    .local v8, "systemSettingsData":[B
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getSecureSettings()[B

    move-result-object v6

    .line 433
    .local v6, "secureSettingsData":[B
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getGlobalSettings()[B

    move-result-object v2

    .line 434
    .local v2, "globalSettingsData":[B
    iget-object v11, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v11}, Lcom/android/providers/settings/SettingsHelper;->getLocaleData()[B

    move-result-object v3

    .line 435
    .local v3, "locale":[B
    const-string v11, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v11}, Lcom/android/providers/settings/SettingsBackupAgent;->getWifiSupplicant(Ljava/lang/String;)[B

    move-result-object v10

    .line 436
    .local v10, "wifiSupplicantData":[B
    sget-object v11, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/providers/settings/SettingsBackupAgent;->getFileData(Ljava/lang/String;)[B

    move-result-object v9

    .line 440
    .local v9, "wifiConfigData":[B
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 441
    .local v5, "root":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    const-string v11, "flattened-data"

    invoke-direct {v7, v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    .local v7, "stage":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 444
    .local v1, "filestream":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 445
    .local v0, "bufstream":Ljava/io/BufferedOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 448
    .local v4, "out":Ljava/io/DataOutputStream;
    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 451
    array-length v11, v8

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 452
    invoke-virtual {v4, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 454
    array-length v11, v6

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 455
    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 457
    array-length v11, v2

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 458
    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 460
    array-length v11, v3

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 461
    invoke-virtual {v4, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 463
    array-length v11, v10

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 464
    invoke-virtual {v4, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 466
    array-length v11, v9

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 467
    invoke-virtual {v4, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 469
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 472
    invoke-virtual {p0, v7, p1}, Lcom/android/providers/settings/SettingsBackupAgent;->fullBackupFile(Ljava/io/File;Landroid/app/backup/FullBackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 476
    return-void

    .line 474
    .end local v0    # "bufstream":Ljava/io/BufferedOutputStream;
    .end local v1    # "filestream":Ljava/io/FileOutputStream;
    .end local v4    # "out":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v11

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    throw v11
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 394
    .local v2, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v2}, Landroid/provider/Settings$System;->getMovedKeys(Ljava/util/HashSet;)V

    .line 395
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    .line 397
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 398
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v3

    .line 400
    .local v3, "size":I
    const-string v4, "system"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 401
    sget-object v4, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    .line 402
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4}, Lcom/android/providers/settings/SettingsHelper;->applyAudioSettings()V

    goto :goto_0

    .line 403
    :cond_0
    const-string v4, "secure"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    sget-object v4, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1, v4, v2}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    .line 405
    :cond_1
    const-string v4, "global"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 406
    sget-object v4, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v4, v5}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings(Landroid/app/backup/BackupDataInput;Landroid/net/Uri;Ljava/util/HashSet;)V

    goto :goto_0

    .line 407
    :cond_2
    const-string v4, "\uffedWIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    .line 409
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiSupplicant(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 410
    :cond_3
    const-string v4, "locale"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 411
    new-array v1, v3, [B

    .line 412
    .local v1, "localeData":[B
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v3}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 413
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v4, v1, v3}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    goto :goto_0

    .line 414
    .end local v1    # "localeData":[B
    :cond_4
    const-string v4, "\uffedCONFIG_WIFI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 415
    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->initWifiRestoreIfNecessary()V

    .line 416
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    invoke-virtual {v4, p1}, Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;->incorporateWifiConfigFile(Landroid/app/backup/BackupDataInput;)V

    goto :goto_0

    .line 418
    :cond_5
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->skipEntityData()V

    goto :goto_0

    .line 424
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "size":I
    :cond_6
    iget-object v4, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    if-eqz v4, :cond_7

    .line 425
    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/providers/settings/SettingsBackupAgent;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v5, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiRestore:Lcom/android/providers/settings/SettingsBackupAgent$WifiRestoreRunnable;

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 427
    :cond_7
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 11
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "relpath"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 486
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 487
    .local v2, "instream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 489
    .local v1, "in":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 491
    .local v6, "version":I
    const/4 v7, 0x2

    if-gt v6, v7, :cond_8

    .line 493
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 494
    .local v3, "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/provider/Settings$System;->getMovedKeys(Ljava/util/HashSet;)V

    .line 495
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getMovedKeys(Ljava/util/HashSet;)V

    .line 498
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 500
    .local v4, "nBytes":I
    new-array v0, v4, [B

    .line 501
    .local v0, "buffer":[B
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 502
    sget-object v7, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 505
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 507
    array-length v7, v0

    if-le v4, v7, :cond_0

    new-array v0, v4, [B

    .line 508
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 509
    sget-object v7, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 512
    const/4 v7, 0x2

    if-lt v6, v7, :cond_2

    .line 513
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 515
    array-length v7, v0

    if-le v4, v7, :cond_1

    new-array v0, v4, [B

    .line 516
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 517
    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 518
    sget-object v7, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0, v4, v7, v3}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreSettings([BILandroid/net/Uri;Ljava/util/HashSet;)V

    .line 522
    :cond_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 524
    array-length v7, v0

    if-le v4, v7, :cond_3

    new-array v0, v4, [B

    .line 525
    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 526
    iget-object v7, p0, Lcom/android/providers/settings/SettingsBackupAgent;->mSettingsHelper:Lcom/android/providers/settings/SettingsHelper;

    invoke-virtual {v7, v0, v4}, Lcom/android/providers/settings/SettingsHelper;->setLocaleData([BI)V

    .line 529
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 531
    array-length v7, v0

    if-le v4, v7, :cond_4

    new-array v0, v4, [B

    .line 532
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 533
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    move-result v5

    .line 534
    .local v5, "retainedWifiState":I
    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {p0, v7, v0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreWifiSupplicant(Ljava/lang/String;[BI)V

    .line 535
    const-string v7, "/data/misc/wifi/wpa_supplicant.conf"

    const/16 v8, 0x1b0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    const/16 v10, 0x3f2

    invoke-static {v7, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 540
    const/4 v7, 0x3

    if-eq v5, v7, :cond_5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    :cond_5
    const/4 v7, 0x1

    :goto_0
    invoke-direct {p0, v7}, Lcom/android/providers/settings/SettingsBackupAgent;->enableWifi(Z)I

    .line 544
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 546
    array-length v7, v0

    if-le v4, v7, :cond_6

    new-array v0, v4, [B

    .line 547
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v4}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 548
    sget-object v7, Lcom/android/providers/settings/SettingsBackupAgent;->mWifiConfigFile:Ljava/lang/String;

    invoke-direct {p0, v7, v0, v4}, Lcom/android/providers/settings/SettingsBackupAgent;->restoreFileData(Ljava/lang/String;[BI)V

    .line 555
    return-void

    .line 540
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 552
    .end local v0    # "buffer":[B
    .end local v3    # "movedToGlobal":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "nBytes":I
    .end local v5    # "retainedWifiState":I
    :cond_8
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 553
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Invalid file schema"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method
