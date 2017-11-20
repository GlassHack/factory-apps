.class abstract Lcom/google/android/location/geofencer/service/o;
.super Lcom/google/android/location/geofencer/service/p;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field final synthetic b:Lcom/google/android/location/geofencer/service/k;


# direct methods
.method public constructor <init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    .line 1075
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/geofencer/service/p;-><init>(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/location/geofencer/service/i;)V

    .line 1076
    return-void
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 1332
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1334
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 1335
    iget-object v0, v0, Lcom/google/android/location/geofencer/data/g;->a:Lcom/google/android/gms/location/internal/ParcelableGeofence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1337
    :cond_0
    return-object v1
.end method

.method private static a(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5

    .prologue
    .line 1358
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1360
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/geofencer/data/g;

    .line 1361
    iget-object v4, v0, Lcom/google/android/location/geofencer/data/g;->b:Landroid/app/PendingIntent;

    .line 1362
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1363
    if-nez v1, :cond_0

    .line 1364
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1365
    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1369
    :cond_1
    return-object v2
.end method

.method private a(Ljava/util/List;ILandroid/location/Location;)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v6, 0x0

    .line 1252
    const-string v0, "GeofencerStateMachine"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    const-string v1, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Firing geofences, transition="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const-string v0, "unknown"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->d(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/o/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/o/ab;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    const-string v0, "GeofencerStateMachine"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1261
    const-string v0, "GeofencerStateMachine"

    const-string v1, "Ignoring geofence alerts because the service is not owned by foreground user."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_1
    return-void

    .line 1253
    :pswitch_1
    const-string v0, "dwell"

    goto :goto_0

    :pswitch_2
    const-string v0, "enter"

    goto :goto_0

    :pswitch_3
    const-string v0, "exit"

    goto :goto_0

    .line 1266
    :cond_2
    invoke-static {p1}, Lcom/google/android/location/geofencer/service/o;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 1268
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->r(Lcom/google/android/location/geofencer/service/k;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1271
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1272
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1273
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    .line 1278
    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v7, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    .line 1280
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_3

    .line 1281
    const-string v1, "GeofencerStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION removed in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1287
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1289
    const-string v3, "GeofencerStateMachine"

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1290
    const-string v3, "GeofencerStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing geofence: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :cond_5
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1294
    const-string v4, "com.google.android.location.intent.extra.transition"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1295
    invoke-static {v1}, Lcom/google/android/location/geofencer/service/o;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/android/gms/location/k;->a(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 1296
    if-eqz p3, :cond_6

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->s(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/p/a;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/location/p/a;->a(Ljava/lang/String;)I

    move-result v1

    const v2, 0x4c4b40

    if-lt v1, v2, :cond_9

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    invoke-static {p3}, Lcom/google/android/location/o/w;->e(Landroid/location/Location;)Z

    move-result v1

    invoke-static {p3, v1}, Lcom/google/android/location/fused/aw;->a(Landroid/location/Location;Z)Landroid/location/Location;

    move-result-object v1

    const-string v2, "com.google.android.location.intent.extra.triggering_location"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1301
    :cond_6
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v4, v1, Lcom/google/android/location/geofencer/service/i;->m:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/location/geofencer/service/i;->n:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/gms/common/util/ac;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v2}, Lcom/google/android/gms/common/util/ac;->a(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v2

    iget-object v4, v1, Lcom/google/android/location/geofencer/service/i;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    :goto_3
    iget-object v1, v1, Lcom/google/android/location/geofencer/service/i;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1303
    :try_start_1
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->r(Lcom/google/android/location/geofencer/service/k;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1305
    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_8

    .line 1306
    const-string v1, "GeofencerStateMachine"

    const-string v2, "Removing canceled pending intent."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_8
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v1, v0}, Lcom/google/android/location/geofencer/service/i;->a(Landroid/app/PendingIntent;)I

    .line 1313
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->d()V

    goto/16 :goto_1

    :cond_9
    move v1, v6

    .line 1296
    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    .line 1253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Z)V
    .locals 4

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->i()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/geofencer/service/i;->b(D)V

    .line 1401
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1402
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/o;->b(Z)V

    .line 1406
    :goto_0
    return-void

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->n(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/service/k;->l(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0, p1}, Lcom/google/android/location/geofencer/service/i;->a(Landroid/content/Intent;)V

    .line 1517
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/os/Message;)Z
    .locals 13

    .prologue
    .line 1081
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "GeofencerStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processMessage, current state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Lcom/google/android/location/geofencer/service/k;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    .line 1093
    const/4 v0, 0x0

    .line 1094
    const/4 v1, 0x4

    if-eq v3, v1, :cond_f

    const/4 v1, 0x5

    if-eq v3, v1, :cond_f

    .line 1095
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v1, v0, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/data/h;->c()Z

    iget-object v0, v0, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/data/h;->c()Z

    move-result v0

    .line 1096
    if-eqz v0, :cond_2

    .line 1097
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->i()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/google/android/location/geofencer/service/i;->b(D)V

    .line 1098
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v1}, Lcom/google/android/location/geofencer/service/i;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1099
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0, p1}, Lcom/google/android/location/geofencer/service/k;->c(Lcom/google/android/location/geofencer/service/k;Landroid/os/Message;)V

    .line 1100
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->n(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/service/k;->i(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    .line 1101
    const/4 v0, 0x1

    .line 1188
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v2, v0

    .line 1106
    :goto_1
    const/4 v1, 0x0

    .line 1107
    packed-switch v3, :pswitch_data_0

    .line 1167
    :pswitch_0
    const/4 v1, 0x0

    .line 1168
    invoke-virtual {p0, p1}, Lcom/google/android/location/geofencer/service/o;->b(Landroid/os/Message;)Z

    move-result v0

    .line 1180
    :goto_2
    iget-object v3, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v3, v3, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    iget-object v3, v3, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    invoke-virtual {v3}, Lcom/google/android/location/i/d;->e()V

    .line 1181
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 1182
    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_3

    .line 1183
    const-string v1, "GeofencerStateMachine"

    const-string v2, "Geofence expires but message handling method does not update requirement, updating now."

    invoke-static {v1, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/location/geofencer/service/o;->b(Z)V

    goto :goto_0

    .line 1110
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/af;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1111
    const-string v0, "GeofencerStateMachine"

    const-string v1, "Network location disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->o(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/q;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/service/k;->j(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    .line 1117
    :cond_4
    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1113
    :cond_5
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;)Lcom/google/android/location/geofencer/service/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/af;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1114
    const-string v0, "GeofencerStateMachine"

    const-string v1, "GPS disabled."

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->j()V

    goto :goto_3

    .line 1119
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/service/a;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v1, v1, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v3, v1, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v4, v0, Lcom/google/android/location/geofencer/service/a;->a:Ljava/util/List;

    iget-object v5, v0, Lcom/google/android/location/geofencer/service/a;->b:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_8

    const/4 v1, 0x0

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/location/geofencer/service/a;->a(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->i()D

    move-result-wide v6

    iget-object v0, v4, Lcom/google/android/location/geofencer/service/i;->d:Lcom/google/android/location/geofencer/data/n;

    iget-object v5, v0, Lcom/google/android/location/geofencer/data/n;->c:Landroid/util/Pair;

    if-eqz v5, :cond_9

    iget-object v0, v4, Lcom/google/android/location/geofencer/service/i;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v8

    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1388

    cmp-long v0, v8, v10

    if-gez v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0, v6, v7}, Lcom/google/android/location/geofencer/service/i;->a(Landroid/util/Pair;ZD)Lcom/google/android/location/geofencer/data/e;

    move-result-object v0

    :goto_5
    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/e;->a:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    iget-object v4, v0, Lcom/google/android/location/geofencer/data/e;->a:Ljava/util/ArrayList;

    const/4 v5, 0x1

    if-nez v3, :cond_a

    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, v4, v5, v0}, Lcom/google/android/location/geofencer/service/o;->a(Ljava/util/List;ILandroid/location/Location;)V

    :cond_6
    if-nez v1, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-direct {p0, v0}, Lcom/google/android/location/geofencer/service/o;->c(Z)V

    const-string v1, "GeofencerStateMachine"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "GeofencerStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number of valid geofences now: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v4, v4, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/h;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_7
    const/4 v1, 0x1

    move v12, v1

    move v1, v0

    move v0, v12

    .line 1121
    goto/16 :goto_2

    .line 1119
    :cond_8
    iget-object v1, v1, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/util/List;Landroid/app/PendingIntent;)I

    move-result v1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    goto :goto_6

    :cond_b
    const/4 v0, 0x0

    goto :goto_7

    .line 1123
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/geofencer/service/am;

    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_c

    const-string v1, "GeofencerStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "removeFence: request="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v1, 0x0

    iget v3, v0, Lcom/google/android/location/geofencer/service/am;->a:I

    packed-switch v3, :pswitch_data_1

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/location/geofencer/service/am;->a(Ljava/lang/Object;)V

    if-nez v1, :cond_e

    const/4 v0, 0x1

    :goto_9
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/location/geofencer/service/o;->c(Z)V

    sget-boolean v1, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v1, :cond_d

    const-string v1, "GeofencerStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Number of valid geofences now: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v4, v4, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v4}, Lcom/google/android/location/geofencer/data/h;->d()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_d
    const/4 v1, 0x1

    move v12, v1

    move v1, v0

    move v0, v12

    .line 1125
    goto/16 :goto_2

    .line 1123
    :pswitch_4
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v3, v0, Lcom/google/android/location/geofencer/service/am;->c:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/location/geofencer/service/i;->i:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v4, v3}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/lang/String;)I

    iget-object v1, v1, Lcom/google/android/location/geofencer/service/i;->h:Lcom/google/android/location/geofencer/data/h;

    invoke-virtual {v1, v3}, Lcom/google/android/location/geofencer/data/h;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :pswitch_5
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v3, v0, Lcom/google/android/location/geofencer/service/am;->e:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Lcom/google/android/location/geofencer/service/i;->a(Landroid/app/PendingIntent;)I

    move-result v1

    goto :goto_8

    :pswitch_6
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    iget-object v3, v0, Lcom/google/android/location/geofencer/service/am;->f:[Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/location/geofencer/service/am;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/google/android/location/geofencer/service/i;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    goto :goto_9

    .line 1127
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/o;->a(Landroid/util/Pair;)Z

    move-result v1

    .line 1128
    const/4 v0, 0x1

    .line 1129
    goto/16 :goto_2

    .line 1131
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/i/e;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/o;->a(Lcom/google/android/location/i/e;)Lcom/google/android/gms/common/util/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/b;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1}, Lcom/google/android/location/geofencer/service/k;->t(Lcom/google/android/location/geofencer/service/k;)V

    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v1, v0}, Lcom/google/android/location/geofencer/service/k;->m(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    const/4 v1, 0x0

    .line 1132
    const/4 v0, 0x1

    .line 1133
    goto/16 :goto_2

    .line 1137
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->i()D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/location/geofencer/service/i;->b(D)V

    .line 1144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/o;->b(Z)V

    .line 1145
    const/4 v1, 0x1

    .line 1146
    const/4 v0, 0x1

    .line 1147
    goto/16 :goto_2

    .line 1149
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/o;->a(Landroid/content/Intent;)Z

    move-result v1

    .line 1150
    const/4 v0, 0x1

    .line 1151
    goto/16 :goto_2

    .line 1153
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->e()V

    .line 1154
    const/4 v1, 0x0

    .line 1155
    const/4 v0, 0x1

    .line 1156
    goto/16 :goto_2

    .line 1158
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    iget-object v3, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v3}, Lcom/google/android/location/geofencer/service/i;->f()Lcom/google/android/location/i/e;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/location/geofencer/service/o;->a(Lcom/google/android/location/i/e;)Lcom/google/android/gms/common/util/a/b;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/location/geofencer/service/k;->k(Lcom/google/android/location/geofencer/service/k;Lcom/google/android/gms/common/util/a/a;)V

    .line 1159
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->b:Lcom/google/android/location/geofencer/service/k;

    invoke-static {v0}, Lcom/google/android/location/geofencer/service/k;->q(Lcom/google/android/location/geofencer/service/k;)V

    .line 1160
    const/4 v0, 0x1

    .line 1161
    goto/16 :goto_2

    .line 1163
    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/o;->a(Z)Z

    move-result v1

    .line 1164
    const/4 v0, 0x1

    .line 1165
    goto/16 :goto_2

    :cond_f
    move v2, v0

    goto/16 :goto_1

    .line 1107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
    .end packed-switch

    .line 1123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected a(Landroid/util/Pair;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1218
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    .line 1219
    iget-object v1, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->i()D

    move-result-wide v2

    invoke-virtual {v1, p1, v5, v2, v3}, Lcom/google/android/location/geofencer/service/i;->a(Landroid/util/Pair;ZD)Lcom/google/android/location/geofencer/data/e;

    move-result-object v1

    .line 1220
    if-eqz v1, :cond_3

    .line 1221
    const-string v2, "GeofencerStateMachine"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1222
    const-string v2, "GeofencerStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Triggering location: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    :cond_0
    iget-object v2, v1, Lcom/google/android/location/geofencer/data/e;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 1225
    iget-object v2, v1, Lcom/google/android/location/geofencer/data/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v5, v0}, Lcom/google/android/location/geofencer/service/o;->a(Ljava/util/List;ILandroid/location/Location;)V

    .line 1228
    :cond_1
    iget-object v2, v1, Lcom/google/android/location/geofencer/data/e;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1229
    iget-object v2, v1, Lcom/google/android/location/geofencer/data/e;->b:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/location/geofencer/service/o;->a(Ljava/util/List;ILandroid/location/Location;)V

    .line 1232
    :cond_2
    iget-object v2, v1, Lcom/google/android/location/geofencer/data/e;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 1233
    iget-object v1, v1, Lcom/google/android/location/geofencer/data/e;->c:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/location/geofencer/service/o;->a(Ljava/util/List;ILandroid/location/Location;)V

    .line 1237
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/location/geofencer/service/o;->b(Z)V

    .line 1238
    return v5
