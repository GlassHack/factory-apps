.class public final Lcom/google/android/gms/common/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/a/b;

.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static c:Ljava/lang/Boolean;

.field private static final d:[C

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 57
    const-string v0, "android_id"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/e;->a:Lcom/google/android/gms/common/a/b;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/util/e;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/common/util/e;->d:[C

    .line 414
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/common/util/e;->e:Ljava/lang/String;

    return-void

    .line 63
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static a()J
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/google/android/gms/common/util/e;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->b(Lcom/google/android/gms/common/a/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;I)Lcom/google/n/a/b/a/a/c;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/google/n/a/b/a/a/c;

    invoke-direct {v0}, Lcom/google/n/a/b/a/a/c;-><init>()V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    sget-object v1, Lcom/google/android/gms/common/util/e;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v1}, Lcom/google/android/gms/common/b/a;->b(Lcom/google/android/gms/common/a/b;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/n/a/b/a/a/c;->a:J

    .line 198
    :cond_0
    if-eqz p2, :cond_1

    .line 199
    iput-object p2, v0, Lcom/google/n/a/b/a/a/c;->b:Ljava/lang/String;

    .line 201
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v1, v0, Lcom/google/n/a/b/a/a/c;->d:I

    .line 202
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->e:Ljava/lang/String;

    .line 203
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->f:Ljava/lang/String;

    .line 204
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->g:Ljava/lang/String;

    .line 205
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->h:Ljava/lang/String;

    .line 206
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->i:Ljava/lang/String;

    .line 207
    invoke-static {p0}, Lcom/google/android/gms/common/util/e;->e(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->k:Ljava/lang/String;

    .line 208
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->n:Ljava/lang/String;

    .line 209
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/n/a/b/a/a/c;->l:Ljava/lang/String;

    .line 211
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->m:Ljava/lang/String;

    .line 212
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->j:Ljava/lang/String;

    .line 213
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->o:Ljava/lang/String;

    .line 214
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->p:Ljava/lang/String;

    .line 215
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->r:Ljava/lang/String;

    .line 216
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_2

    .line 219
    iput-object v1, v0, Lcom/google/n/a/b/a/a/c;->q:Ljava/lang/String;

    .line 222
    :cond_2
    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    .line 263
    if-nez v2, :cond_0

    .line 271
    :goto_0
    return-object v0

    .line 266
    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 267
    if-nez v1, :cond_1

    .line 268
    const-string v1, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCallingPackage(): Couldn\'t get a package name from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 271
    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 5

    .prologue
    .line 476
    array-length v1, p0

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v1, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 478
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 479
    sget-object v3, Lcom/google/android/gms/common/util/e;->d:[C

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    sget-object v3, Lcom/google/android/gms/common/util/e;->d:[C

    aget-byte v4, p0, v0

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 531
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 533
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    .line 543
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 540
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 543
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 399
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 404
    :cond_0
    return-void

    .line 403
    :cond_1
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/common/util/e;->a(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Unknown calling package name \'%s\'."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    sget-object v0, Lcom/google/android/gms/common/util/e;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 96
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 97
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    .line 102
    :goto_0
    const-string v3, "6.1.11 (1474901-300)"

    const-string v4, "(eng."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 104
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/util/e;->c:Ljava/lang/Boolean;

    .line 107
    :cond_2
    sget-object v0, Lcom/google/android/gms/common/util/e;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_3
    move v0, v2

    .line 97
    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 350
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 357
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 358
    if-eqz p2, :cond_0

    if-eqz v3, :cond_0

    move v0, v1

    .line 359
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 360
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 361
    goto :goto_0

    .line 359
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 551
    if-eqz p0, :cond_1

    .line 552
    invoke-static {p1}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 553
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 556
    :goto_0
    return-object v0

    .line 554
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    goto :goto_0

    .line 556
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_0

    const-string v2, "SHA1"

    invoke-static {v2}, Lcom/google/android/gms/common/util/e;->a(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 743
    :goto_0
    if-nez v1, :cond_1

    .line 746
    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    .line 742
    goto :goto_0

    .line 746
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/common/util/e;->a([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 567
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 568
    if-eqz v0, :cond_0

    .line 577
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    .line 574
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 577
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 226
    invoke-static {p0}, Lcom/google/android/gms/common/util/e;->e(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 670
    const/4 v0, -0x1

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 673
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 675
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    return v0

    .line 677
    :catch_0
    move-exception v2

    const-string v2, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find package info for package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 820
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 687
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 689
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_0
    return-object v0

    .line 691
    :catch_0
    move-exception v2

    const-string v2, "AndroidUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not find package info for package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static e(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 242
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method
