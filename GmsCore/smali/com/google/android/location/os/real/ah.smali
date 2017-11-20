.class public final Lcom/google/android/location/os/real/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field a:Z

.field final b:Landroid/content/Context;

.field final c:Lcom/google/android/location/k/b;

.field final d:Lcom/google/android/location/os/real/x;

.field final e:Lcom/google/android/location/f/ag;

.field final f:Lcom/google/android/location/os/real/ak;

.field final g:Lcom/google/android/location/os/real/ak;

.field final h:Lcom/google/android/location/d/j;

.field private final j:Lcom/google/android/location/os/real/ak;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/location/k/b;Lcom/google/android/location/f/ag;Lcom/google/android/location/os/real/x;)V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/os/real/ah;->a:Z

    .line 106
    iput-object p2, p0, Lcom/google/android/location/os/real/ah;->c:Lcom/google/android/location/k/b;

    .line 107
    iput-object p3, p0, Lcom/google/android/location/os/real/ah;->e:Lcom/google/android/location/f/ag;

    .line 108
    iput-object p4, p0, Lcom/google/android/location/os/real/ah;->d:Lcom/google/android/location/os/real/x;

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/ah;->b:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/google/android/location/os/real/ah;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/a/b;->a(Landroid/content/Context;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/location/os/real/ah;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/location/d/j;->a(Landroid/content/Context;)Lcom/google/android/location/d/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/os/real/ah;->h:Lcom/google/android/location/d/j;

    .line 120
    iget-object v0, p0, Lcom/google/android/location/os/real/ah;->b:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 121
    new-instance v1, Lcom/google/android/location/os/real/ak;

    sget-object v2, Lcom/google/android/location/os/real/am;->a:Lcom/google/android/location/os/real/am;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/location/os/real/ak;-><init>(Lcom/google/android/location/os/real/ah;Lcom/google/android/location/os/real/am;Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/ah;->j:Lcom/google/android/location/os/real/ak;

    .line 122
    new-instance v1, Lcom/google/android/location/os/real/ak;

    sget-object v2, Lcom/google/android/location/os/real/am;->b:Lcom/google/android/location/os/real/am;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/location/os/real/ak;-><init>(Lcom/google/android/location/os/real/ah;Lcom/google/android/location/os/real/am;Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/ah;->f:Lcom/google/android/location/os/real/ak;

    .line 123
    new-instance v1, Lcom/google/android/location/os/real/ak;

    sget-object v2, Lcom/google/android/location/os/real/am;->d:Lcom/google/android/location/os/real/am;

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/location/os/real/ak;-><init>(Lcom/google/android/location/os/real/ah;Lcom/google/android/location/os/real/am;Landroid/os/PowerManager;)V

    iput-object v1, p0, Lcom/google/android/location/os/real/ah;->g:Lcom/google/android/location/os/real/ak;

    .line 125
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/g/a/b/b/a;
    .locals 5

    .prologue
    .line 198
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    :goto_0
    new-instance v2, Lcom/google/g/a/b/b/a;

    sget-object v1, Lcom/google/android/location/n/a;->y:Lcom/google/g/a/b/b/c;

    invoke-direct {v2, v1}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/google/android/location/d/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    const/4 v3, 0x2

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "android/"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    :cond_0
    invoke-static {p0}, Lcom/google/android/location/os/real/ah;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    :cond_1
    return-object v2

    .line 198
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_3
    const-string v1, "android"

    goto :goto_1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 161
    const-class v1, Lcom/google/android/location/os/real/ah;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 162
    new-instance v2, Ljava/io/File;

    const-string v3, "nlp_GlsPlatformKey"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    :try_start_2
    sget-boolean v3, Lcom/google/android/location/j/a;->e:Z

    if-eqz v3, :cond_0

    const-string v3, "GlsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 227
    const-class v1, Lcom/google/android/location/os/real/ah;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 231
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "GlsClient"

    const-string v2, "setPlatformKey(): couldn\'t create directory"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 236
    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "nlp_GlsPlatformKey"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 238
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 239
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 241
    sput-object p1, Lcom/google/android/location/os/real/ah;->i:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "GlsClient"

    const-string v2, "setPlatformKey(): unable to create platform key file"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 245
    :catch_1
    move-exception v0

    :try_start_3
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "GlsClient"

    const-string v2, "setPlatformKey(): unable to write to platform key"

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static a(Lcom/google/g/a/b/b/a;Ljava/util/Locale;Ljava/util/List;)V
    .locals 12

    .prologue
    .line 858
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 859
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 861
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 863
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v1

    int-to-double v2, v1

    const-wide v4, 0x416312d000000000L    # 1.0E7

    div-double/2addr v2, v4

    .line 864
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v4, 0x416312d000000000L    # 1.0E7

    div-double/2addr v0, v4

    .line 867
    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 869
    new-instance v6, Landroid/location/Address;

    invoke-direct {v6, p1}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    .line 871
    const/4 v5, 0x5

    invoke-virtual {p0, v5, v4}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v5

    .line 872
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/location/Address;->setFeatureName(Ljava/lang/String;)V

    .line 874
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 875
    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v7

    .line 876
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x416312d000000000L    # 1.0E7

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Landroid/location/Address;->setLatitude(D)V

    .line 877
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v7

    int-to-double v8, v7

    const-wide v10, 0x416312d000000000L    # 1.0E7

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Landroid/location/Address;->setLongitude(D)V

    .line 884
    :cond_1
    :goto_1
    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v7

    .line 886
    const/4 v5, 0x0

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 887
    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5}, Lcom/google/g/a/b/b/a;->d(II)Ljava/lang/String;

    move-result-object v8

    .line 888
    invoke-virtual {v6, v5, v8}, Landroid/location/Address;->setAddressLine(ILjava/lang/String;)V

    .line 886
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 879
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/google/g/a/b/b/a;->i(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 880
    invoke-virtual {v6, v2, v3}, Landroid/location/Address;->setLatitude(D)V

    .line 881
    invoke-virtual {v6, v0, v1}, Landroid/location/Address;->setLongitude(D)V

    goto :goto_1

    .line 891
    :cond_3
    const/4 v5, 0x0

    :goto_3
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/google/g/a/b/b/a;->k(I)I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 892
    const/4 v8, 0x2

    invoke-virtual {v7, v8, v5}, Lcom/google/g/a/b/b/a;->c(II)Lcom/google/g/a/b/b/a;

    move-result-object v8

    .line 893
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/g/a/b/b/a;->c(I)I

    move-result v9

    .line 894
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v8

    .line 896
    packed-switch v9, :pswitch_data_0

    .line 935
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 898
    :pswitch_0
    invoke-virtual {v6, v8}, Landroid/location/Address;->setAdminArea(Ljava/lang/String;)V

    goto :goto_4

    .line 902
    :pswitch_1
    invoke-virtual {v6, v8}, Landroid/location/Address;->setSubAdminArea(Ljava/lang/String;)V

    goto :goto_4

    .line 906
    :pswitch_2
    invoke-virtual {v6, v8}, Landroid/location/Address;->setLocality(Ljava/lang/String;)V

    goto :goto_4

    .line 910
    :pswitch_3
    invoke-virtual {v6, v8}, Landroid/location/Address;->setSubLocality(Ljava/lang/String;)V

    goto :goto_4

    .line 914
    :pswitch_4
    invoke-virtual {v6, v8}, Landroid/location/Address;->setThoroughfare(Ljava/lang/String;)V

    goto :goto_4

    .line 918
    :pswitch_5
    invoke-virtual {v6, v8}, Landroid/location/Address;->setSubThoroughfare(Ljava/lang/String;)V

    goto :goto_4

    .line 922
    :pswitch_6
    invoke-virtual {v6, v8}, Landroid/location/Address;->setPremises(Ljava/lang/String;)V

    goto :goto_4

    .line 926
    :pswitch_7
    invoke-virtual {v6, v8}, Landroid/location/Address;->setPostalCode(Ljava/lang/String;)V

    goto :goto_4

    .line 930
    :pswitch_8
    invoke-virtual {v6, v8}, Landroid/location/Address;->setCountryName(Ljava/lang/String;)V

    goto :goto_4

    .line 934
    :pswitch_9
    invoke-virtual {v6, v8}, Landroid/location/Address;->setCountryCode(Ljava/lang/String;)V

    goto :goto_4

    .line 942
    :cond_4
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 944
    :cond_5
    return-void

    .line 896
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 174
    const-class v2, Lcom/google/android/location/os/real/ah;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/google/android/location/os/real/ah;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/google/android/location/os/real/ah;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :goto_0
    monitor-exit v2

    return-object v0

    .line 178
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 181
    :try_start_2
    new-instance v3, Ljava/io/File;

    const-string v4, "nlp_GlsPlatformKey"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 184
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V

    .line 187
    sput-object v0, Lcom/google/android/location/os/real/ah;->i:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 193
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/g;)V
    .locals 7

    .prologue
    .line 134
    iget-object v6, p0, Lcom/google/android/location/os/real/ah;->j:Lcom/google/android/location/os/real/ak;

    new-instance v0, Lcom/google/android/location/os/real/aj;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/os/real/aj;-><init>(Lcom/google/android/location/os/real/ah;Lcom/google/g/a/b/b/a;Lcom/google/android/location/p/j;Lcom/google/android/location/k/a;Lcom/google/android/location/k/g;)V

    invoke-virtual {v6, v0}, Lcom/google/android/location/os/real/ak;->a(Lcom/google/android/location/os/real/aj;)V

    .line 135
    return-void
.end method