.end method

.method protected a(Z)Z
    .locals 1

    .prologue
    .line 1199
    const/4 v0, 0x0

    return v0
.end method

.method protected b(Z)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 1386
    iget-object v5, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->e()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->f()I

    move-result v0

    if-ne v2, v1, :cond_7

    if-ne v0, v1, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->g()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->d()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->h()Ljava/util/Collection;

    move-result-object v2

    if-lez v0, :cond_9

    iget-object v8, v5, Lcom/google/android/location/geofencer/service/i;->g:Lcom/google/android/location/geofencer/service/ac;

    invoke-virtual {v8, v0, p1, v6}, Lcom/google/android/location/geofencer/service/ac;->a(IZLjava/util/Collection;)V

    :goto_1
    if-lez v7, :cond_d

    iget-object v5, v5, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    if-lez v7, :cond_a

    move v0, v3

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Activity update interval should be positive: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/google/android/gms/common/internal/b;->a(ZLjava/lang/Object;)V

    if-nez v2, :cond_e

    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityDetector"

    const-string v2, "Blaming ourself for activity updates."

    invoke-static {v0, v2}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Lcom/google/android/gms/location/internal/ClientIdentity;

    iget v2, v5, Lcom/google/android/location/i/a;->d:I

    iget-object v6, v5, Lcom/google/android/location/i/a;->e:Ljava/lang/String;

    invoke-direct {v0, v2, v6}, Lcom/google/android/gms/location/internal/ClientIdentity;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iget-object v2, v5, Lcom/google/android/location/i/a;->i:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v6, v5, Lcom/google/android/location/i/a;->k:I

    if-ne v7, v6, :cond_2

    iget-object v6, v5, Lcom/google/android/location/i/a;->l:Ljava/util/Collection;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/google/android/location/i/a;->l:Ljava/util/Collection;

    invoke-interface {v6, v0}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_2
    iget-object v6, v5, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    invoke-virtual {v6}, Lcom/google/android/location/i/d;->b()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-gez v6, :cond_b

    :cond_3
    :goto_4
    const-string v4, "ActivityDetector"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "ActivityDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "requestActivity: intervalSec="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", trigger="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", clients="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget v4, v5, Lcom/google/android/location/i/a;->k:I

    if-ne v4, v1, :cond_5

    iget-object v1, v5, Lcom/google/android/location/i/a;->h:Lcom/google/android/location/i/d;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/google/android/location/i/d;->a(Z)V

    :cond_5
    iput v7, v5, Lcom/google/android/location/i/a;->k:I

    iput-object v0, v5, Lcom/google/android/location/i/a;->l:Ljava/util/Collection;

    invoke-virtual {v5, v7, v3, v0}, Lcom/google/android/location/i/a;->a(IZLjava/util/Collection;)V

    :cond_6
    :goto_5
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1389
    :goto_6
    return-void

    .line 1386
    :cond_7
    if-ne v0, v1, :cond_8

    move v0, v2

    goto/16 :goto_0

    :cond_8
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x14

    const/16 v6, 0x708

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_0

    :cond_9
    iget-object v0, v5, Lcom/google/android/location/geofencer/service/i;->g:Lcom/google/android/location/geofencer/service/ac;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/ac;->a()V

    goto/16 :goto_1

    :cond_a
    move v0, v4

    goto/16 :goto_2

    :cond_b
    :try_start_1
    iget-object v6, v5, Lcom/google/android/location/i/a;->c:Lcom/google/android/gms/common/util/i;

    invoke-interface {v6}, Lcom/google/android/gms/common/util/i;->b()J

    move-result-wide v10

    sub-long v8, v10, v8

    const-wide/32 v10, 0x15f90

    cmp-long v6, v8, v10

    if-gtz v6, :cond_3

    move v3, v4

    goto :goto_4

    :cond_c
    sget-boolean v0, Lcom/google/android/location/geofencer/a/a;->a:Z

    if-eqz v0, :cond_6

    const-string v0, "ActivityDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Ignoring requestActivity: intervalSec="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/geofencer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_d
    iget-object v0, v5, Lcom/google/android/location/geofencer/service/i;->f:Lcom/google/android/location/i/a;

    invoke-virtual {v0}, Lcom/google/android/location/i/a;->a()V

    goto :goto_6

    :cond_e
    move-object v0, v2

    goto/16 :goto_3
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method protected abstract f()I
.end method

.method protected g()Ljava/util/Collection;
    .locals 4

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    const/4 v0, 0x0

    .line 1549
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {p0}, Lcom/google/android/location/geofencer/service/o;->i()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/location/geofencer/service/i;->a(D)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method protected h()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->b()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected abstract i()D
.end method

.method protected j()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/o;->c:Lcom/google/android/location/geofencer/service/i;

    invoke-virtual {v0}, Lcom/google/android/location/geofencer/service/i;->d()V

    .line 1376
    return-void
.end method
