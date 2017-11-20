.class public final Lcom/google/android/youtube/core/utils/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:Ljava/lang/String;

.field private static final c:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/google/android/youtube/core/utils/Util;->a:I

    .line 103
    invoke-static {v3}, Lcom/google/android/youtube/core/utils/Util;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->b:Ljava/lang/String;

    .line 429
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x24

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "mariannefaithfull"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    .line 430
    const-string v3, "sylver"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 431
    const-string v3, "ingrooves"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 432
    const-string v3, "davidbisbal"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 433
    const-string v3, "barryip"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 434
    const-string v3, "avantgarde"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 435
    const-string v3, "TAPBackFromTheDead"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 436
    const-string v3, "mirandaMurphy"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 437
    const-string v3, "scarsonbroadway"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 438
    const-string v3, "staracademy6"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 439
    const-string v3, "Metalblade1982"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 440
    const-string v3, "portishead"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 441
    const-string v3, "EdubbOnline"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 442
    const-string v3, "fabiano"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 443
    const-string v3, "Nordman"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    .line 444
    const-string v3, "UniversalTest"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    .line 445
    const-string v3, "taiji"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    .line 446
    const-string v3, "NIKP"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    .line 447
    const-string v3, "oranjuicejones"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    .line 448
    const-string v3, "universalmusicmexico"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    .line 449
    const-string v3, "hayleywestenra"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    .line 450
    const-string v3, "ryanbingham"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    .line 451
    const-string v3, "SylviaMcNair"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    .line 452
    const-string v3, "melissaetheridge"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    .line 453
    const-string v3, "monacibuddisti"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    .line 454
    const-string v3, "NolwennLeroy"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    .line 455
    const-string v3, "paolobrera"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    .line 456
    const-string v3, "TAPUNWIGGED"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    .line 457
    const-string v3, "TheDissociatives"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    .line 458
    const-string v3, "emimusic"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    .line 459
    const-string v3, "parlophone"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    .line 460
    const-string v3, "capitolmusic"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    .line 461
    const-string v3, "capitolrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    .line 462
    const-string v3, "virginrecords"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    .line 463
    const-string v3, "mutechannel"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    .line 464
    const-string v3, "muteusa"

    aput-object v3, v1, v2

    .line 429
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 428
    sput-object v0, Lcom/google/android/youtube/core/utils/Util;->c:Ljava/util/HashSet;

    .line 72
    return-void
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 245
    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 247
    :cond_0
    :goto_0
    return p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;Ljava/util/Map;)Landroid/net/Uri;
    .locals 4

    .prologue
    .line 988
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->e(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 990
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 991
    const-string v1, ""

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 993
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 999
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1003
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 993
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 994
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 995
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 999
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1000
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 1035
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1036
    if-eqz p0, :cond_0

    .line 1037
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1041
    :cond_0
    return-object v2

    .line 1037
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1038
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 1

    .prologue
    .line 1136
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1138
    return-object v0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 121
    div-int/lit8 v0, p0, 0x3c

    .line 122
    div-int/lit8 v2, v0, 0x3c

    .line 123
    if-lez v2, :cond_0

    .line 124
    rem-int/lit8 v0, v0, 0x3c

    .line 126
    :cond_0
    rem-int/lit8 v1, p0, 0x3c

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_2
    if-lez v2, :cond_3

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 283
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 284
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .prologue
    .line 508
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 515
    :cond_0
    return-object v0

    .line 511
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 512
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 513
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 512
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1066
    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne p0, v0, :cond_1

    .line 1067
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1069
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4

    .prologue
    .line 1045
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1046
    if-eqz p0, :cond_1

    .line 1047
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1054
    :cond_1
    return-object v1

    .line 1047
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1048
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1049
    if-eqz v3, :cond_0

    .line 1050
    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 605
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 606
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    return-object v1

    .line 606
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 607
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 745
    sget v0, Lcom/google/android/youtube/core/utils/Util;->a:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 746
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/content/SharedPreferences$Editor;)V

    .line 750
    :goto_0
    return-void

    .line 748
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 493
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    .line 494
    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/PackageManager;)Z
    .locals 1

    .prologue
    .line 146
    const-string v0, "com.google.android.tv"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 519
    if-eqz p0, :cond_0

    .line 520
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 522
    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 678
    if-nez p0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object v1

    .line 681
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 682
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 684
    const-string v3, "videos"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 685
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private static b()Ljava/text/SimpleDateFormat;
    .locals 3

    .prologue
    .line 288
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    .prologue
    .line 292
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :try_start_0
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->a()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 306
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 301
    :try_start_1
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->b()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid RFC3339 date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1074
    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne p0, v0, :cond_1

    .line 1075
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 1077
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 1082
    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p0, v0, :cond_1

    .line 1083
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1085
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 754
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 755
    return-void
.end method

.method public static c(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 692
    if-nez p0, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-object v1

    .line 695
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 698
    const-string v3, "playlists"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 616
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 706
    const-string v0, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static e(Landroid/net/Uri;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 949
    sget v0, Lcom/google/android/youtube/core/utils/Util;->a:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 950
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->f(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    .line 952
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->g(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 624
    :try_start_0
    const-string v0, "utf8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 625
    :catch_0
    move-exception v0

    .line 627
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 319
    if-gez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-object p0

    .line 322
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static f(Landroid/net/Uri;)Ljava/util/Set;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 958
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 963
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v4

    .line 964
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 983
    :goto_0
    return-object v0

    .line 967
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 968
    const/4 v0, 0x0

    .line 969
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    move-object v0, v3

    .line 983
    goto :goto_0

    .line 970
    :cond_1
    const/16 v1, 0x26

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 971
    if-ne v1, v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 973
    :cond_2
    const/16 v2, 0x3d

    invoke-virtual {v4, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 974
    if-gt v2, v1, :cond_3

    if-ne v2, v5, :cond_4

    :cond_3
    move v2, v1

    .line 978
    :cond_4
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 979
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 981
    add-int/lit8 v0, v1, 0x1

    goto :goto_1
.end method
