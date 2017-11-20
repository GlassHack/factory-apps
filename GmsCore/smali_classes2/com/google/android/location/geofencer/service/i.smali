.class public final Lcom/google/android/location/geofencer/service/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field final c:Lcom/google/android/gms/common/util/i;

.field final d:Lcom/google/android/location/geofencer/data/n;

.field final e:Lcom/google/android/location/geofencer/service/h;

.field final f:Lcom/google/android/location/i/a;

.field final g:Lcom/google/android/location/geofencer/service/ac;

.field final h:Lcom/google/android/location/geofencer/data/h;

.field final i:Lcom/google/android/location/geofencer/data/h;

.field final j:Landroid/os/PowerManager$WakeLock;

.field final k:Lcom/google/android/location/i/c;

.field final l:Lcom/google/android/location/geofencer/service/b;

.field final m:Landroid/content/pm/PackageManager;

.field final n:Landroid/content/Context;

.field private final o:I

.field private final p:Ljava/lang/String;

.field private final q:Lcom/google/android/location/geofencer/service/ab;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/common/util/i;Landroid/content/Context;Lcom/google/android/location/geofencer/service/k;Ljava/lang/Class;Lcom/google/android/location/geofencer/service/b;Lcom/google/android/location/geofencer/service/ab;)V
    .locals 9

    .prologue
    .line 127
    const/16 v1, 0x64

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/geofencer/service/i;-><init>(ILcom/google/android/gms/common/util/i;Landroid/content/Context;Lcom/google/android/location/geofencer/service/k;Ljava/lang/Class;Lcom/google/android/location/geofencer/service/b;Lcom/google/android/location/geofencer/service/ab;B)V

    .line 129
    return-void
.end method

