.class final Lcom/google/android/gms/analytics/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/analytics/q;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/analytics/a;


# instance fields
.field private c:Lcom/google/android/gms/a/a/b;

.field private d:J

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/a;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/a;->g:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/a;->h:Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/a;->e:Landroid/content/Context;

    .line 162
    return-void
.end method

.method private a()Lcom/google/android/gms/a/a/b;
    .locals 2

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/a/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/a/a/b;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/i; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v1

    const-string v1, "IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added \'<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />\' to your application manifest file. See http://goo.gl/naFqQk for details."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :catch_1
    move-exception v1

    const-string v1, "GooglePlayServicesRepairableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :catch_2
    move-exception v1

    const-string v1, "IOException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :catch_3
    move-exception v1

    const-string v1, "GooglePlayServicesNotAvailableException getting Ad Id Info"

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :catch_4
    move-exception v1

    const-string v1, "Unknown exception. Could not get the ad Id."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/analytics/q;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/google/android/gms/analytics/a;->b:Lcom/google/android/gms/analytics/a;

    if-nez v0, :cond_1

    .line 144
    sget-object v1, Lcom/google/android/gms/analytics/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    sget-object v0, Lcom/google/android/gms/analytics/a;->b:Lcom/google/android/gms/analytics/a;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/google/android/gms/analytics/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/analytics/a;->b:Lcom/google/android/gms/analytics/a;

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    sget-object v0, Lcom/google/android/gms/analytics/a;->b:Lcom/google/android/gms/analytics/a;

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/google/android/gms/a/a/b;Lcom/google/android/gms/a/a/b;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 90
    if-nez p2, :cond_0

    move-object v0, v1

    .line 91
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v2

    .line 135
    :goto_1
    return v0

    .line 90
    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/a/a/b;->a:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/analytics/a;->e:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/analytics/k;->a(Landroid/content/Context;)V

    .line 96
    invoke-static {}, Lcom/google/android/gms/analytics/k;->a()Lcom/google/android/gms/analytics/k;

    move-result-object v4

    .line 97
    const-string v3, "&cid"

    invoke-virtual {v4, v3}, Lcom/google/android/gms/analytics/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    iget-object v5, p0, Lcom/google/android/gms/analytics/a;->h:Ljava/lang/Object;

    monitor-enter v5

    .line 100
    :try_start_0
    iget-boolean v6, p0, Lcom/google/android/gms/analytics/a;->g:Z

    if-nez v6, :cond_3

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->f:Ljava/lang/String;

    .line 103
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/a;->g:Z

    .line 115
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 118
    const/4 v0, 0x0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    .line 105
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/google/android/gms/analytics/a;->f:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 106
    if-nez p1, :cond_4

    .line 107
    :goto_3
    if-nez v1, :cond_5

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/a;->c(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v5

    goto :goto_1

    .line 106
    :cond_4
    iget-object v1, p1, Lcom/google/android/gms/a/a/b;->a:Ljava/lang/String;

    goto :goto_3

    .line 111
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->f:Ljava/lang/String;

    goto :goto_2

    .line 121
    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/analytics/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 123
    monitor-exit v5

    move v0, v2

    goto/16 :goto_1

    .line 126
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/analytics/a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 129
    const-string v1, "Resetting the client id because Advertising Id changed."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v4}, Lcom/google/android/gms/analytics/k;->b()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "New client Id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 135
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/a;->c(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :cond_8
    move-object v1, v3

    goto :goto_4
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 233
    :try_start_0
    const-string v1, "gaClientIdData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 234
    const/16 v1, 0x80

    new-array v3, v1, [B

    .line 235
    const/4 v1, 0x0

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    .line 236
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 239
    const-string v1, "Hash file seems corrupted, deleting it."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 241
    const-string v1, "gaClientIdData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 256
    :goto_0
    return-object v0

    .line 242
    :cond_0
    if-gtz v4, :cond_1

    .line 243
    const-string v1, "Hash file is empty."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->b(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    goto :goto_0

    .line 246
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 254
    goto :goto_0

    .line 252
    :catch_1
    move-exception v1

    :goto_1
    const-string v1, "Error reading Hash file, deleting it."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->d(Ljava/lang/String;)V

    .line 253
    const-string v1, "gaClientIdData"

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 252
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 254
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 197
    const-string v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/analytics/bs;->e(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 198
    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%032X"

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v5, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 213
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/analytics/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v2, "Storing hashed adid."

    invoke-static {v2}, Lcom/google/android/gms/analytics/bd;->c(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/google/android/gms/analytics/a;->e:Landroid/content/Context;

    const-string v3, "gaClientIdData"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 217
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 219
    iput-object v1, p0, Lcom/google/android/gms/analytics/a;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    .line 222
    :catch_0
    move-exception v1

    const-string v1, "Error creating hash file."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :catch_1
    move-exception v1

    const-string v1, "Error writing to hash file."

    invoke-static {v1}, Lcom/google/android/gms/analytics/bd;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 55
    iget-wide v2, p0, Lcom/google/android/gms/analytics/a;->d:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/analytics/a;->a()Lcom/google/android/gms/a/a/b;

    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/google/android/gms/analytics/a;->c:Lcom/google/android/gms/a/a/b;

    invoke-direct {p0, v3, v2}, Lcom/google/android/gms/analytics/a;->a(Lcom/google/android/gms/a/a/b;Lcom/google/android/gms/a/a/b;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 60
    iput-object v2, p0, Lcom/google/android/gms/analytics/a;->c:Lcom/google/android/gms/a/a/b;

    .line 65
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/analytics/a;->d:J

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->c:Lcom/google/android/gms/a/a/b;

    if-eqz v0, :cond_4

    .line 69
    const-string v0, "&adid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->c:Lcom/google/android/gms/a/a/b;

    iget-object v0, v0, Lcom/google/android/gms/a/a/b;->a:Ljava/lang/String;

    .line 75
    :goto_1
    return-object v0

    .line 63
    :cond_1
    new-instance v2, Lcom/google/android/gms/a/a/b;

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/a/a/b;-><init>(Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/google/android/gms/analytics/a;->c:Lcom/google/android/gms/a/a/b;

    goto :goto_0

    .line 71
    :cond_2
    const-string v0, "&ate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/analytics/a;->c:Lcom/google/android/gms/a/a/b;

    iget-boolean v0, v0, Lcom/google/android/gms/a/a/b;->b:Z

    if-eqz v0, :cond_3

    const-string v0, "0"

    goto :goto_1

    :cond_3
    const-string v0, "1"

    goto :goto_1

    .line 75
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
