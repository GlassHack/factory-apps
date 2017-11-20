.class public final Lcom/google/android/gms/gcm/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field static b:Ljava/lang/String;

.field static c:Ljava/util/concurrent/BlockingQueue;

.field static d:J

.field static e:J

.field static f:Ljava/lang/String;

.field static g:Lcom/google/android/gms/gcm/ab;

.field private static i:I


# instance fields
.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "content://com.google.android.gsf.gservices/override"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/ab;->a:Landroid/net/Uri;

    .line 126
    const-string v0, "745476177629"

    sput-object v0, Lcom/google/android/gms/gcm/ab;->b:Ljava/lang/String;

    .line 133
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/google/android/gms/gcm/ab;->d:J

    .line 140
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/google/android/gms/gcm/ab;->e:J

    .line 147
    const-string v0, "/data/user/0/com.google.android.gsf/shared_prefs/CheckinService.xml,/data/data/com.google.android.gsf/shared_prefs/CheckinService.xml"

    sput-object v0, Lcom/google/android/gms/gcm/ab;->f:Ljava/lang/String;

    .line 174
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gms/gcm/ab;->i:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    .line 194
    invoke-static {p1}, Lcom/google/android/gms/gcm/ab;->b(Landroid/content/Context;)V

    .line 195
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 693
    const/4 v0, -0x1

    .line 694
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 696
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 697
    if-eqz v1, :cond_0

    .line 698
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/gcm/ab;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/google/android/gms/gcm/ab;->g:Lcom/google/android/gms/gcm/ab;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/google/android/gms/gcm/ab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/ab;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/ab;->g:Lcom/google/android/gms/gcm/ab;

    .line 189
    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/ab;->g:Lcom/google/android/gms/gcm/ab;

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 274
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 278
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 279
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 282
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 283
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 284
    const/4 v0, 0x0

    const-string v5, "name"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    const/4 v0, 0x0

    const-string v6, "value"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    const-string v6, "long"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CheckinTask_securityToken"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 290
    const-string v3, "GCM"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 291
    const-string v3, "GCM"

    const-string v4, "Direct provisioning from GSF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 308
    :goto_0
    return-object v0

    .line 296
    :cond_2
    :try_start_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 297
    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 299
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    :cond_3
    :goto_1
    move-object v0, v1

    .line 308
    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 304
    :catch_1
    move-exception v0

    .line 305
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to parse "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static a(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 423
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 424
    const-string v1, "gcm_enable_connection5"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v1, "gcm_enable_registration2"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    sput p1, Lcom/google/android/gms/gcm/ab;->i:I

    .line 427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/gcm/ab;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 590
    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 592
    const-string v1, "registration_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 593
    const-string v2, "regId"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 594
    if-eqz v1, :cond_2

    .line 595
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 596
    const-string v3, "regId"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 597
    const-string v3, "sender"

    sget-object v4, Lcom/google/android/gms/gcm/ab;->b:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 598
    const-string v3, "com.google.android.gms"

    invoke-static {p0, v3}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 600
    const-string v4, "GCM_V"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.REGISTERED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 607
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 625
    :cond_0
    :goto_0
    sget-object v0, Lcom/google/android/gms/gcm/ab;->c:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 626
    sget-object v0, Lcom/google/android/gms/gcm/ab;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_1
    return-void

    .line 612
    :cond_2
    const-string v1, "reg_delay"

    const-wide/32 v2, 0x927c0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 614
    const-string v2, "GCM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed registration "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "error"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " alarm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v0

    .line 619
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 620
    const/4 v1, 0x3

    const/4 v4, 0x0

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/gcm/GmsAutoStarter;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x8000000

    invoke-static {p0, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Z)V
    .locals 14

    .prologue
    const-wide/32 v12, 0x5265c00

    const-wide/32 v2, 0x927c0

    const-wide/16 v10, 0x0

    .line 712
    if-nez p1, :cond_3

    .line 714
    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 715
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 716
    const-string v0, "reg_time"

    invoke-interface {v4, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 717
    const-string v0, "reg_delay"

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 718
    cmp-long v5, v0, v10

    if-lez v5, :cond_0

    cmp-long v5, v0, v12

    if-lez v5, :cond_1

    :cond_0
    move-wide v0, v2

    .line 722
    :cond_1
    sub-long v2, v6, v8

    cmp-long v2, v2, v0

    if-gez v2, :cond_2

    .line 747
    :goto_0
    return-void

    .line 726
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 727
    const-string v3, "reg_time"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 729
    const-wide/16 v4, 0x2

    mul-long/2addr v0, v4

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 730
    const-string v3, "reg_delay"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 731
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 735
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    const-string v1, "app"

    const/4 v2, 0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 740
    const-string v1, "sender"

    sget-object v2, Lcom/google/android/gms/gcm/ab;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 742
    const-string v1, "GCM"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 743
    const-string v1, "GCM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Registering GMS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/gcm/ab;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method static b(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 390
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gcm_enable_connection5"

    invoke-static {v0, v3, v5}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "gcm_enable_server"

    invoke-static {v0, v4, v5}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 397
    if-ltz v3, :cond_4

    .line 398
    sput v3, Lcom/google/android/gms/gcm/ab;->i:I

    .line 399
    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 407
    :cond_1
    :goto_0
    sput v0, Lcom/google/android/gms/gcm/ab;->i:I

    .line 411
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gms.gcm.sender"

    const-string v4, "745476177629"

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/ab;->b:Ljava/lang/String;

    .line 415
    sget v0, Lcom/google/android/gms/gcm/ab;->i:I

    if-eq v0, v2, :cond_3

    move v1, v2

    :cond_3
    invoke-static {p0, v1}, Lcom/google/android/gms/gcm/ar;->a(Landroid/content/Context;Z)V

    .line 416
    return-void

    .line 404
    :cond_4
    if-gez v0, :cond_1

    .line 407
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method static c(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 432
    sget v2, Lcom/google/android/gms/gcm/ab;->i:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 433
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->b(Landroid/content/Context;)V

    .line 436
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-le v2, v3, :cond_2

    .line 458
    :cond_1
    :goto_0
    return v0

    .line 439
    :cond_2
    sget v2, Lcom/google/android/gms/gcm/ab;->i:I

    if-nez v2, :cond_3

    move v0, v1

    .line 440
    goto :goto_0

    .line 443
    :cond_3
    sget v2, Lcom/google/android/gms/gcm/ab;->i:I

    if-ne v2, v0, :cond_1

    .line 444
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->i(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 447
    invoke-static {}, Lcom/google/android/gms/gcm/ar;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 449
    invoke-static {p0, v0}, Lcom/google/android/gms/gcm/ar;->b(Landroid/content/Context;Z)V

    goto :goto_0

    .line 453
    :cond_4
    invoke-static {p0, v1}, Lcom/google/android/gms/gcm/ar;->b(Landroid/content/Context;Z)V

    move v0, v1

    .line 454
    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 641
    const-string v1, "com.google.android.gcm"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 642
    const-string v2, "sender"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    sget-object v3, Lcom/google/android/gms/gcm/ab;->b:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 646
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 647
    const-string v2, "sender"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 648
    const-string v2, "regId"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 649
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 653
    :goto_0
    return-object v0

    :cond_0
    const-string v2, "regId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    const-string v1, "com.google.android.gsf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 318
    const-string v1, "CheckinService"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    const-string v1, "CheckinTask_securityToken"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 321
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 322
    const-string v2, "GCM"

    const-string v3, "GCM config loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 329
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    const-string v1, "GCM"

    const-string v2, "Unexpected error reading config file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 329
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 673
    const-string v1, "com.google.android.gcm"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 675
    const-string v2, "GCM_V"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 677
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gms.gcm.sender"

    const-string v4, "745476177629"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/gcm/ab;->b:Ljava/lang/String;

    .line 679
    const-string v2, "com.google.android.gms"

    invoke-static {p0, v2}, Lcom/google/android/gms/gcm/ab;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 684
    invoke-static {p0}, Lcom/google/android/gms/gcm/ab;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eq v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    const-string v1, "com.google.android.gsf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 336
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "security_token"

    invoke-virtual {v0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 339
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 340
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 342
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 351
    :goto_0
    return-object v0

    .line 342
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    :catch_0
    move-exception v0

    const-string v0, "GCM"

    const-string v1, "GCM failed to read backup checkin config, checkin may have failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    const-string v0, "GCM"

    const-string v1, "GCM error reading backup config file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 750
    const-string v0, "Checkin"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 752
    const-string v1, "CheckinService_versionInfo"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 756
    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 762
    const-string v0, "gcm_secure_port2"

    invoke-static {v1, v0, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 763
    if-ne v0, v2, :cond_0

    .line 765
    const-string v0, "gcm_secure_port"

    invoke-static {v1, v0, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 767
    :cond_0
    return v0
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 214
    :try_start_0
    const-string v2, "com.google.android.talk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "babel_version"

    const v4, 0x186a0

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 218
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, v2, :cond_0

    .line 219
    const/4 v0, 0x1

    .line 225
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ab;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/gcm/ab;->c:Ljava/util/concurrent/BlockingQueue;

    if-eqz v1, :cond_1

    .line 206
    sget-object v1, Lcom/google/android/gms/gcm/ab;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    return-object v0

    .line 204
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/gcm/ab;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    const-string v2, "APP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".gms"

    const-string v3, ".gsf"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "shared_prefs/CheckinService.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/gcm/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "gsf_token_files"

    sget-object v3, Lcom/google/android/gms/gcm/ab;->f:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/gms/gcm/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    const-string v0, "GCM"

    const-string v1, "GCM FAILED TO INITIALIZE - missing checkin"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x146c

    const/4 v5, -0x1

    .line 368
    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 369
    const-string v0, "gcm_secure_port"

    invoke-static {v2, v0, v5}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 372
    if-ne v0, v5, :cond_0

    .line 373
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 377
    :cond_1
    const-string v0, "gtalk_secure_port"

    invoke-static {v2, v0, v1}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 381
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 382
    const-string v4, "gcm_secure_port"

    if-ne v1, v5, :cond_2

    const-string v0, "5228"

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    sget-object v0, Lcom/google/android/gms/gcm/ab;->a:Landroid/net/Uri;

    invoke-virtual {v2, v0, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 382
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method final c()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, -0x1

    .line 475
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 480
    const-string v1, "gtalk_secure_port"

    const/16 v2, 0x146c

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 482
    iget-object v2, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/gcm/ab;->h(Landroid/content/Context;)I

    move-result v2

    .line 484
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 485
    const-string v1, "GCM"

    const-string v2, "Replacing GSF connection with GMS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 487
    const-string v2, "gtalk_secure_port"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_2

    const-string v2, "gcm_gsf_disable"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 494
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gsf"

    const-string v4, "com.google.android.gsf.gtalkservice.ServiceAutoStarter"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gsf"

    const-string v5, "com.google.android.gsf.gtalkservice.PackageInstalledReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 502
    const/4 v5, 0x2

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_1
    const/4 v2, 0x2

    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {v4, v3, v2, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 521
    :cond_2
    :goto_2
    sget-wide v2, Lcom/google/android/gms/gcm/ab;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 522
    const-wide/16 v4, 0x2

    sget-wide v6, Lcom/google/android/gms/gcm/ab;->e:J

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 523
    const-string v4, "gtalk_max_reconnect_delay"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v3, "gtalk_min_reconnect_delay_short"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    const-string v3, "gtalk_min_reconnect_delay_long"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v2, Lcom/google/android/gms/gcm/ab;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :catch_0
    move-exception v2

    .line 507
    const-string v5, "GCM"

    const-string v6, "Unexpected error disabling GSF "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 513
    :catch_1
    move-exception v2

    .line 515
    const-string v3, "GCM"

    const-string v4, "Unexpected error disabling GSF "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method final d()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 537
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 542
    const-string v0, "gtalk_secure_port"

    const/16 v2, 0x146c

    invoke-static {v1, v0, v2}, Lcom/google/android/gsf/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 544
    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/ab;->h(Landroid/content/Context;)I

    move-result v3

    .line 546
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 547
    if-ne v2, v8, :cond_3

    .line 548
    const-string v0, "GCM"

    const-string v5, "Disabling GCM connection"

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-le v0, v5, :cond_2

    .line 551
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.google.android.gsf"

    const-string v6, "com.google.android.gsf.gtalkservice.ServiceAutoStarter"

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v5, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 554
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v5, v0, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_2
    :goto_1
    const-string v5, "gtalk_secure_port"

    if-ne v3, v8, :cond_6

    const-string v0, "5228"

    :goto_2
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v0, "gtalk_max_reconnect_delay"

    const v5, 0x493e0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "gtalk_min_reconnect_delay_short"

    const/16 v5, 0x1388

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v0, "gtalk_min_reconnect_delay_long"

    const/16 v5, 0x2710

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    :cond_3
    if-eq v3, v8, :cond_4

    .line 574
    const-string v0, "gcm_secure_port"

    const-string v5, "-1"

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_4
    if-ne v3, v8, :cond_5

    if-ne v2, v8, :cond_0

    .line 578
    :cond_5
    sget-object v0, Lcom/google/android/gms/gcm/ab;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v4, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/google/android/gms/gcm/ab;->h:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gtalkservice.IGTalkService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    const-string v5, "GCM"

    const-string v6, "Unexpected error enabling GSF "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 564
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