.method private constructor <init>(ILcom/google/android/gms/common/util/i;Landroid/content/Context;Lcom/google/android/location/geofencer/service/k;Ljava/lang/Class;Lcom/google/android/location/geofencer/service/b;Lcom/google/android/location/geofencer/service/ab;B)V
    .locals 7

    .prologue
    const v0, 0x7fffffff

    const/16 v3, 0x12

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lcom/google/android/location/geofencer/service/i;->a:I

    .line 80
    iput v0, p0, Lcom/google/android/location/geofencer/service/i;->b:I

    .line 89
    new-instance v0, Lcom/google/android/location/geofencer/data/n;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/data/n;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    .line 139
    if-nez p7, :cond_1

    .line 140
    invoke-static {v3}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/location/geofencer/service/aa;->a()Lcom/google/android/location/geofencer/service/aa;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->q:Lcom/google/android/location/geofencer/service/ab;

    .line 145
    :goto_1
    if-nez p6, :cond_5

    .line 146
    invoke-static {v3}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Lcom/google/android/location/geofencer/service/ai;

    const/16 v0, 0x13

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/location/x;->I:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {v3, p4, v0}, Lcom/google/android/location/geofencer/service/ai;-><init>(Lcom/google/android/location/geofencer/service/k;I)V

    move-object v0, v3

    :goto_3
    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    .line 152
    :goto_4
    iput-object p2, p0, Lcom/google/android/location/geofencer/service/i;->c:Lcom/google/android/gms/common/util/i;

    .line 153
    const-string v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 155
    new-instance v2, Lcom/google/android/location/i/c;

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/i;->c:Lcom/google/android/gms/common/util/i;

    invoke-direct {v2, v0, v3}, Lcom/google/android/location/i/c;-><init>(ZLcom/google/android/gms/common/util/i;)V

    iput-object v2, p0, Lcom/google/android/location/geofencer/service/i;->k:Lcom/google/android/location/i/c;

    .line 156
    const-string v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 157
    const-string v2, "GeofencePendingIntentWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->j:Landroid/os/PowerManager$WakeLock;

    .line 159
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 160
    new-instance v4, Lcom/google/android/location/geofencer/service/j;

    invoke-direct {v4, p0, p4}, Lcom/google/android/location/geofencer/service/j;-><init>(Lcom/google/android/location/geofencer/service/i;Lcom/google/android/location/geofencer/service/k;)V

    .line 171
    new-instance v0, Lcom/google/android/location/i/a;

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/i;->k:Lcom/google/android/location/i/c;

    new-instance v5, Lcom/google/android/location/geofencer/service/ah;

    invoke-direct {v5}, Lcom/google/android/location/geofencer/service/ah;-><init>()V

    const-string v6, "geofencer_ad_state"

    move-object v1, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/i/a;-><init>(Landroid/content/Context;Lcom/google/android/location/i/c;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/i/f;Lcom/google/android/location/geofencer/service/ah;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    .line 175
    new-instance v0, Lcom/google/android/location/geofencer/service/ac;

    invoke-direct {v0, p3, p2, p4}, Lcom/google/android/location/geofencer/service/ac;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/i;Lcom/google/android/location/geofencer/service/k;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->g:Lcom/google/android/location/geofencer/service/ac;

    .line 178
    new-instance v0, Lcom/google/android/location/geofencer/service/h;

    invoke-direct {v0, p3}, Lcom/google/android/location/geofencer/service/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->e:Lcom/google/android/location/geofencer/service/h;

    .line 179
    new-instance v0, Lcom/google/android/location/geofencer/data/h;

    iget-object v4, p0, Lcom/google/android/location/geofencer/service/i;->j:Landroid/os/PowerManager$WakeLock;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/geofencer/data/h;-><init>(ILcom/google/android/gms/common/util/i;Landroid/content/Context;Landroid/os/PowerManager$WakeLock;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    .line 183
    new-instance v0, Lcom/google/android/location/geofencer/data/h;

    invoke-direct {v0, p2, p3}, Lcom/google/android/location/geofencer/data/h;-><init>(Lcom/google/android/gms/common/util/i;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    .line 184
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->m:Landroid/content/pm/PackageManager;

    .line 185
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/google/android/location/geofencer/service/i;->o:I

    .line 186
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/geofencer/service/i;->p:Ljava/lang/String;

    .line 187
    iput-object p3, p0, Lcom/google/android/location/geofencer/service/i;->n:Landroid/content/Context;

    .line 188
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 143
    :cond_1
    iput-object p7, p0, Lcom/google/android/location/geofencer/service/i;->q:Lcom/google/android/location/geofencer/service/ab;

    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 146
    goto/16 :goto_2

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/location/geofencer/service/ag;

    invoke-direct {v0}, Lcom/google/android/location/geofencer/service/ag;-><init>()V

    goto/16 :goto_3

    .line 150
    :cond_5
    iput-object p6, p0, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    goto/16 :goto_4
.end method

.method private a(Ljava/util/Collection;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    .line 409
    if-eqz p2, :cond_0

    .line 412
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/i;->m:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 414
    new-instance v2, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string v1, "GeofencerStateInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Package not found: \n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_0
    new-instance v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v1, p0, Lcom/google/android/location/geofencer/service/i;->o:I

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/i;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Z
    .locals 1

    .prologue
    .line 405
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/app/PendingIntent;)I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, p1}, Lcom/google/android/location/geofencer/data/h;->a(Landroid/app/PendingIntent;)I

    .line 259
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, p1}, Lcom/google/android/location/geofencer/data/h;->a(Landroid/app/PendingIntent;)I

    move-result v0

    return v0
.end method

.method final a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 272
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 274
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 275
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/util/List;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final a(Landroid/util/Pair;ZD)Lcom/google/android/location/geofencer/data/e;
    .locals 9

    .prologue
    .line 533
    if-eqz p2, :cond_0

    .line 534
    iget-object v5, p0, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/location/geofencer/data/h;->a(JLandroid/location/Location;D)Lcom/google/android/location/geofencer/data/e;

    move-result-object v0

    .line 538
    invoke-virtual {p0, p3, p4}, Lcom/google/android/location/geofencer/service/i;->b(D)V

    .line 539
    return-object v0

    .line 534
    :cond_1
    iput-object p1, v5, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    move-object v4, v0

    :goto_1
    if-nez v4, :cond_3

    const-wide/16 v0, -0x1

    move-wide v2, v0

    :goto_2
    if-eqz v4, :cond_6

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "LocationHistory"

    const-string v1, "Location comming too fast, dropping the new one."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    iget-object v1, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    move-object v4, v0

    goto :goto_1

    :cond_3
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v2, v0

    goto :goto_2

    :cond_4
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_5

    const-string v0, "LocationHistory"

    const-string v1, "Location comming too fast, dropping the last one."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_6
    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, v5, Lcom/google/android/location/geofencer/data/n;->a:I

    if-lt v0, v1, :cond_7

    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    :cond_7
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_8

    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_8

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_8
    iget-object v0, v5, Lcom/google/android/location/geofencer/data/n;->b:Ljava/util/LinkedList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public final a(D)Ljava/util/Collection;
    .locals 11

    .prologue
    const/16 v1, 0x64

    const/4 v5, 0x0

    .line 324
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/location/geofencer/data/h;->a(DI)Ljava/util/List;

    move-result-object v3

    .line 326
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, v1}, Lcom/google/android/location/geofencer/data/h;->a(I)Ljava/util/List;

    move-result-object v4

    .line 328
    invoke-static {v3}, Lcom/google/android/location/geofencer/service/i;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/google/android/location/geofencer/service/i;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 359
    :goto_0
    return-object v0

    .line 331
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 332
    invoke-static {v4}, Lcom/google/android/location/geofencer/service/i;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/geofencer/data/g;->a(D)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    .line 334
    :goto_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 335
    iget-object v0, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, v2, v0}, Lcom/google/android/location/geofencer/service/i;->a(Ljava/util/Collection;Landroid/app/PendingIntent;)V

    .line 337
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 343
    const/16 v1, 0x3c

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    .line 344
    if-eqz v3, :cond_5

    .line 345
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 346
    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/geofencer/data/g;->a(D)I

    move-result v3

    int-to-long v8, v3

    cmp-long v3, v8, v6

    if-gtz v3, :cond_1

    .line 347
    iget-object v0, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, v2, v0}, Lcom/google/android/location/geofencer/service/i;->a(Ljava/util/Collection;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 332
    :cond_2
    invoke-static {v3}, Lcom/google/android/location/geofencer/service/i;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/geofencer/data/g;->a(D)I

    move-result v5

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/data/g;->c()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 352
    :cond_5
    if-eqz v4, :cond_7

    .line 353
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 354
    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->c()I

    move-result v3

    int-to-long v4, v3

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    .line 355
    iget-object v0, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    invoke-direct {p0, v2, v0}, Lcom/google/android/location/geofencer/service/i;->a(Ljava/util/Collection;Landroid/app/PendingIntent;)V

    goto :goto_3

    :cond_7
    move-object v0, v2

    .line 359
    goto/16 :goto_0
.end method

.method final a(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->k:Lcom/google/android/location/i/c;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/android/location/i/c;->a(Z)V

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v4}, Lcom/google/android/location/i/c;->a(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Lcom/google/android/location/i/c;->b(Z)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/location/i/c;->b(Z)V

    goto :goto_0
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 304
    iget v0, p0, Lcom/google/android/location/geofencer/service/i;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/util/Collection;
    .locals 5

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/h;->e()Ljava/util/Set;

    move-result-object v0

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 371
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 373
    :try_start_0
    iget-object v3, p0, Lcom/google/android/location/geofencer/service/i;->m:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 374
    new-instance v4, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v3, v0}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    goto :goto_0

    .line 380
    :cond_0
    return-object v1
.end method

.method final b(D)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const v1, 0x7fffffff

    const/4 v4, 0x1

    .line 430
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "GeofencerStateInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateMinLocationUpdateRate: velocityMetersPerSec="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, p1, p2, v4}, Lcom/google/android/location/geofencer/data/h;->a(DI)Ljava/util/List;

    move-result-object v2

    .line 436
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_4

    :cond_1
    move v0, v1

    :goto_0
    iput v0, p0, Lcom/google/android/location/geofencer/service/i;->a:I

    .line 440
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0, v4}, Lcom/google/android/location/geofencer/data/h;->a(I)Ljava/util/List;

    move-result-object v3

    .line 441
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_5

    :cond_2
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/google/android/location/geofencer/service/i;->b:I

    .line 444
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_3

    .line 445
    iget v0, p0, Lcom/google/android/location/geofencer/service/i;->a:I

    if-ne v0, v1, :cond_6

    const-string v0, "UNKNOWN"

    .line 448
    :goto_2
    iget v4, p0, Lcom/google/android/location/geofencer/service/i;->b:I

    if-ne v4, v1, :cond_7

    const-string v1, "UNKNOWN"

    .line 451
    :goto_3
    const-string v4, "GeofencerStateInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Geofence with min crossing rate: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; Rate="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v0, "GeofencerStateInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Geofence with min dwelling rate: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_3
    return-void

    .line 436
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/location/geofencer/data/g;->a(D)I

    move-result v0

    goto :goto_0

    .line 441
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/g;->c()I

    move-result v0

    goto :goto_1

    .line 445
    :cond_6
    iget v0, p0, Lcom/google/android/location/geofencer/service/i;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 448
    :cond_7
    iget v1, p0, Lcom/google/android/location/geofencer/service/i;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/h;->d()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c(D)Z
    .locals 3

    .prologue
    .line 482
    iget v0, p0, Lcom/google/android/location/geofencer/service/i;->a:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/location/geofencer/service/i;->a:I

    int-to-double v0, v0

    cmpl-double v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 675
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->j:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 681
    return-void
.end method

.method final e()V
    .locals 4

    .prologue
    .line 694
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    iget-object v1, v0, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    invoke-virtual {v1}, Lcom/google/android/location/i/d;->a()Lcom/google/android/location/geofencer/b/c;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v0, v0, Lcom/google/android/location/i/a;->j:Lcom/google/android/location/o/ae;

    invoke-virtual {v0, v1}, Lcom/google/android/location/o/ae;->b(Lcom/google/protobuf/a/f;)V

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityDetector"

    const-string v1, "saveState: Activity history written."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivityDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveState: Unable to save activity history - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final f()Lcom/google/android/location/i/e;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    iget-object v0, v0, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    invoke-virtual {v0}, Lcom/google/android/location/i/d;->c()Lcom/google/android/location/i/e;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 733
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/i;->l:Lcom/google/android/location/geofencer/service/b;

    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->q:Lcom/google/android/location/geofencer/service/ab;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0}, Lcom/google/android/location/geofencer/service/b;->a(Lcom/google/android/location/geofencer/service/d;)V

    .line 735
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/i;->q:Lcom/google/android/location/geofencer/service/ab;

    invoke-interface {v0}, Lcom/google/android/location/geofencer/service/ab;->b()Lcom/google/android/location/geofencer/service/d;

    move-result-object v0

    goto :goto_0
.end method
